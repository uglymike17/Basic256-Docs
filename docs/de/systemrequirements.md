---
title: "Systemrequirements"
sidebar_label: "Systemrequirements"
---

## Systemanforderungen

BASIC-256 2.1 läuft auf:

- **Windows** 7 oder neuer (64-Bit)
- **Linux** – 64-Bit x86-64 und ARM64
- **macOS** – Apple Silicon
- **Webbrowser** – eine WebAssembly-Version (WASM) läuft in jedem modernen Browser, ganz ohne Installation: [BASIC-256 online ausführen](https://uglymike17.github.io/basic256/)

Die Anforderungen sind gering: Jeder Computer, der eine aktuelle Version eines dieser Betriebssysteme ausführen kann, führt auch BASIC-256 problemlos aus.

### Aus dem Quellcode kompilieren

- **Qt 6** (die 2.1-Versionen werden mit Qt 6.11 gebaut)
- **Windows:** MSVC 2022
- **GNU Flex und Bison** – zum Neugenerieren des Sprach-Parsers
- Die Browser-Version verwendet zusätzlich **Emscripten**

Historischer Hinweis: BASIC-256-Versionen vor 2.1 wurden mit Qt 4 gebaut, unter Windows mit MinGW.
