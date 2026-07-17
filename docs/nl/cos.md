---
title: "Cos"
sidebar_label: "Cos"
---

## Cos

### Formaat

**cos** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de cosinus van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\

Meer informatie over deze functie vind je op de wiki : [cos](http://nl.wikipedia.org/wiki/Cosinus)

### Voorbeeld

``` basic4gl
clg
color black
# tekent de assen
line 0,150,300,150
line 150,0,150,300
# we starten hier
color blue
lastx = 0
lasty = cos(0) * 50 + 150
# now step across the line and draw
for x = 0 to 300 step 5
   angle = x / 300 * 2 * pi
   y = cos(angle) * 50 + 150
   line lastx, lasty,x, y
   lastx = x
   lasty = y
next x
```

++++geeft dan :\|
![cosi.png](@site/static/img/wiki/nl/cosi.png)
++++

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./ceil.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./degrees.md)
