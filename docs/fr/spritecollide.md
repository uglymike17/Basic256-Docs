---
title: "Spritecollide"
sidebar_label: "Spritecollide"
---

## Spritecollide

### Format

**spritecollide** ( *sprite1*, *sprite2*)

### Description

Cette fonction retourne vrai si les deux “sprites” se chevauchent (ou entrent en collision). **Spritecollide** suppose que les “sprites” sont compris dans un rectangle correspondant à la taille de l’image chargée. Les chevauchements sont calculés en utilisant ces rectangles. Pour les “sprites” de forme ronde ou plus tarabiscotés l’utilisation de cette fonction peut conduire à des sur-détections (les rectangles se chevauchent mais pas les “sprites”).

### Voir Aussi

[Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
