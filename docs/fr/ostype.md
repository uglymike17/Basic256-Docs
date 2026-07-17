---
title: "Ostype"
sidebar_label: "Ostype"
---

## Ostype

### Format

**ostype**\
**ostype** ( )\

### Description

Retourne un nombre qui caractérise pour quel système d’exploitation BASIC256 a été compilé.

| Return Values |           |
|---------------|-----------|
| Value         | Type      |
| 0             | Windows   |
| 1             | Linux     |
| 2             | Macintosh |

### Note

Zéro (0) est également retourné si BASIC-256 pour Windows est utilisé sous Linux avec Wine.

### Exemple

    print "Vous utilisez une machine ";
    if ostype() = 0 then
       print "windows";
    else
       print "unix/linux";
    end if
    print "."

Affichera :

    Vous utilisez une machine unix/linux.

### Disponible depuis la version

0.9.6.58
