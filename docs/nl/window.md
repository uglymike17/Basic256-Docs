---
title: "Window"
sidebar_label: "Window"
---

## Window (Statement)

### Format

**window** [x1](../en/numericexpressions.md), [y1](../en/numericexpressions.md), [x2](../en/numericexpressions.md), [y2](../en/numericexpressions.md)\
**window** ( [x1](../en/numericexpressions.md), [y1](../en/numericexpressions.md), [x2](../en/numericexpressions.md), [y2](../en/numericexpressions.md) )\
**window**

### Description

Gives the graphics area coordinates of your own choosing. [x1](../en/numericexpressions.md),[y1](../en/numericexpressions.md) becomes the top left corner of the drawing area and [x2](../en/numericexpressions.md),[y2](../en/numericexpressions.md) the bottom right corner. Every drawing statement then works in those units instead of in pixels, so **window -1,-1,1,1** puts 0,0 in the middle of the screen.

**window** with no arguments goes back to plain pixels. That is the state a program starts in, and it behaves exactly as if you had said **window** 0, 0, [GraphWidth](../en/graphwidth.md), [GraphHeight](../en/graphheight.md).

The order of the arguments chooses which way each axis runs, because y1 is always at the top and y2 always at the bottom:

|                        |                                                         |
|------------------------|---------------------------------------------------------|
| **window** -1,-1,1,1   | y increases downwards, the way the screen normally works |
| **window** -1,1,1,-1   | y increases upwards, the way graph paper works           |

The same is true of x, so **window** 1,-1,-1,1 runs x from right to left.

[Pixel](../en/pixel.md), [MouseX](../en/mousex.md), [MouseY](../en/mousey.md), [ClickX](../en/clickx.md) and [ClickY](../en/clicky.md) read back in the same units, so you can find again what you drew.

[PenWidth](../en/penwidth.md) and [Font](../en/font.md) keep their sizes in pixels. A line does not become thicker, and lettering does not become larger, just because the window makes a unit big.

The window belongs to whatever you are drawing on, so it follows [SetGraph](../en/setgraph.md) onto an image and back again. The same **window** -1,-1,1,1 covers a small image and the whole graphics area alike.

A window that is not the same shape as the graphics area stretches what you draw, so a [Circle](../en/circle.md) comes out as an oval. A window with no width or no height is an error.

### Example

    graphsize 300,300
    clg
    window -1.5, 1.5, 1.5, -1.5

    color black
    line -1.5, 0, 1.5, 0
    line 0, -1.5, 0, 1.5

    color red, clear
    penwidth 2
    circle 0, 0, 1

    color blue
    penwidth 1
    for a = -1.5 to 1.5 step 0.005
       plot a, sin(a * 3) * 0.7
    next a

draws\
![Window](@site/static/img/wiki/window.png)

The circle has a radius of 1 and the curve runs from -1.5 to 1.5, with 0,0 in the middle and y increasing upwards. Nothing in the program needs to know how many pixels wide the graphics area is.

### See Also

[Arc](../en/arc.md), [Chord](../en/chord.md), [Circle](../en/circle.md), [ClickX](../en/clickx.md), [ClickY](../en/clicky.md), [Font](../en/font.md), [GraphSize](../en/graphsize.md), [Line](../en/line.md), [MouseX](../en/mousex.md), [MouseY](../en/mousey.md), [PenWidth](../en/penwidth.md), [Pie](../en/pie.md), [Pixel](../en/pixel.md), [Plot](../en/plot.md), [Poly](../en/poly.md), [Rect](../en/rect.md), [SetGraph](../en/setgraph.md), [Stamp](../en/stamp.md), [Text](../en/text.md)

### History

|         |                |
|---------|----------------|
| 2.1.2   | New To Version |
