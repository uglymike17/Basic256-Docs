---
title: "TextBackground"
sidebar_label: "TextBackground"
---

## TextBackground (Statement)

### Format

**textbackground** color\
**textbackground** ( color )\
**textbackground**

### Description

Colours the **whole** text output window, rather than only the strip behind the characters.

The colour is given exactly as it is to the graphics [Color](./color.md) statement: a colour constant, an integer ARGB value, the [Rgb](./rgb.md) function, an SVG colour name in a string, or a string of hexadecimal digits beginning with "\#".

This is what recreates the look of an old console -- white on dark green, amber on black, white on orange. Rows that nothing has been printed to are coloured too, and the text cursor follows the text colour so that it stays visible on a dark one.

**textbackground** on its own, with no colour, hands the window back to the theme.

The difference from the two-argument [TextColor](./textcolor.md) is worth being clear about:

    textcolor "white", "darkblue"     # a blue strip behind the characters only
    textbackground "darkblue"         # the entire window is blue

[Cls](./cls.md) clears the text and keeps the colour, so a program may clear the screen as often as it likes without saying again what it wants. The window goes back to the theme when a program starts, so one program can never hand it on to the next in a state where the text is invisible.

### Example

    textbackground rgb(0,40,0)
    textcolor rgb(120,255,120)
    textfont "Courier New", 14
    cls

    print "BASIC-256 TERMINAL"
    print "=================="
    print
    print "the whole window is green on black,"
    print "including the rows nothing was printed to."
    print
    print "cls keeps the colours."

### See Also

[Cls](./cls.md), [Color](./color.md), [Locate](./locate.md), [Print](./print.md), [Rgb](./rgb.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
