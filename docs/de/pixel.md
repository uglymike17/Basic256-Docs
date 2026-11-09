---
title: "Pixel"
sidebar_label: "Pixel"
---

## Pixel (Function)

### Format

**pixel** ([x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md) )

returns *rgb_expr*

### Description

Returns the colour of the pixel at the [x_position](../en/numericexpressions.md) and [y_position](../en/numericexpressions.md) coordinate, as the same kind of number [Rgb](../en/rgb.md) makes, alpha included. A pixel that has not been drawn on since the last [Clg](../en/clg.md), or that was drawn with the colour CLEAR, is transparent and returns 0. White returns -1.

**pixel** reads the graphics output, or the image that [SetGraph](../en/setgraph.md) is drawing on. It sees only what was drawn: sprites float above the drawing and are left out (use [GetSlice](../en/getslice.md) to read them too). A half-transparent colour drawn over something else is read back as the colour that results. A point outside the graphics output gives a meaningless number (12345), so keep the coordinates inside it.

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines and the nearest pixel is read.

### Sample Program

The following sample program shows how to use the binary and operation and integer division to extract the red, blue, and green values from the number returned by pixel.

    color red
    rect 0,0,100,100

    color rgb(100,50,150)
    rect 100,100,100,100

    color white
    rect 200,200,100,100

    while true
        c = pixel(mousex, mousey)
        r = (c & 0xff0000) \ 0x10000
        g = (c & 0xff00) \ 0x100
        b = (c & 0xff)
        print r,g,b
        pause .5
    end while

### See Also

[GetSlice](../en/getslice.md), [ImagePixel](../en/imagepixel.md), [Pixel](../en/pixel.md), [Rgb](../en/rgb.md), [SetGraph](../en/setgraph.md), [Window](../en/window.md)

### History

|         |                |
|---------|----------------|
| 0.9.5m  | New To Version |
| 2.0.0.4 | Added example  |
