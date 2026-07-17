<#
.SYNOPSIS
    Migrates the BASIC-256 DokuWiki documentation (https://doc.basic256.org) into a
    Docusaurus site, preserving page text, images, and sample (.kbs) program files.

.DESCRIPTION
    This script does NOT use a sitemap (DokuWiki doesn't expose one publicly). Instead it:

      1. Crawls the wiki by following internal links, starting from each language's
         `start` page (en, fr, ru, de, nl) plus the root namespace (where the sample
         program / gallery pages live, e.g. "graphicsimage*").
      2. For every page it fetches the RAW DokuWiki markup via `do=export_raw`
         (much easier and more reliable to parse than rendered HTML) and extracts
         both [[links]] and {{media}} references from it.
      3. Downloads every referenced image and sample-program file directly via
         DokuWiki's `lib/exe/fetch.php?media=...` endpoint.
      4. Converts each page's raw markup to Markdown using Pandoc's native
         `dokuwiki` reader.
      5. Rewrites internal wiki links and media references to point at the new
         Docusaurus doc paths / static asset paths.
      6. Scaffolds a Docusaurus "classic" site (if the target folder is empty) and
         copies the converted docs + assets into it.

    This is a BEST-EFFORT conversion. DokuWiki markup has some quirks (plugin
    syntax, tables, embedded HTML) that Pandoc may not translate perfectly. Check
    MigrationReport.txt in the output folder afterwards, and skim a few pages.

.PARAMETER OutputRoot
    Where the Docusaurus site will be created/populated. Default: D:\Data\Basic-Doc2

.PARAMETER Languages
    Wiki language namespaces to migrate. Default: en, fr, ru, de, nl

.PARAMETER MaxPages
    Cap on number of pages to crawl, for a quick test run. 0 = unlimited.

.PARAMETER SkipScaffold
    Skip creating the Docusaurus project scaffold (use if you already have one and
    just want the converted /docs and /static content regenerated).

.PARAMETER SkipCrawl
    Reuse previously-downloaded raw wiki pages / media from the cache folder instead
    of re-fetching everything from the live site. Useful when re-running after a
    failure, or when only changing the conversion/rewrite logic.

.PARAMETER RequestDelayMs
    Delay between HTTP requests to the wiki, to be polite to the server.

.EXAMPLE
    # Full run, all 5 languages
    .\Migrate-Basic256Docs.ps1

.EXAMPLE
    # Quick 20-page smoke test before committing to a full crawl
    .\Migrate-Basic256Docs.ps1 -MaxPages 20

.EXAMPLE
    # Re-run conversion/link-rewriting only, reusing already-downloaded content
    .\Migrate-Basic256Docs.ps1 -SkipCrawl
#>

[CmdletBinding()]
param(
    [string]$OutputRoot     = "D:\Data\Basic-Doc2",
    [string]$WikiBaseUrl    = "https://doc.basic256.org",
    [string[]]$Languages    = @("en", "fr", "ru", "de", "nl"),
    [int]$MaxPages          = 0,
    [switch]$SkipScaffold,
    [switch]$SkipCrawl,
    [int]$RequestDelayMs    = 200
)

$ErrorActionPreference = "Stop"
$ProgressPreference    = "SilentlyContinue"   # speeds up Invoke-WebRequest a lot

# ----------------------------------------------------------------------------
# Paths
# ----------------------------------------------------------------------------
$CacheDir   = Join-Path (Split-Path $OutputRoot -Parent) ((Split-Path $OutputRoot -Leaf) + "-cache")
$RawDir     = Join-Path $CacheDir "raw"          # cached raw wikitext, one file per page id
$MediaDir   = Join-Path $CacheDir "media"        # downloaded images / sample programs
$DocsOutDir = Join-Path $CacheDir "docs"         # converted markdown, ready to copy into Docusaurus
$LogFile    = Join-Path $CacheDir "MigrationReport.txt"

foreach ($d in @($CacheDir, $RawDir, $MediaDir, $DocsOutDir)) {
    New-Item -ItemType Directory -Force -Path $d | Out-Null
}

$LogLines = New-Object System.Collections.Generic.List[string]
function Write-Log {
    param([string]$Message, [string]$Level = "INFO")
    $line = "[{0}] {1}: {2}" -f (Get-Date -Format "HH:mm:ss"), $Level, $Message
    $LogLines.Add($line)
    switch ($Level) {
        "WARN"  { Write-Host $line -ForegroundColor Yellow }
        "ERROR" { Write-Host $line -ForegroundColor Red }
        "OK"    { Write-Host $line -ForegroundColor Green }
        default { Write-Host $line }
    }
}

# ----------------------------------------------------------------------------
# 0. Dependency check: Pandoc + Node.js (winget install if missing)
# ----------------------------------------------------------------------------
function Update-SessionPath {
    $machine = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
    $user    = [System.Environment]::GetEnvironmentVariable("Path", "User")
    $env:Path = "$machine;$user"
}

function Ensure-Tool {
    param(
        [string]$CommandName,
        [string]$WingetId,
        [string]$FriendlyName
    )
    if (Get-Command $CommandName -ErrorAction SilentlyContinue) {
        Write-Log "$FriendlyName found." "OK"
        return $true
    }

    Write-Log "$FriendlyName not found. Attempting install via winget ($WingetId)..." "WARN"
    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
        Write-Log "winget is not available on this machine. Please install $FriendlyName manually and re-run this script." "ERROR"
        return $false
    }

    try {
        winget install --id $WingetId -e --source winget --accept-package-agreements --accept-source-agreements
    } catch {
        Write-Log "winget install of $FriendlyName failed: $($_.Exception.Message)" "ERROR"
        return $false
    }

    Update-SessionPath
    if (Get-Command $CommandName -ErrorAction SilentlyContinue) {
        Write-Log "$FriendlyName installed successfully." "OK"
        return $true
    } else {
        Write-Log "$FriendlyName still not detected after install. You may need to close and reopen PowerShell, then re-run this script." "ERROR"
        return $false
    }
}

Write-Log "Checking required tools..."
$pandocOk = Ensure-Tool -CommandName "pandoc" -WingetId "JohnMacFarlane.Pandoc" -FriendlyName "Pandoc"
$nodeOk   = Ensure-Tool -CommandName "node"   -WingetId "OpenJS.NodeJS.LTS"     -FriendlyName "Node.js"

if (-not $pandocOk) {
    Write-Log "Pandoc is required for conversion. Aborting." "ERROR"
    exit 1
}
if (-not $nodeOk -and -not $SkipScaffold) {
    Write-Log "Node.js is required to scaffold Docusaurus. Aborting (or re-run with -SkipScaffold to only generate content)." "ERROR"
    exit 1
}

# ----------------------------------------------------------------------------
# Helpers: HTTP, id normalization / resolution
# ----------------------------------------------------------------------------
$UserAgent = "Basic256DocsMigration/1.0 (+personal one-off migration script)"

function Invoke-WikiGet {
    param([string]$Url, [int]$MaxRetries = 3)
    for ($attempt = 1; $attempt -le $MaxRetries; $attempt++) {
        try {
            Start-Sleep -Milliseconds $RequestDelayMs
            return Invoke-WebRequest -Uri $Url -UserAgent $UserAgent -UseBasicParsing -TimeoutSec 30
        } catch {
            if ($attempt -eq $MaxRetries) {
                Write-Log "Failed to fetch $Url after $MaxRetries attempts: $($_.Exception.Message)" "WARN"
                return $null
            }
            Start-Sleep -Seconds ($attempt * 2)
        }
    }
}

# Invoke-WebRequest -UseBasicParsing decodes .Content using an encoding it guesses
# from the HTTP headers alone -- it never looks at the page's own <meta charset>.
# When the server's Content-Type header omits an explicit charset, Windows
# PowerShell silently falls back to Latin-1, which turns every UTF-8 multi-byte
# character (curly quotes, accented letters in fr/de/ru content, etc.) into
# mojibake like "map" -> "â€œmapâ€". DokuWiki serves UTF-8 regardless of what the
# header says, so decode the raw bytes ourselves and skip PowerShell's guess.
function Get-Utf8ResponseText {
    param($Response)
    try {
        $stream = $Response.RawContentStream
        if ($stream -and $stream.CanSeek) { $stream.Position = 0 }
        $ms = New-Object System.IO.MemoryStream
        $stream.CopyTo($ms)
        return [System.Text.Encoding]::UTF8.GetString($ms.ToArray())
    } catch {
        Write-Log "Could not force UTF-8 decode ($($_.Exception.Message)); falling back to PowerShell's auto-detected encoding for this response, which may mojibake non-ASCII characters." "WARN"
        return $Response.Content
    }
}

function Get-SafeFileName {
    param([string]$Id)
    $safe = $Id -replace '[:\\/]', '__'
    # [ and ] are wildcard metacharacters to PowerShell's path cmdlets (Test-Path,
    # Get-Content, etc.) -- an id containing one raises "wildcard character
    # pattern is not valid" instead of just failing to match a file, so strip
    # them here in addition to the other filesystem-unsafe characters.
    $safe = $safe -replace '[<>"|?*\[\]]', '_'
    return $safe
}

# Resolves a raw [[link]] / {{media}} target found inside $CurrentPageId's wikitext
# into an absolute DokuWiki page/media id, per DokuWiki's relative-namespace rules.
# Returns $null for external links (http/https/mailto/interwiki).
function Resolve-WikiId {
    param([string]$Target, [string]$CurrentPageId)

    $t = $Target.Trim()
    if ([string]::IsNullOrWhiteSpace($t)) { return $null }
    if ($t -match '^(https?|mailto|ftp):') { return $null }
    if ($t -match '>') { return $null }   # interwiki shorthand like wp>Article

    $t = $t -replace '\\', ':'            # some installs allow backslash as separator
    $t = $t.TrimStart(':')
    $t = $t.ToLowerInvariant()

    if ($t.Contains(':')) {
        # Already namespace-qualified (with or without a leading ':') -- DokuWiki
        # treats any colon-containing id as absolute from the wiki root. Only a
        # bare word with NO colon at all is relative to the current namespace.
        return $t
    }

    $lastColon = $CurrentPageId.LastIndexOf(':')
    if ($lastColon -lt 0) {
        # current page is root-namespace -> relative target is also root-namespace
        return $t
    } else {
        $ns = $CurrentPageId.Substring(0, $lastColon)
        return "$ns`:$t"
    }
}

function Test-AllowedPageId {
    param([string]$Id)
    # 'start' (no namespace) is DokuWiki's root language-chooser wrapper page --
    # it just points at en:start / fr:start / etc. Excluding it here avoids it
    # landing under docs/samples/start.md (Get-DocOutputInfo's fallback bucket
    # for any non-namespaced id), which is a confusing place for it to show up.
    $excludedRoot = @('sidebar', 'playground', '404', 'index', 'wiki', 'start')
    if ($Id -notmatch ':') {
        return ($excludedRoot -notcontains $Id)
    }
    $ns = $Id.Substring(0, $Id.IndexOf(':'))
    return ($Languages -contains $ns)
}

# ----------------------------------------------------------------------------
# 1. Crawl
# ----------------------------------------------------------------------------
$Visited  = New-Object System.Collections.Generic.HashSet[string]
$MediaSet = New-Object System.Collections.Generic.HashSet[string]
$Queue    = New-Object System.Collections.Generic.Queue[string]
$FailedPages = New-Object System.Collections.Generic.List[string]

$seeds = @('start') + ($Languages | ForEach-Object { "$_`:start" })
foreach ($s in $seeds) { $Queue.Enqueue($s) }

if ($SkipCrawl) {
    Write-Log "Skipping crawl; reusing cached raw pages from $RawDir"
    # id -> raw filename mapping was persisted to page-index.json during the original crawl
    $indexPath = Join-Path $CacheDir "page-index.json"
    if (-not (Test-Path $indexPath)) {
        Write-Log "No cached page-index.json found; cannot use -SkipCrawl on a fresh cache. Run without -SkipCrawl first." "ERROR"
        exit 1
    }
    $idx = Get-Content $indexPath -Raw | ConvertFrom-Json
    foreach ($p in $idx.PSObject.Properties.Name) { $Visited.Add($p) | Out-Null }
    $mediaIndexPath = Join-Path $CacheDir "media-index.json"
    if (Test-Path $mediaIndexPath) {
        $midx = Get-Content $mediaIndexPath -Raw | ConvertFrom-Json
        foreach ($m in $midx.PSObject.Properties.Name) { $MediaSet.Add($m) | Out-Null }
    }
    Write-Log "Loaded $($Visited.Count) cached pages and $($MediaSet.Count) cached media references."
} else {
    Write-Log "Starting crawl from seeds: $($seeds -join ', ')"
    while ($Queue.Count -gt 0) {
        if ($MaxPages -gt 0 -and $Visited.Count -ge $MaxPages) {
            Write-Log "Reached -MaxPages limit of $MaxPages. Stopping crawl." "WARN"
            break
        }
        $id = $Queue.Dequeue()
        if ($Visited.Contains($id)) { continue }
        if (-not (Test-AllowedPageId $id)) { continue }
        $Visited.Add($id) | Out-Null

        $encoded = [uri]::EscapeDataString($id)
        $url = "$WikiBaseUrl/doku.php?id=$encoded&do=export_raw"
        $resp = Invoke-WikiGet -Url $url
        if (-not $resp -or $resp.StatusCode -ne 200) {
            Write-Log "Could not fetch page: $id" "WARN"
            $FailedPages.Add($id)
            continue
        }
        $raw = Get-Utf8ResponseText -Response $resp

        # DokuWiki's do=export_raw for a page that doesn't exist (a dead/broken
        # [[link]] somewhere pointing at it) does NOT 404 -- it returns HTTP 200
        # with the normal rendered HTML "This topic does not exist yet" page
        # instead of plain wikitext. Left unchecked, that whole HTML document
        # gets saved as this page's "raw" content and Pandoc converts it
        # character-for-character into the .md file, which is why some pages
        # render as a wall of DokuWiki template markup instead of real content.
        # Real export_raw responses are text/plain with no HTML tags at all, so
        # either signal below (header or a leading doctype) means: not real content.
        $contentType = $resp.Headers['Content-Type']
        $looksLikeHtml = $raw.TrimStart() -match '^\s*<(!DOCTYPE|html)\b'
        if (($contentType -and $contentType -notmatch 'text/plain') -or $looksLikeHtml) {
            Write-Log "Page '$id' returned HTML instead of raw wikitext (likely a broken link to a page that doesn't exist) -- skipping." "WARN"
            $FailedPages.Add($id)
            continue
        }

        $rawFile = Join-Path $RawDir ((Get-SafeFileName $id) + ".txt")
        [System.IO.File]::WriteAllText($rawFile, $raw, [System.Text.UTF8Encoding]::new($false))

        # extract [[links]]
        # Exclude '[' from the captured target (not just ']','|','#'): a stray
        # extra bracket in the source wikitext -- e.g. malformed "[[[en:page]]"
        # markup -- would otherwise leak a literal leading '[' into the
        # captured page id (producing ids like "en:[page"), which later
        # crashes Test-Path/Get-Content since '[' is a wildcard metacharacter.
        # Excluding it here just re-anchors the match on the real [[ pair.
        foreach ($m in [regex]::Matches($raw, '\[\[\s*([^\[\]\|#]+)')) {
            $resolved = Resolve-WikiId -Target $m.Groups[1].Value -CurrentPageId $id
            if ($resolved -and -not $Visited.Contains($resolved)) { $Queue.Enqueue($resolved) }
        }
        # extract {{media}}
        foreach ($m in [regex]::Matches($raw, '\{\{\s*([^\}\|]+)')) {
            # DokuWiki allows size/cache modifiers after a '?' (e.g. "basic256.png?100")
            # which are not part of the actual media id -- strip them before resolving,
            # or fetch.php gets handed a bogus id and 404s.
            $mediaTarget = ($m.Groups[1].Value -split '[?&]')[0]
            $resolved = Resolve-WikiId -Target $mediaTarget -CurrentPageId $id
            if ($resolved) { $MediaSet.Add($resolved) | Out-Null }
        }

        if ($Visited.Count % 10 -eq 0) {
            Write-Log "Crawled $($Visited.Count) pages so far... (queue: $($Queue.Count))"
        }
    }
    Write-Log "Crawl complete. $($Visited.Count) pages discovered, $($MediaSet.Count) media files referenced." "OK"

    # persist indexes so -SkipCrawl can be used later
    $pageIdxObj = @{}
    foreach ($p in $Visited) { $pageIdxObj[$p] = (Get-SafeFileName $p) + ".txt" }
    $pageIdxObj | ConvertTo-Json | Set-Content (Join-Path $CacheDir "page-index.json") -Encoding UTF8

    $mediaIdxObj = @{}
    foreach ($m in $MediaSet) { $mediaIdxObj[$m] = $true }
    $mediaIdxObj | ConvertTo-Json | Set-Content (Join-Path $CacheDir "media-index.json") -Encoding UTF8
}

# ----------------------------------------------------------------------------
# 2. Download media (images + sample programs + everything else referenced)
# ----------------------------------------------------------------------------
$ImageExtensions = @('png','jpg','jpeg','gif','svg','bmp','webp')
$MediaMap = @{}   # wiki media id -> public path under the Docusaurus site (e.g. /img/wiki/... or /files/wiki/...)

Write-Log "Downloading $($MediaSet.Count) media files..."
$mediaCount = 0
foreach ($mediaId in $MediaSet) {
    $mediaCount++
    $ext = ([System.IO.Path]::GetExtension($mediaId)).TrimStart('.').ToLowerInvariant()
    $relPath = ($mediaId -replace ':', '/')
    $isImage = $ImageExtensions -contains $ext
    $bucket = if ($isImage) { "img" } else { "files" }
    $localPath = Join-Path $MediaDir (Join-Path $bucket "wiki/$relPath")
    $publicPath = "/$bucket/wiki/$relPath"
    $MediaMap[$mediaId] = $publicPath

    if (Test-Path -LiteralPath $localPath) { continue }  # already downloaded (resume support)
    New-Item -ItemType Directory -Force -Path (Split-Path $localPath -Parent) | Out-Null

    $encoded = [uri]::EscapeDataString($mediaId)
    $url = "$WikiBaseUrl/lib/exe/fetch.php?media=$encoded"
    try {
        Start-Sleep -Milliseconds $RequestDelayMs
        Invoke-WebRequest -Uri $url -UserAgent $UserAgent -UseBasicParsing -OutFile $localPath -TimeoutSec 30
        if ($mediaCount % 10 -eq 0) { Write-Log "Downloaded $mediaCount / $($MediaSet.Count) media files..." }
    } catch {
        Write-Log "Failed to download media '$mediaId': $($_.Exception.Message)" "WARN"
    }
}
Write-Log "Media download complete." "OK"

# ----------------------------------------------------------------------------
# 3. Convert pages with Pandoc + rewrite links/media references
# ----------------------------------------------------------------------------
function Get-DocOutputInfo {
    param([string]$PageId)
    if ($PageId -match ':') {
        $ns = $PageId.Substring(0, $PageId.IndexOf(':'))
        $rest = $PageId.Substring($PageId.IndexOf(':') + 1) -replace ':', '/'
        return [pscustomobject]@{
            RelPath  = "$ns/$rest.md"
            DocUrl   = "/docs/$ns/$rest"
        }
    } else {
        return [pscustomobject]@{
            RelPath  = "samples/$PageId.md"
            DocUrl   = "/docs/samples/$PageId"
        }
    }
}

# Resolves a {{page>...}} inclusion macro (already mangled by Pandoc into
# something like "/page>en/start#Arrays and Variables&noheader") into the
# real content it was supposed to embed: pulls the referenced section out of
# the target page's own raw wikitext (already on disk from the crawl),
# converts just that fragment through Pandoc, and resolves its links relative
# to the TARGET page's namespace (not the page doing the including). Falls
# back to a plain link to the target page (rather than silently returning
# nothing) if the specific section can't be located -- losing the "See Also"
# links entirely is worse than pointing at the whole page they'd have been on.
function Resolve-PageTransclusion {
    param([string]$RawTarget, [string]$CurrentPageId)

    $withoutFlags = ($RawTarget -split '&')[0]
    $parts = $withoutFlags -split '#', 2
    $idPart = ($parts[0] -replace '/', ':').Trim(':')
    $section = if ($parts.Count -gt 1) { [uri]::UnescapeDataString($parts[1]) } else { $null }
    if ([string]::IsNullOrWhiteSpace($idPart)) { return $null }

    $targetId = Resolve-WikiId -Target $idPart -CurrentPageId $CurrentPageId
    if (-not $targetId) { $targetId = $idPart.ToLowerInvariant() }

    $fallback = {
        if ($Visited.Contains($targetId)) {
            $info = Get-DocOutputInfo -PageId $targetId
            return "*(See [$targetId]($($info.DocUrl)).)*"
        }
        return $null
    }

    $targetRawFile = Join-Path $RawDir ((Get-SafeFileName $targetId) + ".txt")
    if (-not (Test-Path -LiteralPath $targetRawFile)) { return (& $fallback) }
    $targetRaw = Get-Content -LiteralPath $targetRawFile -Raw

    if ($section) {
        $sectionRaw = Get-WikiSection -RawText $targetRaw -SectionTitle $section
        if ($null -eq $sectionRaw -or $sectionRaw -eq '') { return (& $fallback) }
        $targetRaw = $sectionRaw
    }
    $targetRaw = Normalize-DokuWikiListIndent -Text $targetRaw

    $tmpIn  = Join-Path $CacheDir "_transclude_in.txt"
    $tmpOut2 = Join-Path $CacheDir "_transclude_out.md"
    [System.IO.File]::WriteAllText($tmpIn, $targetRaw, [System.Text.UTF8Encoding]::new($false))
    try {
        & pandoc -f dokuwiki -t gfm --wrap=preserve -o $tmpOut2 $tmpIn 2>$null
    } catch {
        return (& $fallback)
    }
    if (-not (Test-Path -LiteralPath $tmpOut2)) { return (& $fallback) }
    $fragMd = (Get-Content -LiteralPath $tmpOut2 -Raw).Trim()
    Remove-Item -LiteralPath $tmpIn, $tmpOut2 -Force -ErrorAction SilentlyContinue
    if ([string]::IsNullOrWhiteSpace($fragMd)) { return (& $fallback) }

    return (Resolve-MarkdownLinksAndImages -Markdown $fragMd -PageId $targetId)
}

# Rewrites [text](target) / ![alt](target) references in $Markdown, where
# $PageId is the page those (possibly relative) targets should resolve
# against. Factored out of the main per-page loop so transcluded fragments
# (see Resolve-PageTransclusion above) can also have their own links fixed up
# -- relative to the page they came FROM, not the page including them.
function Resolve-MarkdownLinksAndImages {
    param([string]$Markdown, [string]$PageId)

    # Plugin-macro pass FIRST: unlike well-formed Markdown links, Pandoc emits
    # these broken {{page>...}}/{{indexmenu>...}} targets with literal, unencoded
    # spaces whenever the DokuWiki section name has more than one word (e.g.
    # "Text Output", "Arrays and Variables"). The general link/image regex below
    # deliberately excludes whitespace from its href group (correct for real
    # Markdown hrefs), so those multi-word cases would otherwise fail to match
    # at all and pass through completely untouched. Use a href pattern that
    # tolerates spaces (just excludes the closing paren) to catch them all.
    $Markdown = [regex]::Replace($Markdown, '!\[(?<text>[^\]]*)\]\(/?(?<plugin>page|indexmenu)>(?<rest>[^)]+)\)', {
        param($m)
        if ($m.Groups['plugin'].Value -eq 'page') {
            $included = Resolve-PageTransclusion -RawTarget $m.Groups['rest'].Value -CurrentPageId $PageId
            if ($included) { return $included }
        }
        $script:unresolvedLinks.Add("$PageId -> DROPPED plugin macro: $($m.Value)")
        return ''
    })

    return [regex]::Replace($Markdown, '(?<bang>!?)\[(?<text>[^\]]*)\]\((?<href>[^)\s]+)(?<title>\s+"[^"]*")?\)', {
        param($m)
        $bang  = $m.Groups['bang'].Value
        $text  = $m.Groups['text'].Value
        $href  = $m.Groups['href'].Value
        $title = $m.Groups['title'].Value

        if ($href -match '^(https?|mailto|#)') { return $m.Value }  # already external / anchor, leave alone

        $hrefClean = $href -split '[?#]' | Select-Object -First 1
        $resolved = Resolve-WikiId -Target $hrefClean -CurrentPageId $PageId

        if (-not $resolved) {
            if ($bang -eq '!') {
                # Any remaining unresolved image reference at this point (e.g. a
                # single-word page>/indexmenu> macro the pre-pass above already
                # would have caught, or some other {{...}}-derived oddity) has no
                # sane Markdown equivalent -- drop it rather than leave a broken
                # image link that fails the Docusaurus/MDX build.
                $script:unresolvedLinks.Add("$PageId -> DROPPED plugin macro: $href")
                return ''
            }
            return $m.Value
        }

        if ($MediaMap.ContainsKey($resolved)) {
            return "$bang[$text]($($MediaMap[$resolved])$title)"
        }
        if ($Visited.Contains($resolved)) {
            $info = Get-DocOutputInfo -PageId $resolved
            return "$bang[$text]($($info.DocUrl)$title)"
        }

        # Unknown / out-of-scope target: fall back to linking at the live wiki so it still works.
        $script:unresolvedLinks.Add("$PageId -> $resolved")
        $liveUrl = "$WikiBaseUrl/doku.php?id=$([uri]::EscapeDataString($resolved))"
        return "$bang[$text]($liveUrl$title)"
    })
}

function Get-FriendlyTitle {
    param([string]$PageId, [string]$MarkdownContent)
    if ($MarkdownContent -match '(?m)^\s*#\s+(.+?)\s*$') {
        return $Matches[1].Trim()
    }
    $last = $PageId.Split(':')[-1]
    $words = ($last -replace '[_\-]', ' ') -csplit '(?=[A-Z])' | Where-Object { $_ -ne '' }
    $title = ($words -join ' ').Trim()
    if ([string]::IsNullOrWhiteSpace($title)) { return $last }
    return (Get-Culture).TextInfo.ToTitleCase($title.ToLowerInvariant())
}

# Pandoc's dokuwiki reader requires each nested list level to be indented by
# EXACTLY 2 more spaces than its parent. If the source wikitext uses a
# different (even if internally consistent) indent width -- 3 spaces, 4
# spaces, a tab -- Pandoc can't recognize the continuation as a nested list
# item at all, and once that happens it stops parsing the rest of the list as
# structure and just dumps the raw "* [[id|Label]]" wikitext verbatim for
# every remaining line, including later TOP-level items that would otherwise
# have converted fine on their own. Re-indent every list line to a clean
# 2-space-per-level ladder (relative to whatever widths actually appear, not
# their literal size) before Pandoc ever sees it.
function Normalize-DokuWikiListIndent {
    param([string]$Text)
    $lines = $Text -split "`r?`n"
    $out = New-Object System.Collections.Generic.List[string]
    $levelWidths = New-Object System.Collections.Generic.List[int]
    foreach ($line in $lines) {
        if ($line -match '^(?<indent>[ \t]*)(?<marker>[\*\-])(?<rest>\s.*)$') {
            $indentStr = $Matches['indent'] -replace "`t", '  '
            $width = $indentStr.Length
            if ($width -eq 0) {
                $levelWidths.Clear()
                $out.Add($Matches['marker'] + $Matches['rest'])
                continue
            }
            $depth = $levelWidths.IndexOf($width)
            if ($depth -lt 0) {
                while ($levelWidths.Count -gt 0 -and $levelWidths[$levelWidths.Count - 1] -gt $width) {
                    $levelWidths.RemoveAt($levelWidths.Count - 1)
                }
                $levelWidths.Add($width)
                $depth = $levelWidths.Count - 1
            } else {
                while ($levelWidths.Count -gt $depth + 1) { $levelWidths.RemoveAt($levelWidths.Count - 1) }
            }
            $normIndent = ' ' * (2 * ($depth + 1))
            $out.Add($normIndent + $Matches['marker'] + $Matches['rest'])
            continue
        }
        if ($line.Trim() -eq '') { $levelWidths.Clear() }
        $out.Add($line)
    }
    return ($out -join "`n")
}

# Extracts the body of one heading section (up to the next heading of the same
# or a higher level) from a page's raw DokuWiki text, for resolving
# {{page>id#section}} transclusions -- see Resolve-PageTransclusion below.
function Get-WikiSection {
    param([string]$RawText, [string]$SectionTitle)
    $lines = $RawText -split "`r?`n"
    $headingPattern = '^\s*(={2,6})\s*(.+?)\s*=+\s*$'
    $startIdx = -1
    $level = 0
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match $headingPattern) {
            if ($Matches[2].Trim() -ieq $SectionTitle.Trim()) {
                $startIdx = $i
                $level = $Matches[1].Length
                break
            }
        }
    }
    if ($startIdx -lt 0) { return $null }
    $endIdx = $lines.Count - 1
    for ($j = $startIdx + 1; $j -lt $lines.Count; $j++) {
        if ($lines[$j] -match $headingPattern -and $Matches[1].Length -ge $level) {
            $endIdx = $j - 1
            break
        }
    }
    if ($endIdx -lt $startIdx + 1) { return '' }
    return ($lines[($startIdx + 1)..$endIdx] -join "`n")
}

Write-Log "Converting $($Visited.Count) pages with Pandoc..."
$convertFailures = New-Object System.Collections.Generic.List[string]
$unresolvedLinks = New-Object System.Collections.Generic.List[string]
$converted = 0

foreach ($id in $Visited) {
    $rawFile = Join-Path $RawDir ((Get-SafeFileName $id) + ".txt")
    if (-not (Test-Path -LiteralPath $rawFile)) { continue }

    # Re-indent nested lists to a clean 2-space ladder before Pandoc ever sees
    # them -- see Normalize-DokuWikiListIndent above for why this matters.
    $rawContent = Get-Content -LiteralPath $rawFile -Raw
    $rawContent = Normalize-DokuWikiListIndent -Text $rawContent
    $normFile = Join-Path $CacheDir "_pandoc_in.txt"
    [System.IO.File]::WriteAllText($normFile, $rawContent, [System.Text.UTF8Encoding]::new($false))

    $tmpOut = Join-Path $CacheDir "_pandoc_tmp.md"
    try {
        & pandoc -f dokuwiki -t gfm --wrap=preserve -o $tmpOut $normFile 2>$null
    } catch {
        $convertFailures.Add($id)
        Write-Log "Pandoc failed on '$id': $($_.Exception.Message)" "WARN"
        continue
    }
    if (-not (Test-Path -LiteralPath $tmpOut)) {
        $convertFailures.Add($id)
        continue
    }

    $md = Get-Content -LiteralPath $tmpOut -Raw
    Remove-Item -LiteralPath $tmpOut -Force -ErrorAction SilentlyContinue

    # --- normalize fenced code-block language hints (BASIC-256 isn't a known highlighter) ---
    $md = $md -replace '```basic256\b', '```basic'
    $md = $md -replace '```\s*code\b', '```basic'

    # --- rewrite markdown links/images: [text](target) and ![alt](target) ---
    $md = Resolve-MarkdownLinksAndImages -Markdown $md -PageId $id

    $title = Get-FriendlyTitle -PageId $id -MarkdownContent $md
    $titleEscaped = $title -replace '"', '\"'
    $frontMatter = "---`ntitle: ""$titleEscaped""`nsidebar_label: ""$titleEscaped""`n---`n`n"

    $outInfo = Get-DocOutputInfo -PageId $id
    $outPath = Join-Path $DocsOutDir $outInfo.RelPath
    New-Item -ItemType Directory -Force -Path (Split-Path $outPath -Parent) | Out-Null
    [System.IO.File]::WriteAllText($outPath, $frontMatter + $md, [System.Text.UTF8Encoding]::new($false))

    $converted++
    if ($converted % 25 -eq 0) { Write-Log "Converted $converted / $($Visited.Count) pages..." }
}
Write-Log "Conversion complete: $converted converted, $($convertFailures.Count) failed." "OK"

# ----------------------------------------------------------------------------
# 4. Category metadata for nicer sidebar labels
# ----------------------------------------------------------------------------
$LangNames = @{ en = "English"; fr = "Français"; ru = "Русский"; de = "Deutsch"; nl = "Nederlands" }
$pos = 1
foreach ($lang in $Languages) {
    $dir = Join-Path $DocsOutDir $lang
    if (Test-Path $dir) {
        $label = if ($LangNames.ContainsKey($lang)) { $LangNames[$lang] } else { $lang }
        $cat = @{ label = $label; position = $pos; collapsible = $true; collapsed = $true } | ConvertTo-Json
        Set-Content (Join-Path $dir "_category_.json") -Value $cat -Encoding UTF8
    }
    $pos++
}
$samplesDir = Join-Path $DocsOutDir "samples"
if (Test-Path $samplesDir) {
    $cat = @{ label = "Sample Programs & Galleries"; position = ($pos); collapsible = $true; collapsed = $true } | ConvertTo-Json
    Set-Content (Join-Path $samplesDir "_category_.json") -Value $cat -Encoding UTF8
}

# ----------------------------------------------------------------------------
# 5. Scaffold Docusaurus (if needed) and copy content in
# ----------------------------------------------------------------------------
# NOTE: we detect "already scaffolded" by the presence of package.json, NOT by
# whether $OutputRoot is empty -- this directory will already contain our
# converted docs/static content on a second run, which is NOT the same thing
# as having a real Docusaurus app (package.json, docusaurus.config.js, src/...).
if (-not $SkipScaffold) {
    $alreadyScaffolded = Test-Path (Join-Path $OutputRoot "package.json")
    if ($alreadyScaffolded) {
        Write-Log "$OutputRoot already has a package.json -- skipping scaffold step." "WARN"
    } else {
        Write-Log "Scaffolding new Docusaurus site (via temp folder, then merging in)..."
        New-Item -ItemType Directory -Force -Path $OutputRoot | Out-Null
        $scaffoldTmp = Join-Path $env:TEMP ("basic256-docusaurus-scaffold-" + [guid]::NewGuid().ToString("N").Substring(0,8))
        try {
            npx --yes create-docusaurus@latest "$scaffoldTmp" classic --skip-install --javascript

            if (-not (Test-Path (Join-Path $scaffoldTmp "package.json"))) {
                Write-Log "create-docusaurus did not produce a package.json in the temp scaffold. Scaffold step failed -- you will need to run create-docusaurus manually." "ERROR"
            } else {
                foreach ($f in @("package.json","package-lock.json","docusaurus.config.js","sidebars.js","babel.config.js",".gitignore","README.md")) {
                    $src = Join-Path $scaffoldTmp $f
                    if (Test-Path $src) { Copy-Item $src $OutputRoot -Force }
                }
                if (Test-Path (Join-Path $scaffoldTmp "src")) {
                    Copy-Item (Join-Path $scaffoldTmp "src") (Join-Path $OutputRoot "src") -Recurse -Force
                }
                if (Test-Path (Join-Path $scaffoldTmp "blog")) {
                    Copy-Item (Join-Path $scaffoldTmp "blog") (Join-Path $OutputRoot "blog") -Recurse -Force
                }
                if (Test-Path (Join-Path $scaffoldTmp "static")) {
                    New-Item -ItemType Directory -Force -Path (Join-Path $OutputRoot "static") | Out-Null
                    Copy-Item (Join-Path $scaffoldTmp "static\*") (Join-Path $OutputRoot "static") -Recurse -Force
                }
                Write-Log "Scaffold merged in. NOTE: run 'npm install' inside $OutputRoot before 'npm run start'." "OK"
            }
        } finally {
            Remove-Item $scaffoldTmp -Recurse -Force -ErrorAction SilentlyContinue
        }
    }
}

# ----------------------------------------------------------------------------
# 5b. Patch docusaurus.config.js: CommonMark for .md files + non-fatal broken links/images
# ----------------------------------------------------------------------------
# Docusaurus v3 compiles .md files as MDX by default, which parses literal
# `{`, `<`, `!` etc. as JSX/JS expressions. BASIC-256 array syntax (e.g. a{1,2,3}),
# comparison operators (a < b), and leftover plugin-macro debris in the migrated
# content are NOT meant to be JSX, so MDX throws hard build errors on them.
# 'detect' makes .md files use the CommonMark parser (plain text, no JSX) while
# leaving .mdx files (if any are added later) on full MDX. We also downgrade
# broken markdown links/images from a hard build failure to a warning, since a
# best-effort wiki migration will always have a few stragglers.
$configPath = Join-Path $OutputRoot "docusaurus.config.js"
if (Test-Path $configPath) {
    $configContent = Get-Content $configPath -Raw
    if ($configContent -notmatch 'markdown\s*:\s*\{') {
        $markdownBlock = @"
  markdown: {
    format: 'detect',
    hooks: {
      onBrokenMarkdownLinks: 'warn',
      onBrokenMarkdownImages: 'warn',
    },
  },
"@
        $configContent = $configContent -replace '(const config\s*=\s*\{)', "`$1`n$markdownBlock"
        [System.IO.File]::WriteAllText($configPath, $configContent, [System.Text.UTF8Encoding]::new($false))
        Write-Log "Patched docusaurus.config.js: markdown.format = 'detect', broken links/images set to 'warn'." "OK"
    } else {
        Write-Log "docusaurus.config.js already has a markdown config block -- left untouched." "WARN"
    }
} else {
    Write-Log "No docusaurus.config.js found at $OutputRoot -- skipping markdown-format patch (did the scaffold step run?)." "WARN"
}

# ----------------------------------------------------------------------------
# 5c. Re-point the scaffold's hard-coded "Tutorial" links at the real docs
# ----------------------------------------------------------------------------
# create-docusaurus's classic template ships a navbar item, a footer link, and a
# homepage button that all hard-code docId/path "intro" -- a tutorial page that
# only exists in the scaffold template, which we never copied in. Left as-is,
# every "Tutorial" link 404s and the homepage looks like a stock "My Site /
# Dinosaurs are cool" page with no obvious way to reach the BASIC256 content.
# Re-point them at docs/en/start.md (always present) and retitle the site.
$HomeDocId   = "en/start"
$HomeDocPath = "/docs/$HomeDocId"

if (Test-Path $configPath) {
    $configContent = Get-Content $configPath -Raw
    $configContent = $configContent -replace "title:(\s*)(['""])My Site\2", "title:`$1`$2BASIC-256 Documentation`$2"
    $configContent = $configContent -replace "tagline:(\s*)(['""])Dinosaurs are cool\2", "tagline:`$1`$2An educational BASIC interpreter and IDE`$2"
    $configContent = $configContent -replace "docId:(\s*)(['""])intro\2", "docId:`$1`$2$HomeDocId`$2"
    $configContent = $configContent -replace "label:(\s*)(['""])Tutorial\2", "label:`$1`$2Docs`$2"
    $configContent = $configContent -replace "to:(\s*)(['""])/docs/intro\2", "to:`$1`$2$HomeDocPath`$2"
    [System.IO.File]::WriteAllText($configPath, $configContent, [System.Text.UTF8Encoding]::new($false))
    Write-Log "Patched docusaurus.config.js: title/tagline + navbar/footer links now point at $HomeDocPath." "OK"
}

$indexPagePath = Join-Path $OutputRoot "src\pages\index.js"
if (Test-Path $indexPagePath) {
    $indexContent = Get-Content $indexPagePath -Raw
    $indexContent = $indexContent -replace "to=(['""])/docs/intro\1", "to=`$1$HomeDocPath`$1"
    $indexContent = $indexContent -replace "Docusaurus Tutorial - 5min", "BASIC-256 Documentation"
    [System.IO.File]::WriteAllText($indexPagePath, $indexContent, [System.Text.UTF8Encoding]::new($false))
    Write-Log "Patched src/pages/index.js: homepage button now points at $HomeDocPath." "OK"
} else {
    Write-Log "No src/pages/index.js found at $OutputRoot -- skipping homepage button patch." "WARN"
}

Write-Log "Copying converted docs and assets into $OutputRoot ..."
New-Item -ItemType Directory -Force -Path (Join-Path $OutputRoot "docs") | Out-Null
Copy-Item (Join-Path $DocsOutDir "*") (Join-Path $OutputRoot "docs") -Recurse -Force

New-Item -ItemType Directory -Force -Path (Join-Path $OutputRoot "static") | Out-Null
if (Test-Path (Join-Path $MediaDir "img")) {
    New-Item -ItemType Directory -Force -Path (Join-Path $OutputRoot "static\img") | Out-Null
    Copy-Item (Join-Path $MediaDir "img\*") (Join-Path $OutputRoot "static\img") -Recurse -Force
}
if (Test-Path (Join-Path $MediaDir "files")) {
    New-Item -ItemType Directory -Force -Path (Join-Path $OutputRoot "static\files") | Out-Null
    Copy-Item (Join-Path $MediaDir "files\*") (Join-Path $OutputRoot "static\files") -Recurse -Force
}
Write-Log "Copy complete." "OK"

# ----------------------------------------------------------------------------
# 6. Report
# ----------------------------------------------------------------------------
$LogLines.Add("")
$LogLines.Add("=== SUMMARY ===")
$LogLines.Add("Pages crawled:      $($Visited.Count)")
$LogLines.Add("Pages converted:    $converted")
$LogLines.Add("Pages failed fetch: $($FailedPages.Count)  -> $($FailedPages -join ', ')")
$LogLines.Add("Pages failed pandoc:$($convertFailures.Count)  -> $($convertFailures -join ', ')")
$LogLines.Add("Media referenced:   $($MediaSet.Count)")
$LogLines.Add("Unresolved links (pointed back to live wiki as fallback): $($unresolvedLinks.Count)")
$unresolvedLinks | Select-Object -First 50 | ForEach-Object { $LogLines.Add("  $_") }
$LogLines | Set-Content $LogFile -Encoding UTF8

Write-Log "Done. Full report written to $LogFile" "OK"
Write-Log "Next steps: cd `"$OutputRoot`"; npm install; npm run start" "OK"