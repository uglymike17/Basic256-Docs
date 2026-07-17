---
title: "Color"
sidebar_label: "Color"
---

## Color (Statement)

### Format

**color** color\
**color** ( color )\
**color** pen_color, brush_color\
**color** ( pen_color, brush_color )

### Description

Sets the current drawing color to *colorname* or to an ARGB value where ((a \* 256 + r) \* 256 + g) \* 256 + b. If a single color is specified both the pen and the brush will be set to the same color. There are several ways to define a color in BASIC256:

1.  one of the defined color constants (see table below);
2.  an integer to define the color where ((a \* 256 + r) \* 256 + g) \* 256 + b,
    - a - transparency 0 = transparent to 255 = opaque
    - r - red 0 = off to 255 = full on
    - g - green 0 = off to 255 = full on
    - b - blue 0 = off to 255 = full on
3.  the [rgb](./rgb.md) function passing it 3 or 4 numbers from 0-255,
4.  using an svg color name as a string [as defined by the W3C](https://www.w3.org/TR/SVG11/types.html#ColorKeywords),
5.  or using a string with a “\#” followed by 6 or 8 hexadecimal digits (“\#ff0000”, “\#a0ffffff”)

When drawing solid shapes ([Chord](./chord.md),[Circle](./circle.md),[Pie](./pie.md),[Poly](./poly.md),[Rect](./rect.md), and [Stamp](./stamp.md)) the border of the shape will be drawn with the pen color and the shape itself will be filled with the brush color. A brush color of CLEAR is used to not fill a closed shape.

If the current pen and brush are both set to CLEAR the pixels or shapes drawn will clear the pixels of the graphics output area and make them transparent. This is especially useful when creating sprites using the Spriteslice command.\
| Color Constant (Name) | ARGB Values | Integer |  |
|----|----|----|----|
| BLACK | 255, 0, 0, 0 | 4278190080 | ![Black](@site/static/img/wiki/color_black.png) |
| WHITE | 255, 255, 255, 255 | 4294506744 | ![White](@site/static/img/wiki/color_white.png) |
| RED | 255, 255, 0, 0 | 4294901760 | ![red](@site/static/img/wiki/color_red.png) |
| DARKRED | 255, 128, 0, 0 | 4286578688 | ![darkred](@site/static/img/wiki/color_darkred.png) |
| GREEN | 255, 0, 255, 0 | 4278255360 | ![green](@site/static/img/wiki/color_green.png) |
| DARKGREEN | 255, 0, 128, 0 | 4278222848 | ![darkgreen](@site/static/img/wiki/color_darkgreen.png) |
| BLUE | 255, 0, 0, 255 | 4278190335 | ![blue](@site/static/img/wiki/color_blue.png) |
| DARKBLUE | 255, 0, 0, 128 | 4278190208 | ![darkblue](@site/static/img/wiki/color_darkblue.png) |
| CYAN | 255, 0, 255, 255 | 4278255615 | ![cyan](@site/static/img/wiki/color_cyan.png) |
| DARKCYAN | 255, 0, 128, 128 | 4278222976 | ![darkcyan](@site/static/img/wiki/color_darkcyan.png) |
| PURPLE | 255, 255, 0, 255 | 4294902015 | ![purple](@site/static/img/wiki/color_purple.png) |
| DARKPURPLE | 255, 128, 0, 128 | 4286578816 | ![darkpurple](@site/static/img/wiki/color_darkpurple.png) |
| YELLOW | 255, 255, 255, 0 | 4294967040 | ![yellow](@site/static/img/wiki/color_yellow.png) |
| DARKYELLOW | 255, 128, 128 ,0 | 4286611456 | ![darkyellow](@site/static/img/wiki/color_darkyellow.png) |
| ORANGE | 255, 255, 102, 0 | 4294927872 | ![orange](@site/static/img/wiki/color_orange.png) |
| DARKORANGE | 255, 176, 61 ,0 | 4289344256 | ![darkorange](@site/static/img/wiki/color_darkorange.png) |
| GREY | 255, 164, 164 ,164 | 4288980132 | ![grey](@site/static/img/wiki/color_grey.png) |
| DARKGREY | 255, 128, 128 ,128 | 4286611584 | ![darkgrey](@site/static/img/wiki/color_darkgrey.png) |
| CLEAR | 0, 0, 0, 0 | 0 |  |

### Deprecated Form

In version 0.9.9.26 the statement form “**color** *red*, *blue*, *green*” or “**color** ( *red*, *blue*, *green* )” was deprecated and a warning will be displayed when it is encountered. It should be replaced with “**color** **rgb** ( *red*, *blue*, *green* )”.

### Example

    clg
    color rgb(128,128,128)
    rect 0,0,graphwidth, graphheight

    penwidth 5
    color green,red
    circle 100,100,50

    penwidth 1
    color rgb(255,160,160)
    circle 100,100,25

    penwidth 5
    color "firebrick","#fab856"
    rect 150,150,100,100

    color "papayawhip", "clear"
    rect 175,175,100,100

Will draw the following:\
![Color](@site/static/img/wiki/color2.png)

### See Also

[Color](./color.md), [GetBrushColor](./getbrushcolor.md), [GetColor](./getcolor.md), [Rgb](./rgb.md)

### History

|  |  |
|----|----|
| 0.9.5m | added “COLOR r,g,b” form and numeric representation of color names |
| 0.9.9.26 | Added brush color and deprecated the “COLOR r,g,b”. |
| 0.9.9.28 | Changed color values to include Alpha (transparency) and changed color constants to new ARGB values. |
| 0.9.9.45 | changed values to positive numbers following formula as documented. |
| 2.0.99.4 | Added ability to use string names and hex values for colors. |
