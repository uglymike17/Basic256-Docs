---
title: "Pixel"
sidebar_label: "Pixel"
---

## Pixel (Function)

### Format

**pixel** ([x_position](./numericexpressions.md), [y_position](./numericexpressions.md) )

returns *rgb_expr*

### Description

Returns the [RGB](./rgb.md) value of the pixel at the [x_position](./numericexpressions.md) and [y_position](./numericexpressions.md) coordinate. If the pixels has not been set since the last [Clg](./clg.md) command or was drawn with the color CLEAR a -1 will be returned.

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

[Pixel](./pixel.md)

### History

|         |                |
|---------|----------------|
| 0.9.5m  | New To Version |
| 2.0.0.4 | Added example  |
