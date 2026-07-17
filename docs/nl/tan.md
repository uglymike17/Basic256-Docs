---
title: "Tan"
sidebar_label: "Tan"
---

## Tan

### Formaat

**tan** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de tangens van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\

Meer informatie over deze functie vind je op de wiki : [tan](http://nl.wikipedia.org/wiki/Tangens)

### Voorbeeld

++++Hierna de code\|

``` basic4gl
clg
color black
#tekent een horizontale as
line 0,150,300,150
# waar beginnen we
color blue
lastx = 0
lasty = tan(0) * 50 + 150
# go over de lijn en teken de grafiek
for x = 0 to 300 step 5
   angle = x / 300 * 2 * pi
   y = tan(angle) * 50 + 150
   line lastx, lasty, x, y
   lastx = x
   lasty = y
next x
```

++++
++++geeft dan\|
![tang.png](@site/static/img/wiki/nl/tang.png)
++++

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md)

------------------------------------------------------------------------

[vorige](./sqr.md) \| [Wiskundige Functies](./mathematical.md)
