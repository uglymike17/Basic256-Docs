---
title: "Count"
sidebar_label: "Count"
---

## Count

### Formaat

**count** ( *hooiberg* , *naald* )\
**count** ( *hooiberg* , *naald* , *hoofdletterongevoelig*)

### Beschrijving

De functie geeft weer hoeveel keer /naald/ in de *hooiberg* werd gevonden.\
JE kan ook optioneel (niet verlpich) meegeven of je al dan niet moet opletten voor hoofdletters en kleine letters.

### Voorbeeld

``` basic4gl
print count("Hello", "lo")
print count("Buffalo buffalo buffalo.","BUFFALO",true)
```

toont

    1
    3

### Nieuw vanaf

0.9.6.55

------------------------------------------------------------------------

[vorige](./instrx.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./countx.md)
