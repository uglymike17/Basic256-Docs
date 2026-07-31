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

Er bestaat ook een *kleurnaam* **CLEAR**, met een waarde **0**. Dit komt overeen met de gom. De tekening of de pixel wordt dan doorzichtig. Dit laatste is vooral nuttig als je met sprites werkt via de [Spriteslice](./spriteslice.md) opdracht.\

| Kleurnamen en RGB waarden |  |  |
|----|----|----|
| Kleurnaam[^1] | RGB Waarde | Kleur |
| black | 0, 0, 0 | ![black](@site/static/img/wiki/color_black.png) |
| white | 255, 255, 255 | ![white](@site/static/img/wiki/color_white.png) |
| red | 255, 0, 0 | ![red](@site/static/img/wiki/color_red.png) |
| darkred | 128, 0, 0 | ![darkred](@site/static/img/wiki/color_darkred.png) |
| green | 0, 255, 0 | ![green](@site/static/img/wiki/color_green.png) |
| darkgreen | 0, 128, 0 | ![darkgreen](@site/static/img/wiki/color_darkgreen.png) |
| blue | 0, 0, 255 | ![blue](@site/static/img/wiki/color_blue.png) |
| darkblue | 0, 0, 128 | ![darkblue](@site/static/img/wiki/color_darkblue.png) |
| cyan | 0, 255, 255 | ![cyan](@site/static/img/wiki/color_cyan.png) |
| darkcyan | 0, 128, 128 | ![darkcyan](@site/static/img/wiki/color_darkcyan.png) |
| purple | 255, 0, 255 | ![purple](@site/static/img/wiki/color_purple.png) |
| darkpurple | 128, 0, 128 | ![darkpurple](@site/static/img/wiki/color_darkpurple.png) |
| yellow | 255, 255, 0 | ![yellow](@site/static/img/wiki/color_yellow.png) |
| darkyellow | 128, 128, 0 | ![darkyellow](@site/static/img/wiki/color_darkyellow.png) |
| orange | 255, 102, 0 | ![orange](@site/static/img/wiki/color_orange.png) |
| darkorange | 176, 61, 0 | ![darkorange](@site/static/img/wiki/color_darkorange.png) |
| grey / gray | 164, 164, 164 | ![grey](@site/static/img/wiki/color_grey.png) |
| darkgrey / darkgray | 128, 128, 128 | ![darkgrey](@site/static/img/wiki/color_darkgrey.png) |
| clear | 0 (doorzichtig) |  |

Beide schrijfwijzen van grijs werken: **grey** en **gray** zijn dezelfde kleur, en zo ook **darkgrey** en **darkgray**. Hoofdletters of kleine letters maakt niet uit.

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
