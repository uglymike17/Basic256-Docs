---
title: "Int"
sidebar_label: "Int"
---

## Int

### Formaat

int ( *expression* )

### Beschrijving

De functie converteer de *expression* naar een geheel getal.
Zowel een string als een decimaal getal worden dan geconverteerd.Lukt de conversie niet, dan wordt 0 teruggestuurd.

Deze functie is vooral nuttig samen met de [rand](./rand.md) functie.

### Voorbeeld

``` basic4gl
a= 4.53
print a
print int(a)
```

geeft dan

    4.53
    4

### Zie ook

[Float](./float.md)

------------------------------------------------------------------------

[vorige](./floor.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./log.md)
