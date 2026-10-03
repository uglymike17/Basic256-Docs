---
title: "Graphsize"
sidebar_label: "Graphsize"
---

## Graphsize (Statement)

### Format

**graphsize** [graphic_width](./integerexpressions.md), [graphic_height](./integerexpressions.md)\
**graphsize** ( [graphic_width](./integerexpressions.md), [graphic_height](./integerexpressions.md) )\
**graphsize** [graphic_width](./integerexpressions.md), [graphic_height](./integerexpressions.md), [scale](./floatexpressions.md)\
**graphsize** ( [graphic_width](./integerexpressions.md), [graphic_height](./integerexpressions.md), [scale](./floatexpressions.md) )

### Description

Changes the size of the graphics display window and redraws the BASIC256 application.

graphic_width and graphic_height set the size of the drawing area in pixels. If either is zero or negative, the default size of 500 by 500 is used.

The optional scale magnifies how the drawing area is shown on screen without changing its size. With graphsize 200, 150, 3 the program still draws on a 200 by 150 area, so [Graphwidth](./graphwidth.md) returns 200 and the point 199, 149 is still the bottom-right corner, but the window is 600 by 450 and each pixel appears as a 3 by 3 block. The mouse functions ([Mousex](./mousex.md), [Mousey](./mousey.md), [Clickx](./clickx.md), [Clicky](./clicky.md)) also report positions on the 200 by 150 area, so a program never has to divide by the scale itself. Fractions are allowed: 1.5 shows the area half as large again and 0.5 shows it at half size. Leaving out scale is the same as a scale of 1. Scale must not be zero.

A negative scale turns the display upside down (rotated by 180 degrees) as well as magnifying it by the size of the number, so -1 shows the picture rotated at its normal size. Drawing coordinates and mouse positions are unchanged.

The scale is combined with the Graphics Window Zoom chosen in the View menu: a scale of 2 viewed at a 2:1 zoom is shown four times as large. A program can set the scale but cannot read or change the user's zoom.

### Example

A small canvas shown large, for chunky pixel art:

    graphsize 32, 32, 12
    clg white
    color red
    rect 8, 8, 16, 16
    color black
    plot 12, 13
    plot 19, 13
    line 12, 20, 19, 20
    print graphwidth + " x " + graphheight

prints\
32 x 32\
and shows the 32 by 32 drawing in a 384 by 384 window (at the 1:1 View zoom).

Mouse positions stay on the drawing area, whatever the scale:

    graphsize 100, 100, 4
    clg
    color blue
    while true
        if clickb then
            circle clickx, clicky, 3
            print clickx + ", " + clicky
            clickclear
        end if
    end while

A click in the middle of the 400 by 400 window prints 50, 50.

A negative scale shows the same drawing rotated:

    graphsize 200, 100, -2
    clg
    color green
    text 10, 10, "Upside down"

### See Also

[Clg](./clg.md), [FastGraphics](./fastgraphics.md), [Graphheight](./graphheight.md), [Graphsize](./graphsize.md), [Graphwidth](./graphwidth.md), [Mousex](./mousex.md), [Mousey](./mousey.md), [Refresh](./refresh.md)

### History

|       |                |
|-------|----------------|
| 0.9.3 | New To Version |
