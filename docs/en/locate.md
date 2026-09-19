---
title: "Locate"
sidebar_label: "Locate"
---

## Locate (Statement)

### Format

**locate** [column](./integerexpressions.md), [row](./integerexpressions.md)\
**locate** ( [column](./integerexpressions.md), [row](./integerexpressions.md) )

### Description

Moves the text cursor in the text output window, so that the next [Print](./print.md) puts its characters where you say rather than at the end of what is already there.

Columns and rows are counted **from zero**, the same way round and the same way up as the graphics window: **locate** 0, 0 is the top left corner, the first number is across and the second is down.

What is printed after a **locate** *replaces* the characters it lands on instead of pushing them along. That is what lets a program rewrite one spot over and over -- a score, a clock, a counter -- without having to redraw everything around it:

    for n = 1 to 10
       locate 10, 5
       print "tick " + n + "   ";
       pause 0.2
    next n

Rows and columns that do not exist yet are filled in with blanks, so **locate** always lands where it was asked to even on an empty window. In a window fixed by [TextScreen](./textscreen.md) there is nothing to fill in and nothing to grow into, so a column or row outside the screen is moved to the nearest one that is on it.

[Print](./print.md) on its own is unaffected. With the cursor at the end of the text, which is where [Print](./print.md) leaves it, there is nothing to replace and nothing to notice.

[TextCol](./textcol.md) and [TextRow](./textrow.md) read the position back.

:::note
In the ordinary text window a column is one *character* and not a fixed distance across the window, so a box drawn with **locate**, or columns of figures lined up with it, only come out straight in a fixed-width font -- [TextFont](./textfont.md) "Courier New", say. Use [TextScreen](./textscreen.md) if you want a column to be a column whatever the font is.
:::

### Example

    textfont "Courier New", 12
    cls

    # a box drawn by moving the cursor, not by padding out strings
    locate 4, 2
    print "+--------------+";
    for r = 3 to 6
       locate 4, r
       print "|              |";
    next r
    locate 4, 7
    print "+--------------+";

    locate 6, 4
    print "hello there";

    locate 0, 9
    print "the box was drawn by position alone"

### See Also

[Cls](./cls.md), [Print](./print.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
