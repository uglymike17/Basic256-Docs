---
title: "Replacex"
sidebar_label: "Replacex"
---

## Replacex

### Formaat

**replacex** ( *hooiberg* , *regex* , *nieuwestring* )

### Beschrijving

Bij deze functie wordt in *hooiberg* de *regex* reguliere uitdrukking vervangen door de *nieuwestring*.

### Voorbeeld

``` basic4gl
a$ = "Hanse panse kevertje die klom eens op de deur"
print Replacex(a$,"an.*e","em")
print Replacex(a$, "deur", "hek")
```

wordt dan

    Hemur
    Hanse panse kevertje die klom eens op de hek

### nieuw vanaf

0.9.6.56

------------------------------------------------------------------------

[vorige](./replace.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./right.md)
