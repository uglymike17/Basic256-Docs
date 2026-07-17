---
title: "Spritepoly"
sidebar_label: "Spritepoly"
---

## Spritepoly (Statement)

### Format

**spritepoly** *sprite_number*, [variable\[](./arrays.md)\]\
**spritepoly** ( *sprite_number*, [variable\[](./arrays.md)\] )\
**spritepoly** *sprite_number*, [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md)\
**spritepoly** ( *sprite_number*, [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) )\
**spritepoly** *sprite_number*, [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md)\
**spritepoly** ( *sprite_number*, [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md) )

### Description

Create a sprite from a list of points that represent a polygon. The top left corner of the polygon should be (0,0). The sides of the polygon are defined by the values stored in the array, which should be stored as x,y pairs, sequentially. The length of a one dimensional array/2 or the number of rows on a two dimensional array will define the number of points.

One dimensional arrays and lists must have at least six values and an even number of values. A two dimensional array may have 3 or more rows but must have two columns.

### Example

    # create an arrow that spins and follows the mouse
    spritedim 1
    color darkblue, blue
    penwidth 2
    spritepoly 0, {15,0, 30,10, 25,10, 25,30, 5,30, 5,10, 0,10}

    color grey
    rect 0,0,300,300
    spriteshow 0
    s = 1
    ds = .1
    r = 0
    while true
       spriteplace 0, mousex, mousey, s, r
       r = r + .1
       if s > 5 or s < 1 then ds = ds * -1
       s = s + ds
       pause .1
    end while

### See Also

[Poly](./poly.md), [Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), Spriteo, [Spritepoly](./spritepoly.md), [Spriteplace](./spriteplace.md), [Spriter](./spriter.md), [Sprites](./sprites.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritetext](./spritetext.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### History

|            |                                               |
|------------|-----------------------------------------------|
| 0.9.9.70   | New To Version                                |
| 1.99.99.55 | two dimensional list support was added        |
| 1.99.99.72 | added required \[\] to passing variable array |
