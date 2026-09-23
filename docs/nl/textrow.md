---
title: "TextRow"
sidebar_label: "TextRow"
---

## TextRow (Function)

### Format

**textrow**\
**textrow** ( )

### Description

Returns the row the next [Print](../en/print.md) will write in, counting from zero.

Like [TextCol](../en/textcol.md) it reports where the *program* is about to print, not wherever you may have clicked in the window, so

    locate textcol, textrow

leaves the cursor exactly where it already was.

In the ordinary text window the row number grows as the window fills, and a row is a printed line -- what you get from a [Print](../en/print.md) that ends without a semicolon -- and not a line that has been wrapped to fit the width. The number therefore means the same thing whether or not word wrap is switched on.

In a window fixed by [TextScreen](../en/textscreen.md) the row can never be more than one less than the height of the screen. Once the screen is full it stays on the last row and the screen scrolls up underneath it.

### Example

    textfont "Courier New", 12
    cls

    print "line one"
    print "line two"
    print "the next print will go on row " + textrow

    locate 0, 10
    print "after locate 0,10 textrow is " + textrow

    # note a spot, go away, and come back to it
    c = textcol
    r = textrow
    locate 0, 15
    print "away down here";
    locate c, r
    print "...back where we were"

### See Also

[Locate](../en/locate.md), [Print](../en/print.md), [TextBackground](../en/textbackground.md), [TextChar](../en/textchar.md), [TextCol](../en/textcol.md), [TextColor](../en/textcolor.md), [TextFont](../en/textfont.md), [TextScreen](../en/textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
