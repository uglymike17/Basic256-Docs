---
title: "Graphheight"
sidebar_label: "Graphheight"
---

## Graphheight

### Formaat

graphheight\
graphheight()

### Beschrijving

Geeft de hoogte terug (y dimensie) van het huidig grafisch venster.

### Voorbeeld

Met volgend voorbeeld kleur ik het hele grafisch venster groen.\
\* Eerst wordt de grootte en breedte van het venster gezet via [graphsize](./graphsize.md),

- dan zet ik de tekenkleur op groen via [color](./color.md).
- Vervolgens maak ik een vierhoek met [rect](./rect.md), waarbij de hoogte overeenkomt met het grafisch venster, maar niet de breedte. Die blijft op 50 staan.

Je kan ook de grootte van de vierkant met getallen invullen, maar dan wordt geen rekening gehouden met het grafisch venster. Als je dan een groter of kleiner venster maakt, klopt je tekening niet meer.

``` basic4gl
clg
graphsize 100,100
color green
rect 0,0,50,graphheight
```

### Zie ook

[Graphsize](./graphsize.md), [Graphwidth](./graphwidth.md)

### Nieuw vanaf

0.9.3

------------------------------------------------------------------------

[vorige](./fastgraphics.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./graphsize.md)
