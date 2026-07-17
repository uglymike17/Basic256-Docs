---
title: "Poly"
sidebar_label: "Poly"
---

## Poly

### Formaat

**poly** *numerieke array variabele*\
**poly** {x<sub>1</sub>, y<sub>1</sub>, x<sub>2</sub>, y<sub>2</sub>, x<sub>3</sub>, y<sub>3</sub> …}

### Beschrijving

De functie tekent een veelhoek ( polygoon).\
De hoeken van de veelhoek worden vastgelegd dankzij de (x,y) coördinaten die in de *numerieke array variabele* worden meegegeven. De array moet dus telkens een even aantal getallen bevatten !!!!\

Je kan de coördinaten ook onmiddellijk meegeven met de [poly](./poly.md) functie door de haakjes { }.

### Opmerking

Het aantal punten werd als parameter van het poly statement weggenomen sinds de versie 0.9.4

### Zie Ook

[Stamp](./stamp.md)

### Voorbeeld

``` basic4gl
color blue
rect 0,0,300,300
color green
dim driehoek(6) # met 3 maal 2 = 6 getallen
driehoek = {100, 180, 150, 80, 200,180}
poly driehoek
```

``` basic4gl
color blue
rect 0,0,300,300
color green
poly {100, 180, 150, 80, 200,180}
```

Beide programma’s tonen hetzelfde resultaat:\
![poly.png](@site/static/img/wiki/nl/poly.png)

------------------------------------------------------------------------

[vorige](./plot.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./rect.md)
