---
title: "Systemrequirements"
sidebar_label: "Systemrequirements"
---

## Configuration minimale

BASIC-256 2.1 fonctionne sur :

- **Windows** 7 ou version ultérieure (64 bits)
- **Linux** – 64 bits x86-64 et ARM64
- **macOS** – Apple Silicon
- **Navigateur web** – une version WebAssembly (WASM) s’exécute dans tout navigateur moderne, sans rien installer : [Exécuter BASIC-256 en ligne](https://uglymike17.github.io/basic256/)

La configuration requise est modeste : tout ordinateur capable d’exécuter une version actuelle de l’un de ces systèmes d’exploitation fera tourner BASIC-256 sans problème.

### Compiler depuis les sources

- **Qt 6** (les versions 2.1 sont compilées avec Qt 6.11)
- **Windows :** MSVC 2022
- **GNU Flex et Bison** – pour régénérer l’analyseur du langage
- La version pour navigateur utilise en plus **Emscripten**

Note historique : les versions de BASIC-256 antérieures à la 2.1 étaient compilées avec Qt 4, et sous Windows avec MinGW.
