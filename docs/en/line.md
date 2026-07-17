---
title: "Line"
sidebar_label: "Line"
---

## Line (Statement)

### Format

**line** [x1_position](./integerexpressions.md), [y1_position](./integerexpressions.md), [x2_position](./integerexpressions.md), [y2_position](./integerexpressions.md)\
**line** ( [x1_position](./integerexpressions.md), [y1_position](./integerexpressions.md), [y2_position](./integerexpressions.md), [y2_position](./integerexpressions.md) )

### Description

Draws a line from the point ([x1_position](./integerexpressions.md), [y1_position](./integerexpressions.md)) to the point ([x2_position](./integerexpressions.md), [y2_position](./integerexpressions.md)) with the current pen [color](./color.md). The width of the line may be adjusted using the [PenWidth](./penwidth.md) statement.

### Example

    clg

    color black

    line 50,50,200,200

    penwidth 5
    line 100,200,200,200

    penwidth 10
    line 100,200,50,50

draws\
![Line](@site/static/img/wiki/line.png)

### See Also

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### History

|     |     |
|-----|-----|
|     |     |
