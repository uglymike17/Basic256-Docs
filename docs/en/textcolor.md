---
title: "TextColor"
sidebar_label: "TextColor"
---

## TextColor (Statement)

### Format

**textcolor** color\
**textcolor** ( color )\
**textcolor** text_color, background_color\
**textcolor** ( text_color, background_color )

### Description

Sets the colour that [Print](./print.md) writes in, in the text output window.

The colours are given exactly as they are to the graphics [Color](./color.md) statement: a colour constant, an integer ARGB value, the [Rgb](./rgb.md) function, an SVG colour name in a string, or a string of hexadecimal digits beginning with "\#". So **textcolor** "yellow", "blue" reads as it sounds.

With two arguments the second colour is painted **behind the characters**, a strip only as wide as the text itself. With one argument any background set earlier is cleared again, and the characters are drawn on whatever is behind them.

To colour the *whole* window rather than the strip behind the characters, use [TextBackground](./textbackground.md).

Text already on the screen keeps the colour it was written in -- **textcolor** applies to what is printed after it, not to what is there already.

[Cls](./cls.md) clears the text and **keeps** the colours, the way a console always did, so a program may clear the screen as often as it likes without saying again what it wants. Everything goes back to normal when a program starts, so one program can never hand the window on to the next in a state where the text is invisible.

A program that never calls **textcolor** prints in the ordinary text colour, which follows the light or dark theme.

### Example

    textcolor rgb(255,220,0), rgb(20,20,90)
    print " a yellow warning on navy "
    textcolor rgb(255,220,0)
    print "the background is cleared again by the one argument form"

    textcolor "white", "darkred"
    print " names work too "

    textcolor rgb(120,200,255)
    print "and the text already printed keeps its own colours"

### See Also

[Cls](./cls.md), [Color](./color.md), [Locate](./locate.md), [Print](./print.md), [Rgb](./rgb.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextFont](./textfont.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
