---
title: "Decimal"
sidebar_label: "Decimal"
---

## Decimal

### Formaat

**decimal** ( *uitdrukking* )\
**decimal** *uitdrukking*

### Beschrijving

Deze functie bepaalt het maximum aantal cijfers na de komma die op het scherm worden getoond ( het aantal decimalen)\
*uitdrukking* is een waarde van 0 tot 16 .\
Opgelet :!: de berekeningen van de computer bljiven dezelfde precisie behouden, alleen het tonen op het scherm wordt aangepast. Dit is normaal 6 cijfers na de kommma.

### Voorbeeld

``` basic4gl
print 2/3
decimal 10
print 2/3
decimal 15
print 2/3
```

wordt dan

    0.666667
    0.6666666667
    0.666666666666667

### Zie ook

[Print](./print.md), [String](./string.md)

### Nieuw vanaf

0.9.6w

------------------------------------------------------------------------

[vorige](./chr.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./instr.md)
