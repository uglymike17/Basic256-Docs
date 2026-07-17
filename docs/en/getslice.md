---
title: "Getslice"
sidebar_label: "Getslice"
---

## GetSlice (Function)

### Format

getslice([x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md))

returns [List of Values](./lists.md)

### Description

Return a 2 dimensional array of the pixels in the rectangle defined by the parameters.

### Example

    clg
    color red
    plot 1,1
    color green
    plot 1,2
    color blue
    plot 2,1
    color yellow
    plot 2,2

    vals = getslice(1, 1, 2, 3)

    for rows = 0 to 2
      for cols = 0 to 1
        print "("+rows+","+cols+")="+vals[rows,cols]
      next cols
    next rows

displays

    (0,0)=-65536
    (0,1)=-16776961
    (1,0)=-16711936
    (1,1)=-256
    (2,0)=0
    (2,1)=0

### See Also

[GetSlice](./getslice.md), [PutSlice](./putslice.md)

### New To Version

0.9.6b

### History

|            |                                                               |
|------------|---------------------------------------------------------------|
| 0.9.6b     | New To Version                                                |
| 1.99.99.65 | Changed return value to a 2 dimensional array of pixel values |
