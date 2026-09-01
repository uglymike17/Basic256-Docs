---
title: "Putslice"
sidebar_label: "Putslice"
---

## PutSlice (Statement)

### Format

**putslice** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [variable\[](./arrays.md)\]\
**putslice** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [variable\[](./arrays.md)\] )\
**putslice** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md)\
**putslice** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) )

### Description

Put the graphics stored in the slice array on the screen at x,y.

These coordinates are always measured in pixels and are not changed by [Window](./window.md), because the array is a number of pixels wide and high.

### See Also

[GetSlice](./getslice.md), [PutSlice](./putslice.md), [Window](./window.md)

### History

|  |  |
|----|----|
| 0.9.6b | New To Version |
| 1.99.99.65 | Changed from a string of data to a 2 dimensional array. Removed the transparency color option. |
| 1.99.99.72 | added required \[\] to passing variable array |
