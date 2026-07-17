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

The site is published to the `gh-pages` branch of the `Basic256-Docs`
repository. With a GitHub account configured:

```bash
# using SSH
USE_SSH=true npm run deploy

# or over HTTPS
GIT_USER=<your GitHub username> npm run deploy
```

## Content

Documentation pages live under `docs/`, organized by language (`en`, `fr`,
`de`, `nl`, `ru`). The English syntax reference index is
[`docs/en/start.md`](docs/en/start.md).
