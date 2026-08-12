# BASIC-256 Documentation

Documentation site for [BASIC-256](https://github.com/uglymike17/basic256), an
educational BASIC interpreter and IDE. Built with
[Docusaurus](https://docusaurus.io/).

The published site lives at <https://uglymike17.github.io/Basic256-Docs/>.

## Requirements

- Node.js 20 or later

## Install

```bash
npm install
```

## Local development

```bash
npm start
```

Starts a local dev server with live reload at
<http://localhost:3000/Basic256-Docs/>. Most changes are reflected live without
restarting the server.

## Build

```bash
npm run build
```

Generates the static site into the `build/` directory. Preview that production
build locally — exactly as it will appear once deployed — with:

```bash
npm run serve
```

## Deploy

Deployment is automatic. Every push to `main` triggers
[`.github/workflows/deploy.yml`](.github/workflows/deploy.yml), which builds
the site and publishes it to GitHub Pages at
[doc.basic256.org](https://doc.basic256.org). There is no manual deploy step.

A run can also be triggered by hand from the repository's Actions tab
("Deploy to GitHub Pages" → "Run workflow"), which is useful for
re-publishing without a new commit.

Because the build runs in CI, a broken link or a missing image referenced
through `@site/` fails the workflow instead of reaching the live site.

## Content

Documentation pages live under `docs/`, organized by language (`en`, `fr`,
`de`, `nl`, `ru`). The English syntax reference index is
[`docs/en/start.md`](docs/en/start.md).
