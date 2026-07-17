---
title: "Pie"
sidebar_label: "Pie"
---

## Pie (Statement)

### Format

**pie** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md)\
**pie** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md) )\
**pie** [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md)\
**pie** ( [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md), [start_angle](./numericexpressions.md), [width_angle](./numericexpressions.md) )

### Description

Draws a pie shaped slice inside the rectangle defined by a bounding rectangle (defined by [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), and [height](./numericexpressions.md)) or by a square bounding a circle (defined by [center_x_position](./numericexpressions.md), [center_y_position](./numericexpressions.md), [radius](./numericexpressions.md)). The angles are defined from the 12 o’clock position in a clockwise direction in radians.

### Example

    # pie_chart.kbs
    # 2012-12-29 j.m.reneau
    #
    # example of pie statement added on 0.9.9.25

    dim data(5)
    data = {1,3,5,7,10}
    dim colors(5)
    colors = {red,blue,green,yellow,cyan}
    total = 0
    for n = 0 to data[?]-1
       total += data[n]
    next n

    clg
    font "Arial", 20,100
    startangle = 0
    for n = 0 to data[?]-1
       # calculate the with of the pie slice in radians
       slicesize = 2*pi*data[n]/total
       color colors[n]
       pie 50,50,200,200,startangle,slicesize
       # draw the value's number  outside the pie
       text 140+sin(startangle+slicesize*.5)*120, 140-cos(startangle+slicesize*.5)*120, data[n]
       startangle += slicesize
    next n

draws\
![Pie_Chart](@site/static/img/wiki/pie_chart.png)

### See Also

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### History

|            |                                         |
|------------|-----------------------------------------|
| 0.9.9.25   | New To Version                          |
| 1.99.99.65 | Added bounding square defined by circle |
