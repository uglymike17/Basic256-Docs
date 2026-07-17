---
title: "Getcolor"
sidebar_label: "Getcolor"
---

## GetColor

### Formaat

getcolor\
getcolor()

### Beschrijving

De functie geeft de huidige RGB waarde terug van de kleur van het potlood.
RGB wordt berekend door (((rood\*256)+groen\*256)+blauw).
De waarden van rood, groen en blauw moeten tussen 0 en 255 liggen.

Indien het potlood een transparante kleur heeft via de **CLEAR** kleur, wordt **-1** teruggegeven.

### Voorbeel

``` basic4gl
color red
print getcolor
```

geeft dan

    16711680

### Zie ook

[Color](./color.md), [Rgb](./rgb.md)

### Nieuw Vanaf

0.9.5m

------------------------------------------------------------------------

[vorige](./rgb.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./circle.md)
