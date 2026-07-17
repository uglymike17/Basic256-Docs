---
title: "Rand"
sidebar_label: "Rand"
---

## Rand

### Formaat

**rand**\
**rand**()

### Beschrijft

De functie geeft een **willekeurig** getal tussen **0** en **1**. Er is een uniforme verdeling van de waarden.

### Opmerking

Om een willekeurig getal tussen 0 en 10 te krijgen, volstaat volgende combinatie: int(rand \* 10).

### Voorbeeld

``` basic4gl
for teller= 1 to 10 
eengetal = int(rand*100)
print eengetal
next teller
```

geeft bij deze test

    77
    32
    19
    75
    88
    41
    43
    23
    98
    71

maar dit zou bij jou andere getallen moeten leveren.

------------------------------------------------------------------------

[vorige](./radians.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./sin.md)
