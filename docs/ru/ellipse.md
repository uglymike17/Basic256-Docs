---
title: "Ellipse"
sidebar_label: "Ellipse"
---

## Ellipse (Statement)

### Format

**ellipse** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md)\
**ellipse** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md) )

### Description

Draws an ellipse using the current pen and brush colors. The ellipse fills the [width](../en/numericexpressions.md) x [height](../en/numericexpressions.md) pixel rectangle whose top left corner is at [x_position](../en/numericexpressions.md),[y_position](../en/numericexpressions.md) — the same bounding box that [Rect](../en/rect.md) would draw.

The outline is drawn in the current pen color and thickness (see [PenWidth](../en/penwidth.md)) and the interior is filled with the current brush color (see [Color](../en/color.md)). Use a brush color of CLEAR to draw an un-filled ellipse.

When [width](../en/numericexpressions.md) and [height](../en/numericexpressions.md) are equal the result is a circle. Note that [Circle](../en/circle.md) is positioned by its center point and radius, while **ellipse** is positioned by the top left corner of a bounding box.

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines.

### Example

    clg

    color red
    ellipse 75,75,150,75

    penwidth 5
    color orange, yellow
    ellipse 120,120,200,100

    penwidth 10
    color blue, clear
    ellipse 200,200,120,60

draws\
![Ellipse](@site/static/img/wiki/ellipse.png)

### See Also

[Arc](../en/arc.md), [Chord](../en/chord.md), [Circle](../en/circle.md), [GetPenWidth](../en/getpenwidth.md), [Line](../en/line.md), [PenWidth](../en/penwidth.md), [Pie](../en/pie.md), [Plot](../en/plot.md), [Poly](../en/poly.md), [Rect](../en/rect.md), [Stamp](../en/stamp.md), [Window](../en/window.md)

### Availability

Present in BASIC-256 but not previously documented. Described here from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256) source.
