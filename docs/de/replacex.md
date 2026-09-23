---
title: "Replacex"
sidebar_label: "Replacex"
---

## Replacex (Function)

### Formato

**replacex** ( [haystack_string_expression](../en/stringexpressions.md) , [regular_expression](../en/regularexpressions.md) , [string_expression](../en/stringexpressions.md) )

returns [string_expression](../en/stringexpressions.md)

### Description

Return a new string where all occurrences of substrings matching the regular expression [regular_expression](../en/regularexpressions.md) are replaced by [string_expression](../en/stringexpressions.md) in the string [haystack_string_expression](../en/stringexpressions.md).

### Example

    a$ = "Ouvi bossa e saí da fossa"
    print Replacex(a$,"bossa","sopa")
    print Replacex(a$, "[bf]ossa", "sopa")

will display

    Ouvi sopa e saí da fossa
    Ouvi sopa e saí da sopa

### Notes

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](../en/regexminimal.md) statement.

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.56 | New to Version |
