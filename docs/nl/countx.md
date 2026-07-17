---
title: "Countx"
sidebar_label: "Countx"
---

## Countx

### Formaat

**count** ( *hooiberg* , *regex* )\

### Beschrijving

De functie geeft weer hoeveel keer de reguliere expressie *regex* in de *hooiberg* werd gevonden.

### Voorbeeld

``` basic4gl
print countx("Hello", "[hH]")
print countx("Buffalo buffalo buffalo.","[Bb]uffalo")
```

toont

    1
    3

### Nieuw vanaf

0.9.6.56

------------------------------------------------------------------------

[vorige](./count.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./explode.md)
