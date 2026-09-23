---
title: "Chord"
sidebar_label: "Chord"
---

## Chord (Statement)

### Format

**chord** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md)\
**chord** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md) )\
**chord** [center_x_position](../en/numericexpressions.md), [center_y_position](../en/numericexpressions.md), [radius](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md)\
**chord** ( [center_x_position](../en/numericexpressions.md), [center_y_position](../en/numericexpressions.md), [radius](../en/numericexpressions.md), [start_angle](../en/numericexpressions.md), [width_angle](../en/numericexpressions.md) )

### Description

Draws an area bounded by an arc and chord (segment) of the circle or ellipse inside the rectangle defined by a bounding rectangle (defined by [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), and [height](../en/numericexpressions.md)) or by a square bounding a circle (defined by [center_x_position](../en/numericexpressions.md), [center_y_position](../en/numericexpressions.md), [radius](../en/numericexpressions.md)). The angles are defined from the 12 o’clock position in a clockwise direction in radians.

As seen in the example below a chord may be used to draw a filled circle or an ellipse by defining the angular width to go all the way around (2\*pi).

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines.

### Example

    # chord_example.kbs
    # 2012-12-29 j.m.reneau
    #
    # example of chord statement added on 0.9.9.25

    clg
    color black
    rect 140,50,20,150
    color blue
    chord 0,0,300,200,radians(-60), radians(120)
    chord 100,175,60,50,radians(90),radians(180)

    color green
    chord 200,200,25,75,0,pi*2

draws\
![chord_example](@site/static/img/wiki/chord_example.png)

### See Also

[Arc](../en/arc.md), [Chord](../en/chord.md), [Circle](../en/circle.md), [GetPenWidth](../en/getpenwidth.md), [Line](../en/line.md), [PenWidth](../en/penwidth.md), [Pie](../en/pie.md), [Plot](../en/plot.md), [Poly](../en/poly.md), [Rect](../en/rect.md), [Stamp](../en/stamp.md), [Window](../en/window.md)

### History

|            |                                         |
|------------|-----------------------------------------|
| 0.9.9.25   | New To Version                          |
| 1.99.99.65 | Added bounding square defined by circle |
