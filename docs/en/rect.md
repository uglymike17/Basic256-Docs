---
title: "Rect"
sidebar_label: "Rect"
---

## Rect (Statement)

### Format

**rect** [x_position](./numericexpressions.md),[y_position](./numericexpressions.md),[width](./numericexpressions.md),[height](./numericexpressions.md)\
**rect** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md) )

### Description

Draws a [width](./numericexpressions.md) x [height](./numericexpressions.md) pixel rectangle using the current pen and brush colors. The top left corner is located at [x_position](./numericexpressions.md),[y_position](./numericexpressions.md).

### Example

    clg

    color red
    rect 50,50,150,150

    penwidth 10
    color blue, yellow
    rect 100,100,150,150

    color green, clear
    rect 10,130,280,40

draws\
![rect.png](@site/static/img/wiki/rect.png)

### See Also

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### History

|     |     |
|-----|-----|
|     |     |
