---
title: "Spritepoly"
sidebar_label: "Spritepoly"
---

## Spritepoly (Statement)

### Format

**spritepoly** *sprite_number*, [variable\[](../en/arrays.md)\]\
**spritepoly** ( *sprite_number*, [variable\[](../en/arrays.md)\] )\
**spritepoly** *sprite_number*, [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md)\
**spritepoly** ( *sprite_number*, [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) )\
**spritepoly** *sprite_number*, [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md)\
**spritepoly** ( *sprite_number*, [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md) )

### Description

Create a sprite from a list of points that represent a polygon. The sides of the polygon are defined by the values stored in the array, which should be stored as x,y pairs, sequentially. The length of a one dimensional array/2 or the number of rows on a two dimensional array will define the number of points.

The polygon is moved into the top left corner of the sprite for you, so it does not matter whereabouts it is drawn — negative coordinates are fine. The sprite is made just big enough to hold the polygon and the [penwidth](../en/penwidth.md) it is drawn with, since half of a line's thickness falls outside the shape it outlines.

One dimensional arrays and lists must have at least six values and an even number of values. A two dimensional array may have 3 or more rows but must have two columns.

### Example

    # create an arrow that spins and follows the mouse
    spritedim 1
    color darkblue, blue
    penwidth 2
    spritepoly 0, {15,0, 30,10, 25,10, 25,30, 5,30, 5,10, 0,10}

    color grey
    rect 0,0,500,500
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

[Poly](../en/poly.md), [Spritecollide](../en/spritecollide.md), [Spritedim](../en/spritedim.md), [Spriteh](../en/spriteh.md), [Spritehide](../en/spritehide.md), [Spriteload](../en/spriteload.md), [Spritemove](../en/spritemove.md), [Spriteo](../en/spriteo.md), [Spritepoly](../en/spritepoly.md), [Spriteplace](../en/spriteplace.md), [Spriter](../en/spriter.md), [Sprites](../en/sprites.md), [Spriteshow](../en/spriteshow.md), [Spriteslice](../en/spriteslice.md), [Spritetext](../en/spritetext.md), [Spritev](../en/spritev.md), [Spritew](../en/spritew.md), [Spritex](../en/spritex.md), [Spritey](../en/spritey.md)

### History

|            |                                               |
|------------|-----------------------------------------------|
| 0.9.9.70   | New To Version                                |
| 1.99.99.55 | two dimensional list support was added        |
| 1.99.99.72 | added required \[\] to passing variable array |
| 2.1.2      | the polygon is now placed correctly wherever it is drawn, and the sprite allows for the pen width |
