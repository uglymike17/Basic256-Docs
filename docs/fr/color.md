---
title: "Color"
sidebar_label: "Color"
---

## Color

### Format

**color** *colorname*\
**color** ( *colorname* )\
**color** *red*, *blue*, *green*\
**color** ( *red*, *blue*, *green* )\
**color** *rgb_value*\
**color** ( *rgb_value* )\

### Description

Règle la couleur active comme étant la couleur appelée *colorname*; de composantes rouge, bleue et verte *red*, *blue*, *green* ; ou de valeur RGB *rgb_value*.

Il y a une couleur spéciale appelée CLEAR, de valeur 0. Si la couleur courante est réglée sur cette valeur, les pixels ou formes dessinés effaceront les pixels sur lesquels ils passeront et les rendront transparents. C’est particulièrement utile pour créer des sprites avec la commande Spriteslice.\

| Noms des couleurs et leur valeur RGB |  |  |
|----|----|----|
| Nom de la couleur | Valeur RGB | Couleur |
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
| clear | 0 (transparent) |  |

Les deux orthographes de gris sont acceptées : **grey** et **gray** désignent la même couleur, de même que **darkgrey** et **darkgray**. La casse n’a pas d’importance.

### Voir aussi

[Rgb](./rgb.md), [GetColor](./getcolor.md)

### Exemple

    clg
    color rgb(128,128,128)
    rect 0,0,graphwidth, graphheight
    color red
    circle 100,100,50
    color 255,160,160
    circle 100,100,25

Dessinera un rectangle gris avec dedans un cercle rouge et un centre rose.\
![Color](@site/static/img/wiki/en/color.png)

### Disponible à partir de la version

0.9.5m
