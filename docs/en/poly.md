---
title: "Poly"
sidebar_label: "Poly"
---

## Poly (Statement)

### Format

**poly** [variable\[](./arrays.md)\]\
**poly** ( [variable\[](./arrays.md)\] )\
**poly** [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md)\
**poly** [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md)

### Description

Draws a polygon. The sides of the polygon are defined by the values stored in the array, which should be stored as x,y pairs, sequentially. The length of a one dimensional array/2 or the number of rows on a two dimensional array will define the number of points.

One dimensional arrays and lists must have at least six values and an even number of values. A two dimensional array may have 3 or more rows but must have two columns.

### Example

    # using an array
    clg blue
    color green
    dim tri = {100, 100, 200, 200, 100, 200}
    poly tri[]

    # using a list
    clg blue
    color green
    poly {{100, 100}, {200, 200}, {100, 200}}

Both programs use the poly statement to draw the following:\
![poly.png](@site/static/img/wiki/en/poly.png)

### See Also

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### History

|  |  |
|----|----|
| 0.9.4 | number of points in the array argument was removed from the poly statement |
| 1.99.99.55 | two dimensional list support was added |
| 1.99.99.72 | added required \[\] to passing variable array |
