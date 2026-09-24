---
title: "Color Constants"
sidebar_label: "Color Constants"
---

| Color Constant (Name) | ARGB Values | HSV Values | Integer |  |
|----|----|----|----|----|
| BLACK | 255, 0, 0, 0 | 0, 0, 0 | 4278190080 | ![Black](@site/static/img/wiki/color_black.png) |
| WHITE | 255, 255, 255, 255 | 0, 0, 100 | 4294967295 | ![White](@site/static/img/wiki/color_white.png) |
| RED | 255, 255, 0, 0 | 0, 100, 100 | 4294901760 | ![red](@site/static/img/wiki/color_red.png) |
| DARKRED | 255, 128, 0, 0 | 0, 100, 50 | 4286578688 | ![darkred](@site/static/img/wiki/color_darkred.png) |
| GREEN | 255, 0, 255, 0 | 120, 100, 100 | 4278255360 | ![green](@site/static/img/wiki/color_green.png) |
| DARKGREEN | 255, 0, 128, 0 | 120, 100, 50 | 4278222848 | ![darkgreen](@site/static/img/wiki/color_darkgreen.png) |
| BLUE | 255, 0, 0, 255 | 240, 100, 100 | 4278190335 | ![blue](@site/static/img/wiki/color_blue.png) |
| DARKBLUE | 255, 0, 0, 128 | 240, 100, 50 | 4278190208 | ![darkblue](@site/static/img/wiki/color_darkblue.png) |
| CYAN | 255, 0, 255, 255 | 180, 100, 100 | 4278255615 | ![cyan](@site/static/img/wiki/color_cyan.png) |
| DARKCYAN | 255, 0, 128, 128 | 180, 100, 50 | 4278222976 | ![darkcyan](@site/static/img/wiki/color_darkcyan.png) |
| PURPLE | 255, 255, 0, 255 | 300, 100, 100 | 4294902015 | ![purple](@site/static/img/wiki/color_purple.png) |
| DARKPURPLE | 255, 128, 0, 128 | 300, 100, 50 | 4286578816 | ![darkpurple](@site/static/img/wiki/color_darkpurple.png) |
| YELLOW | 255, 255, 255, 0 | 60, 100, 100 | 4294967040 | ![yellow](@site/static/img/wiki/color_yellow.png) |
| DARKYELLOW | 255, 128, 128 ,0 | 60, 100, 50 | 4286611456 | ![darkyellow](@site/static/img/wiki/color_darkyellow.png) |
| ORANGE | 255, 255, 102, 0 | 24, 100, 100 | 4294927872 | ![orange](@site/static/img/wiki/color_orange.png) |
| DARKORANGE | 255, 176, 61 ,0 | 20.8, 100, 69 | 4289740032 | ![darkorange](@site/static/img/wiki/color_darkorange.png) |
| GREY / GRAY | 255, 164, 164 ,164 | 0, 0, 64.3 | 4288980132 | ![grey](@site/static/img/wiki/color_grey.png) |
| DARKGREY / DARKGRAY | 255, 128, 128 ,128 | 0, 0, 50 | 4286611584 | ![darkgrey](@site/static/img/wiki/color_darkgrey.png) |
| CLEAR | 0, 0, 0, 0 | 0, 0, 0, 0 | 0 |  |

The HSV values are the hue, saturation and value to give [hsv](./hsv.md) to get exactly the same colour back (CLEAR has a fourth, the alpha). The ARGB values are the alpha, red, green and blue, the last three being what [rgb](./rgb.md) takes.

Both spellings of grey are accepted, in any mix of upper and lower case: **GREY** and **GRAY** are the same constant, and so are **DARKGREY** and **DARKGRAY**. Every other constant above has one spelling only.
