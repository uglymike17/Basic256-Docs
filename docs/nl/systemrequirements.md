---
title: "Systemrequirements"
sidebar_label: "Systemrequirements"
---

## Systeemvereisten

BASIC-256 2.1 draait op:

- **Windows** 7 of nieuwer (64-bit)
- **Linux** – 64-bit x86-64 en ARM64
- **macOS** – Apple Silicon
- **Webbrowser** – een WebAssembly-versie (WASM) draait in elke moderne browser, zonder installatie: [BASIC-256 online uitvoeren](https://uglymike17.github.io/basic256/)

De vereisten zijn bescheiden: elke computer die een actuele versie van een van deze besturingssystemen kan draaien, draait ook BASIC-256 probleemloos.

### Compileren vanaf de broncode

- **Qt 6** (de 2.1-versies worden gebouwd met Qt 6.11)
- **Windows:** MSVC 2022
- **GNU Flex en Bison** – om de taalparser opnieuw te genereren
- De browserversie gebruikt daarnaast **Emscripten**

Historische opmerking: BASIC-256-versies vóór 2.1 werden gebouwd met Qt 4, en op Windows met MinGW.

[Begin](./start.md)
