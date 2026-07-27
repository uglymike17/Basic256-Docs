---
title: "Ellipse"
sidebar_label: "Ellipse"
---

## Ellipse (Statement)

### Format

**ellipse** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md)\
**ellipse** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md) )

### Description

Draws an ellipse using the current pen and brush colors. The ellipse fills the [width](./numericexpressions.md) x [height](./numericexpressions.md) pixel rectangle whose top left corner is at [x_position](./numericexpressions.md),[y_position](./numericexpressions.md) — the same bounding box that [Rect](./rect.md) would draw.

The outline is drawn in the current pen color and thickness (see [PenWidth](./penwidth.md)) and the interior is filled with the current brush color (see [Color](./color.md)). Use a brush color of CLEAR to draw an un-filled ellipse.

When [width](./numericexpressions.md) and [height](./numericexpressions.md) are equal the result is a circle. Note that [Circle](./circle.md) is positioned by its center point and radius, while **ellipse** is positioned by the top left corner of a bounding box.

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

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### Availability

Present in BASIC-256 but not previously documented. Described here from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256) source.
