---
title: "Key"
sidebar_label: "Key"
---

## Key

### Formaat

key\
key()

### Beschrijving

Geeft onmiddellijk de gehele waarde terug die overeenkomt met de toets die op het toestenbord werd ingedrukt.
Als geen enkele toets werd ingedrukt sinds de laatste keer de opdracht werd opgeroepen, dan wordt 0 teruggestuurd.

### Opemerking

``` basic4gl
if key = 47 then print key
```

zal niet het verwachte resultaat geven, omdat het twee keer na elkdaar de opdracht uitvoert, en telkens een verschillend resultaat teruggeeft.

Dit geeft echter het resultaat dat je verwacht:

``` basic4gl
a = key
if a = 47 then print a
```

------------------------------------------------------------------------

[vorige](./input.md) \| [klavier en tekst](./keyboard.md) \| [volgende](./print.md)
