---
title: "Sin"
sidebar_label: "Sin"
---

## Sin

### Formaat

**sin** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de sinus van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\

Meer informatie over deze functie vind je op de wiki : [sin](http://nl.wikipedia.org/wiki/Sunus)

### Voorbeeld

``` basic4gl
clg
color black
# tekent de horizontale as
line 0,150,300,150
line 150,0,150,300
# we starten hier
color blue
lastx = 0
lasty = sin(0) * 50 + 150
# teken nu de sinusoïdale
for x = 0 to 300 step 5
   angle = x / 300 * 2 * pi
   y = sin(angle) * 50 + 150
   line lastx, lasty,x, y
   lastx = x
   lasty = y
next x
```

++++geeft dan :\|
![sin.png](@site/static/img/wiki/nl/sin.png)
++++

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Degrees](./degrees.md), [Radians](./radians.md), [Cos](./cos.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./rand.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./sqr.md)
