---
title: "Stamp"
sidebar_label: "Stamp"
---

## Stamp (Statement)

### Format

**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [variable\[](./arrays.md)\]\
**stamp** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [variable\[](./arrays.md)\] )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md)\
**stamp** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md)\
**stamp** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md) )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [variable\[](./arrays.md)\]\
**stamp** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [variable\[](./arrays.md)\] )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md)\
**stamp** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md)\
**stamp** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md) )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expr](./floatexpressions.md), [variable\[](./arrays.md)\]\
**stamp** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expr](./floatexpressions.md), [variable\[](./arrays.md)\] )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expr](./floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md)\
**stamp** ([x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expr](./floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) )\
**stamp** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expr](./floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md)\
**stamp** ([x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expr](./floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md) )

### Description

Draws a polygon. The sides of the polygon are defined by the values stored in the array, which should be stored as x,y pairs, sequentially. The length of a one dimensional array/2 or the number of rows on a two dimensional array will define the number of points.

One dimensional arrays and lists must have at least six values and an even number of values. A two dimensional array may have 3 or more rows but must have two columns.

### Description

Draws a polygon with top left corner (origin) at x, y. Optionally scales size of polygon by the defined scale (1=normal size). Also optionally rotates the polygon by a specified angle around the origin (clockwise in radians). The vertices of the polygon are defined by the values in an array, which should be stored as x,y pairs, sequentially. The length of the array/2 will define the number of points. A stamped polygon can also be specified using a list of x,y pairs enclosed in curly braces {}.

### Example

Both of the code blocks below will draw a pair of green triangles on the graphics window:

    clg blue
    rect 0,0,300,300
    color green
    tri = {{0, 0}, {100, 100}, {0, 100}}
    # stamp the triangle at 0,0 (full size)
    stamp 100, 100, tri[]
    # stamp the triangle at 200,100 (half size)
    stamp 200, 100, .5, tri[]

    clg blue
    rect 0,0,300,300
    color green
    # stamp the triangle at 0,0 (full size)
    stamp 100, 100, {{0, 0}, {100, 100}, {0, 100}}
    # stamp the triangle at 200,100 (half size)
    stamp 200, 100, .5, {0, 0, 100, 100, 0, 100}

Both programs will draw:\
![stamp.png](@site/static/img/wiki/en/stamp.png)

### See Also

[Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [GetPenWidth](./getpenwidth.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md)

### History

|            |                                               |
|------------|-----------------------------------------------|
| 0.9.4      | New To Version                                |
| 1.99.99.55 | two dimensional list support was added        |
| 1.99.99.72 | added required \[\] to passing variable array |
