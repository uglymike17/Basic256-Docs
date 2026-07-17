---
title: "System Requirements"
sidebar_label: "System Requirements"
---

## System Requirements

BASIC-256 2.1 runs on:

- **Windows** 7 or later (64-bit)
- **Linux** — 64-bit x86-64 and ARM64
- **macOS** — Apple Silicon
- **Web browser** — a WebAssembly (WASM) build runs in any modern browser with nothing to install: [Run BASIC-256 online](https://uglymike17.github.io/basic256/)

Requirements are modest: any computer able to run a current version of one of these operating systems will run BASIC-256 comfortably.

### Building from source

- **Qt 6** (the 2.1 releases build against Qt 6.11)
- **Windows:** MSVC 2022
- **GNU Flex and Bison** — to regenerate the language parser
- The browser build additionally uses **Emscripten**

Historical note: BASIC-256 releases before 2.1 were built with Qt 4, and on Windows with MinGW.
