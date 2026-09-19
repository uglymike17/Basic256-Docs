---
title: "TextChar"
sidebar_label: "TextChar"
---

## TextChar (Function)

### Format

**textchar** ( [column](./integerexpressions.md), [row](./integerexpressions.md) )

### Description

Returns the single character standing at a square of the character screen, as a string. Columns and rows are counted from zero, the same way round as [Locate](./locate.md).

This is how a program reads back what is already drawn -- useful for a game that needs to know what is in the square it is about to move into, and the same idea as `SCREEN$` on the ZX Spectrum or reading the screen memory on a Commodore 64. A square nothing has been printed to holds a space.

An **empty string** is returned when there is nothing to read:

- when the column or row is off the edge of the screen;
- when the window is not a fixed screen, that is when [TextScreen](./textscreen.md) has not been used, because the ordinary scrolling window has no squares to read;
- when the program is being run with `--silent`, which has no window at all.

**textchar** reads the screen as it is *now*. After the screen has scrolled it reports what has moved into the square, not what was printed there to begin with.

### Example

    textscreen 20, 8
    textcolor rgb(255,220,0)

    locate 4, 2
    print "HELLO";

    print
    textcolor rgb(0,255,128)
    locate 0, 4
    print "the square at 4,2 holds [" + textchar(4,2) + "]"
    print "the square at 8,2 holds [" + textchar(8,2) + "]"
    print "a square that was never printed to holds [" + textchar(0,7) + "]"
    print "off the screen gives [" + textchar(99,99) + "]"

will print

    the square at 4,2 holds [H]
    the square at 8,2 holds [O]
    a square that was never printed to holds [ ]
    off the screen gives []

Reading a whole row back is a loop over the columns:

    row$ = ""
    for c = 0 to 19
       row$ = row$ + textchar(c, 2)
    next c
    print "row 2 reads: " + row$

### See Also

[Chr](./chr.md), [Locate](./locate.md), [Print](./print.md), [TextBackground](./textbackground.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
