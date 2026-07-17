---
title: "Implode"
sidebar_label: "Implode"
---

## Implode

### Formaat

**implode** ( *arrayvariabele* )\
**implode** ( *arrayvariabele* , *baken* )

### Beschrijving

Voegt de elementen van een array (reeks) samen in één string. Je kan ook optioneel *baken* meegeven tussen de verschillende elementen. Deze functie doet dus het omgekeerde dan de [Explode](./explode.md) functie.

### Voorbeeld

``` basic4gl
dim a$(1)
dim b(1)
a$ = Explode("Een twee drie wie niet weg is is gezien"," ")
print implode(a$,"-")
print implode(a$)
b = Explode("1,2,3.33,4.44,5.55",",")
print implode(b,", ")
print implode(b)
```

geeft dan

    Een-twee-drie-wie-niet-weg-is-is-gezien
    Eentweedriewienietwegisisgezien
    1, 2, 3.33, 4.44, 5.55
    123.334.445.55

### Versie

0.9.6.57

------------------------------------------------------------------------

[vorige](./explodex.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./left.md)
