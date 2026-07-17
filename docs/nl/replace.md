---
title: "Replace"
sidebar_label: "Replace"
---

## Replace

### Formaat

**replace** ( *hooiberg* , *oudestring* , *nieuwestring* )\
**replace** ( *hooiberg* ,*oudestring* , *nieuwestring*, *hoofdletterongevoelig*)

### Beschrijving

Dankzij deze functie kan je in een *hooiber* string de *oudestring* vervangen door een *nieuwestring*. Je krijgt ook de kans om te zeggen dat er dan niet op de hoofd- of kleine letters moet gelet worden.

### Voorbeeld

``` basic4gl
a$ = "Hanse panse kevertje die klom eens op het hek."
print Replace(a$,"e","o")
```

geeft dan

    Hanso panso kovortjo dio klom oons op hot hok.

### Nieuw vanaf

0.9.6.55

------------------------------------------------------------------------

[vorige](./md5.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./replacex.md)
