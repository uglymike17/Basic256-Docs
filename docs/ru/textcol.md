---
title: "TextCol"
sidebar_label: "TextCol"
---

## TextCol (Function)

### Format

**textcol**\
**textcol** ( )

### Description

Returns the column the next [Print](../en/print.md) will write in, counting from zero.

It reports where the *program* is about to print, not wherever you may have clicked in the window with the mouse. That is what makes

    locate textcol, textrow

a statement that does nothing at all: it puts the cursor back exactly where it already was.

Read together with [TextRow](../en/textrow.md) it lets a program note a spot, print somewhere else, and come back to it:

    c = textcol
    r = textrow
    locate 0, 20
    print "a message at the foot of the window";
    locate c, r

:::note
All the arguments of a [Print](../en/print.md) are worked out before any of them reach the window, so **textcol** inside a [Print](../en/print.md) reports the position as it was *before* that [Print](../en/print.md) began, not as it moves along the line. If you want to report where a line ended, read **textcol** on the line after it.
:::

### Example

    textfont "Courier New", 12
    cls

    locate 12, 3
    print "some text";
    print
    print "that print started at column " + textcol + " ... "

    locate 12, 3
    print "and textcol now reads " + textcol + " after locate"

### See Also

[Locate](../en/locate.md), [Print](../en/print.md), [TextBackground](../en/textbackground.md), [TextChar](../en/textchar.md), [TextColor](../en/textcolor.md), [TextFont](../en/textfont.md), [TextRow](../en/textrow.md), [TextScreen](../en/textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
