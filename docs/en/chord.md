---
title: "Chord"
sidebar_label: "Chord"
---

## Chord (Statement)

### Format

**chord** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md)\
**chord** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md) )\
**chord** [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md)\
**chord** ( [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md) )

### Description

Draws an area bounded by an arc and chord (segment) of the circle or ellipse inside the rectangle defined by a bounding rectangle (defined by [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), and [height](./numericexpressions.md)) or by a square bounding a circle (defined by [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md)). The angles are defined from the 12 o’clock position in a clockwise direction in radians.

As seen in the example below a chord may be used to draw a filled circle or an ellipse by defining the angular width to go all the way around (2\*pi).

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

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### History

|            |                                         |
|------------|-----------------------------------------|
| 0.9.9.25   | New To Version                          |
| 1.99.99.65 | Added bounding square defined by circle |
