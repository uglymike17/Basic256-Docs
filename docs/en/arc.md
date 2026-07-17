---
title: "Arc"
sidebar_label: "Arc"
---

## Arc (Statement)

### Format

**arc** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md)\
**arc** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md) )\
**arc** [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md)\
**arc** ( [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md) )

### Description

Draws an arc (part of a circle or ellipse) inside the rectangle defined by a bounding rectangle (defined by [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), and [height](./numericexpressions.md)) or by a square bounding a circle (defined by [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md)). The angles are defined from the 12 o’clock position in a clockwise direction in radians.

Arc may also be used to draw an un-filled circle or an ellipse by defining the angular width to go all the way around (2\*pi).

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

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### History

|            |                                         |
|------------|-----------------------------------------|
| 0.9.9.25   | New To Version                          |
| 1.99.99.65 | Added bounding square defined by circle |
