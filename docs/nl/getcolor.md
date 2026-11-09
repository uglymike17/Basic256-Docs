---
title: "Getcolor"
sidebar_label: "Getcolor"
---

## GetColor

### Formaat

getcolor\
getcolor()

### Beschrijving

De functie geeft de huidige ARGB waarde (alpha, rood, groen, blauw) terug van de kleur van het potlood.
ARGB wordt berekend door ((alpha\*256+rood)\*256+groen)\*256+blauw.
De vier waarden liggen tussen 0 en 255; een niet-transparante kleur geeft dus een negatief getal, net als [Rgb](./rgb.md).
Indien het potlood een transparante kleur heeft via de **CLEAR** kleur, wordt **0** teruggegeven.

### Voorbeel

``` basic4gl
color red
print getcolor
```

geeft dan

    -65536

### Zie ook

[Color](./color.md), [Rgb](./rgb.md)

### Nieuw Vanaf

0.9.5m

------------------------------------------------------------------------

[vorige](./rgb.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./circle.md)
