---
title: "Putslice"
sidebar_label: "Putslice"
---

## PutSlice (Statement)

### Format

**putslice** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [variable\[](../en/arrays.md)\]\
**putslice** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [variable\[](../en/arrays.md)\] )\
**putslice** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md)\
**putslice** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) )

### Description

Put the graphics stored in the slice array on the screen at x,y, which is the top left corner of where it is painted.

The coordinates are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines, the same as they are for [Pixel](../en/pixel.md).

The slice itself is always a number of pixels wide and high. A window places its corner and does not make it any larger or smaller, so **putslice** x, y, [getslice](../en/getslice.md)(x, y, w, h) puts every pixel back exactly where it came from whether a window is set or not.

### See Also

[GetSlice](../en/getslice.md), [Pixel](../en/pixel.md), [PutSlice](../en/putslice.md), [Window](../en/window.md)

### History

|  |  |
|----|----|
| 0.9.6b | New To Version |
| 1.99.99.65 | Changed from a string of data to a 2 dimensional array. Removed the transparency color option. |
| 1.99.99.72 | added required \[\] to passing variable array |
| 2.3 | The corner may be given in [Window](../en/window.md) units |
