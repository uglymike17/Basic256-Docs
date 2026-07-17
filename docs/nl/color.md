---
title: "Color"
sidebar_label: "Color"
---

## Color

### Formaat

**color** *kleurnaam*\
**color** ( *kleurnaam* )\
**color** *rood*, *blauw*, *groen*\
**color** ( *rood*, *blauw*, *groen* )\
**color** *rgb_waarde*\
**color** ( *rgb_waarde* )\

### Beschrijving

Zet de waarde van het *potlood*

- in de opgegeven *kleurnaam*
- in een RGB kleur die samengesteld is door een waarde van *rood*, *blauw*, *groen*
- of in een kleur opgegeven door de rgb waarde.

Er bestaat ook een *kleurnaam* **CLEAR**, met een waarde **-1**. Dit komt overeen met de gom. De tekening of de pixel wordt dan doorzichtig. Dit laatste is vooral nuttig als je met sprites werkt via de [Spriteslice](./spriteslice.md) opdracht.\

| Kleurnamen en RGB waarden |  |  |
|----|----|----|
| Kleurnaam[^1] | RGB Waarde |  |
| black | 0, 0, 0 | \<hi \#000000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| white | 255, 255, 255 | \<hi \#FFFFFF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| red | 255, 0, 0 | \<hi \#FF0000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkred | 128, 0, 0 | \<hi \#800000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| green | 0, 255, 0 | \<hi \#00FF00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkgreen | 0, 128, 0 | \<hi \#008000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| blue | 0, 0, 255 | \<hi \#0000FF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkblue | 0, 0, 128 | \<hi \#000080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| cyan | 0, 255, 255 | \<hi \#00FFFF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkcyan | 0, 128, 128 | \<hi \#008080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| purple | 255, 0, 255 | \<hi \#FF00FF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkpurple | 128, 0, 128 | \<hi \#800080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| yellow | 255, 255, 0 | \<hi \#FFFF00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkyellow | 128, 128 ,0 | \<hi \#808000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| orange | 255, 102, 0 | \<hi \#FF6600\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkorange | 176, 61 ,0 | \<hi \#B03D00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| grey | 164, 164 ,164 | \<hi \#A4A4A4\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkgrey | 128, 128 ,128 | \<hi \#808080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| clear | -1 | \~~SP\~~ |

### Zie ook

[Rgb](./rgb.md), [GetColor](./getcolor.md)

### Voorbeeld

``` basic4gl
clg
color rgb(128,128,128)
rect 0,0,graphwidth, graphheight
color red
circle 100,100,50
color 255,160,160
circle 100,100,25
```

tekent een grijs vierkant met een rode stip ( cirkel) met een roze middelpunt.

![Color](@site/static/img/wiki/en/color.png)

### Nieuw vanaf

0.9.5m

------------------------------------------------------------------------

[Tekenen en kleuren](./a_real_dali.md) \| [volgende](./rgb.md)

[^1]: kleur moet in het Engels opgegeven worden
