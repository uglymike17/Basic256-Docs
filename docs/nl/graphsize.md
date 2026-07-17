---
title: "Graphsize"
sidebar_label: "Graphsize"
---

## Graphsize

### Formaat

graphsize *breedte*, *hoogte*

### Beschrijving

Verandert de grootte van het grafische venster en past dan ook de Basic-256 venster aan.
*breedte* en *grootte* worden in pixels uitgedrukt en zijn tussen 0 en … *de grootte van je scherm*.\
Dit zijn sommige standaard formaten :

- 800x600
- 1024x768

### Opmerkingen

- Als je de grootte van het grafisch venster groter maakt dan je scherm, verdwijnen knoppen en andere delen van het Basic-256 scherm. Dit maakt het verder lastig, bvb om je programma te bewaren voor je de applicatie verlaat.
- Als je Basic-256 aflsuit en je start terug op dan heb je de standaard grootte terug ( 300x300)
- je kan eigenlijk ook waarden \< 0 meegeven. Wat zie je dan nog?

Met volgend voorbeeld kleur ik het hele grafisch venster groen.\
\* Eerst wordt de grootte en breedte van het venster gezet via [graphsize](./graphsize.md),

- dan zet ik de tekenkleur op blauw via [color](./color.md).)
- Vervolgens maak ik een vierhoek met [rect](./rect.md), waarbij de grootte en de breedte overeenkomen met het grafisch venster [graphwidth](./graphwidth.md),[graphheight](./graphheight.md).

Dit alles was nodig om de grootte van het grafisch venster te tonen. Probeer gerust andere groottes.

``` basic4gl
clg
graphsize 800,600
color blue
rect 0,0,graphwidth,graphheight
```

### Zie ook

[Graphheight](./graphheight.md), [Graphwidth](./graphwidth.md)

### Nieuw vanaf

0.9.3

------------------------------------------------------------------------

[vorige](./graphheight.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./graphvisible.md)
