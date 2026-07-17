---
title: "Decimal"
sidebar_label: "Decimal"
---

## Decimal

### Format

**decimal** ( *expression* )\
**decimal** *expression*

### Description

Définie le nombre maximal de décimales (0-16) à convertir quand un nombre à virgule flottante est transformé en chaîne de caractères.
Cela ne change pas la précision interne des calculs numériques mais seulement la manière dont ils sont affichés ou enregistrés comme chaîne.
Par défaut, 6 chiffres après la virgule seront affichés.

### Exemple

    print 2/3
    decimal 10
    print 2/3
    decimal 15
    print 2/3

affichera

    0.666667
    0.6666666667
    0.666666666666667

### Voir aussi

[Print](./print.md), [String](./string.md)

### Disponible à partir de la version

0.9.6w
