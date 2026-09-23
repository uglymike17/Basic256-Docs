---
title: "Arc"
sidebar_label: "Arc"
---

## Arc (Statement)

### Format

**arc** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md)\
**arc** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md) )\
**arc** [center_x_position](../en/numericexpressions.md), [center_y_position](../en/numericexpressions.md), [radius](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md)\
**arc** ( [center_x_position](../en/numericexpressions.md), [center_y_position](../en/numericexpressions.md), [radius](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md) )

### Description

Draws an arc (part of a circle or ellipse) inside the rectangle defined by a bounding rectangle (defined by [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), and [height](../en/numericexpressions.md)) or by a square bounding a circle (defined by [center_x_position](../en/numericexpressions.md), [center_y_position](../en/numericexpressions.md), [radius](../en/numericexpressions.md)). The angles are defined from the 12 o’clock position in a clockwise direction in radians.

Arc may also be used to draw an un-filled circle or an ellipse by defining the angular width to go all the way around (2\*pi).

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines.

### Example

    # arc_example.kbs
    # 2012-12-29 j.m.reneau
    #
    # example of arc statement added on 0.9.9.25

    clg
    color black
    for t = 1 to 100 step 3
       arc 150-t,150-t,t*2,t*2,0,pi*2*t/100
    next t

draws\
![arc_example](@site/static/img/wiki/arc_example.png)

### See Also

[Arc](../en/arc.md), [Chord](../en/chord.md), [Circle](../en/circle.md), [GetPenWidth](../en/getpenwidth.md), [Line](../en/line.md), [PenWidth](../en/penwidth.md), [Pie](../en/pie.md), [Plot](../en/plot.md), [Poly](../en/poly.md), [Rect](../en/rect.md), [Stamp](../en/stamp.md), [Window](../en/window.md)

### History

|            |                                         |
|------------|-----------------------------------------|
| 0.9.9.25   | New To Version                          |
| 1.99.99.65 | Added bounding square defined by circle |
