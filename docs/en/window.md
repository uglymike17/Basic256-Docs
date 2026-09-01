---
title: "Window"
sidebar_label: "Window"
---

## Window (Statement)

### Format

**window** [x1](./numericexpressions.md), [y1](./numericexpressions.md), [x2](./numericexpressions.md), [y2](./numericexpressions.md)\
**window** ( [x1](./numericexpressions.md), [y1](./numericexpressions.md), [x2](./numericexpressions.md), [y2](./numericexpressions.md) )\
**window**

### Description

Gives the graphics area coordinates of your own choosing. [x1](./numericexpressions.md),[y1](./numericexpressions.md) becomes the top left corner of the drawing area and [x2](./numericexpressions.md),[y2](./numericexpressions.md) the bottom right corner. Every drawing statement then works in those units instead of in pixels, so **window -1,-1,1,1** puts 0,0 in the middle of the screen.

**window** with no arguments goes back to plain pixels. That is the state a program starts in, and it behaves exactly as if you had said **window** 0, 0, [GraphWidth](./graphwidth.md), [GraphHeight](./graphheight.md).

The order of the arguments chooses which way each axis runs, because y1 is always at the top and y2 always at the bottom:

|                        |                                                         |
|------------------------|---------------------------------------------------------|
| **window** -1,-1,1,1   | y increases downwards, the way the screen normally works |
| **window** -1,1,1,-1   | y increases upwards, the way graph paper works           |

The same is true of x, so **window** 1,-1,-1,1 runs x from right to left.

[Pixel](./pixel.md), [MouseX](./mousex.md), [MouseY](./mousey.md), [ClickX](./clickx.md) and [ClickY](./clicky.md) read back in the same units, so you can find again what you drew.

[PenWidth](./penwidth.md) and [Font](./font.md) keep their sizes in pixels. A line does not become thicker, and lettering does not become larger, just because the window makes a unit big.

The window belongs to whatever you are drawing on, so it follows [SetGraph](./setgraph.md) onto an image and back again. The same **window** -1,-1,1,1 covers a small image and the whole graphics area alike.

A window that is not the same shape as the graphics area stretches what you draw, so a [Circle](./circle.md) comes out as an oval. A window with no width or no height is an error.

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

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [ClickX](./clickx.md), [ClickY](./clicky.md), [Font](./font.md), [GraphSize](./graphsize.md), [Line](./line.md), [MouseX](./mousex.md), [MouseY](./mousey.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Pixel](./pixel.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [SetGraph](./setgraph.md), [Stamp](./stamp.md), [Text](./text.md)

### History

|         |                |
|---------|----------------|
| 2.1.2   | New To Version |
