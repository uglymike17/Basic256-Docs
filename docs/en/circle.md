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

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](./window.md) has been set, in which case they are in the units that window defines.

### Example

    clg

    color red
    circle 125,125,80

    penwidth 5
    color orange, yellow
    circle 250,250,125

    penwidth 10
    color blue, clear
    circle 375,375,80

draws\
![Circle](@site/static/img/wiki/circle.png)

### See Also

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md), [Window](./window.md)
