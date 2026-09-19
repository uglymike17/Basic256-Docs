---
title: "TextCol"
sidebar_label: "TextCol"
---

## TextCol (Function)

### Format

**textcol**\
**textcol** ( )

### Description

Returns the column the next [Print](./print.md) will write in, counting from zero.

It reports where the *program* is about to print, not wherever you may have clicked in the window with the mouse. That is what makes

    locate textcol, textrow

a statement that does nothing at all: it puts the cursor back exactly where it already was.

Read together with [TextRow](./textrow.md) it lets a program note a spot, print somewhere else, and come back to it:

    c = textcol
    r = textrow
    locate 0, 20
    print "a message at the foot of the window";
    locate c, r

:::note
All the arguments of a [Print](./print.md) are worked out before any of them reach the window, so **textcol** inside a [Print](./print.md) reports the position as it was *before* that [Print](./print.md) began, not as it moves along the line. If you want to report where a line ended, read **textcol** on the line after it.
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

[Locate](./locate.md), [Print](./print.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
