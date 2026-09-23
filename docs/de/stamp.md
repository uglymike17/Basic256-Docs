---
title: "Stamp"
sidebar_label: "Stamp"
---

## Stamp (Statement)

### Format

**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [variable\[](../en/arrays.md)\]\
**stamp** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [variable\[](../en/arrays.md)\] )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md)\
**stamp** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md)\
**stamp** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md) )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [variable\[](../en/arrays.md)\]\
**stamp** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [variable\[](../en/arrays.md)\] )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md)\
**stamp** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md)\
**stamp** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md) )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expr](../en/floatexpressions.md), [variable\[](../en/arrays.md)\]\
**stamp** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expr](../en/floatexpressions.md), [variable\[](../en/arrays.md)\] )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expr](../en/floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md)\
**stamp** ([x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expr](../en/floatexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) )\
**stamp** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expr](../en/floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md)\
**stamp** ([x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expr](../en/floatexpressions.md), [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md) )

### Description

Draws a polygon. The sides of the polygon are defined by the values stored in the array, which should be stored as x,y pairs, sequentially. The length of a one dimensional array/2 or the number of rows on a two dimensional array will define the number of points.

One dimensional arrays and lists must have at least six values and an even number of values. A two dimensional array may have 3 or more rows but must have two columns.

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines.

### Description

Draws a polygon with top left corner (origin) at x, y. Optionally scales size of polygon by the defined scale (1=normal size). Also optionally rotates the polygon by a specified angle around the origin (clockwise in radians). The vertices of the polygon are defined by the values in an array, which should be stored as x,y pairs, sequentially. The length of the array/2 will define the number of points. A stamped polygon can also be specified using a list of x,y pairs enclosed in curly braces {}.

### Example

Both of the code blocks below will draw a pair of green triangles on the graphics window:

    clg blue
    color green
    tri = {{0, 0}, {200, 200}, {0, 200}}
    # stamp the triangle at 100,100 (full size)
    stamp 100, 100, tri[]
    # stamp the triangle at 350,100 (half size)
    stamp 350, 100, .5, tri[]

    clg blue
    color green
    # stamp the triangle at 100,100 (full size)
    stamp 100, 100, {{0, 0}, {200, 200}, {0, 200}}
    # stamp the triangle at 350,100 (half size)
    stamp 350, 100, .5, {0, 0, 200, 200, 0, 200}

Both programs will draw:\
![stamp.png](@site/static/img/wiki/en/stamp.png)

### See Also

[Arc](../en/arc.md), [Chord](../en/chord.md), [Circle](../en/circle.md), [GetPenWidth](../en/getpenwidth.md), [Line](../en/line.md), [PenWidth](../en/penwidth.md), [Pie](../en/pie.md), [Plot](../en/plot.md), [Poly](../en/poly.md), [Rect](../en/rect.md), [Stamp](../en/stamp.md), [Window](../en/window.md)

### History

|            |                                               |
|------------|-----------------------------------------------|
| 0.9.4      | New To Version                                |
| 1.99.99.55 | two dimensional list support was added        |
| 1.99.99.72 | added required \[\] to passing variable array |
