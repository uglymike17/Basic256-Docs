---
title: "Getslice"
sidebar_label: "Getslice"
---

## GetSlice (Function)

### Format

**getslice** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md) )\
**getslice** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md), [layer](./sliceconstants.md) )

returns [List of Values](./lists.md)

### Description

Return a 2 dimensional array of the pixels in the rectangle defined by the parameters.

[x_position](./numericexpressions.md) and [y_position](./numericexpressions.md) are the top left corner of the rectangle. They are measured in pixels unless a [Window](./window.md) has been set, in which case they are in the units that window defines, the same as they are for [Pixel](./pixel.md).

[width](./numericexpressions.md) and [height](./numericexpressions.md) are always a number of pixels and are never changed by a window, because they are the size of the array you get back. **getslice**(x, y, 10, 10) hands back ten pixels by ten whatever window is set, so [PutSlice](./putslice.md) can put them back exactly as they were.

The optional [layer](./sliceconstants.md) says which of the graphics layers to read the pixels from. The graphics area is drawn in two layers -- what the program has painted with [Plot](./plot.md), [Line](./line.md), [Rect](./rect.md) and the rest, and the sprites that are laid on top of it -- and one of the [Slice Constants](./sliceconstants.md) chooses between them:

|                  |                                                                            |
|------------------|----------------------------------------------------------------------------|
| **slice_all**    | Both layers as they appear on the screen. This is what you get if you leave the argument out. |
| **slice_paint**  | Only what the program has painted, with no sprites in it                     |
| **slice_sprite** | Only the sprites, with the painting they sit on left transparent             |

**slice_paint** follows [SetGraph](./setgraph.md), so it reads the image you are currently drawing on. **slice_all** and **slice_sprite** always read the graphics area itself, sprites belonging to the screen rather than to an image. They also read the layers as they were last shown, so a program using [FastGraphics](./fastgraphics.md) should [Refresh](./refresh.md) before asking for either of them.

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

[GetSlice](./getslice.md), [Pixel](./pixel.md), [PutSlice](./putslice.md), [Slice Constants](./sliceconstants.md), [SpriteSlice](./spriteslice.md), [Window](./window.md)

### New To Version

0.9.6b

### History

|            |                                                               |
|------------|---------------------------------------------------------------|
| 0.9.6b     | New To Version                                                |
| 1.99.99.65 | Changed return value to a 2 dimensional array of pixel values |
| 2.3        | The corner may be given in [Window](./window.md) units         |
