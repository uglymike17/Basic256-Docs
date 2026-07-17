---
title: "Float"
sidebar_label: "Float"
---

## Float

### Formaat

float ( *expression* )

### Beschrijving

De functie converteert *expression* naar een decimaal getal.\
Float converteert zowel een integer getal als een string naar een decimaal getal.\
Indien de conversie niet lukt, wordt nul weergegeven !

### Zie Ook

[Int](./int.md)

``` basic4gl
a$= "5/10"
print a$
print float(a$)
```

toont

    5/10
    5

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./exp.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./floor.md)
