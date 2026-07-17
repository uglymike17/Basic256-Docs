---
title: "Circle"
sidebar_label: "Circle"
---

## Circle (Statement)

### Format

**circle** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [radius_expression](./numericexpressions.md)\
**circle** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [radius_expression](./numericexpressions.md) )

### Description

Draws a circle centered at x,y with a radius r using the current pen and brush colors.

### Example

    clg

    color red
    circle 75,75,50

    penwidth 5
    color orange, yellow
    circle 150,150,75

    penwidth 10
    color blue, clear
    circle 225,225,50

draws\
![Circle](@site/static/img/wiki/circle.png)

### See Also

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)
