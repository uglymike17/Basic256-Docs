---
title: "Writebyte"
sidebar_label: "Writebyte"
---

## Writebyte

### Format

**writebyte** *byte*\
**writebyte** ( *byte* )\
**writebyte** *filenumber*, *byte*\
**writebyte** ( *filenumber*, *byte* )

### Description

Écrit un octet (nombre sur 8 bit) à la fin d’un fichier ouvert. Si *filenumber* n’est pas spécifié, zéro (0) est utilisé par défaut.\
Le fichier en question doit avoir été ouvert grâce à la fonction [Openb](./open.md), de cette façon le codes ASCII CR/LF ne seront pas interprétés et traduits.

### Exemple

Voir la page [readbyte](./readbyte.md)

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Openb](./open.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)
