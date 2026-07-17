---
title: "Instrx"
sidebar_label: "Instrx"
---

## Instrx

### Formaat

**instrx** ( *hooiberg* , *regex* )\
**instrx** ( *hooiberg* , *regex* , *start* )

### Beschrijving

Deze functie kijkt na of de tekst die in de reguliere expressie *regex* staat ook wel in de hooiberg te vinden is.
\* Als dit zo is, dan geeft de functie de startpositie terug waar de *regex* eerst werd gevonden.
\* anders geeft de functie 0 terug

Zoals bij de andere [instr](./instr.md) functie mag je ook meegeven vanaf welke poisitie moet begonnen worden met de zoekopdracht

### Nota

De index begint bij 1.

### Voorbeeld

``` basic4gl
print instrx("HeLLo", "[Ll]o")
print instrx("Hello, Kitti","[Ii]",10)
```

toont dan

    4
    12

### Nieuw vanaf versie

0.9.6.56

------------------------------------------------------------------------

[vorige](./instr.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./count.md)
