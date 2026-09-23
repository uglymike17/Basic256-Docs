---
title: "TextColor"
sidebar_label: "TextColor"
---

## TextColor (Statement)

### Format

**textcolor** color\
**textcolor** ( color )\
**textcolor** text_color, background_color\
**textcolor** ( text_color, background_color )\
**textcolor**

### Description

Sets the colour that [Print](../en/print.md) writes in, in the text output window.

The colours are given exactly as they are to the graphics [Color](../en/color.md) statement: a colour constant, an integer ARGB value, the [Rgb](../en/rgb.md) function, an SVG colour name in a string, or a string of hexadecimal digits beginning with "\#". So **textcolor** "yellow", "blue" reads as it sounds.

With two arguments the second colour is painted **behind the characters**, a strip only as wide as the text itself. With one argument any background set earlier is cleared again, and the characters are drawn on whatever is behind them.

To colour the *whole* window rather than the strip behind the characters, use [TextBackground](../en/textbackground.md).

Text already on the screen keeps the colour it was written in -- **textcolor** applies to what is printed after it, not to what is there already.

[Cls](../en/cls.md) clears the text and **keeps** the colours, the way a console always did, so a program may clear the screen as often as it likes without saying again what it wants. Everything goes back to normal when a program starts, so one program can never hand the window on to the next in a state where the text is invisible.

A program that never calls **textcolor** prints in the ordinary text colour, which follows the light or dark theme.

**textcolor** on its own, with no arguments at all, hands the colour back to that theme -- black on a light theme and white on a dark one -- and clears any background with it. It is the counterpart of [TextBackground](../en/textbackground.md) written on its own, and it is what a program should use to finish with: naming a colour such as `black` only suits one of the two themes, and would be invisible on the other.

### Example

    textcolor rgb(255,220,0), rgb(20,20,90)
    print " a yellow warning on navy "
    textcolor rgb(255,220,0)
    print "the background is cleared again by the one argument form"

    textcolor "white", "darkred"
    print " names work too "

    textcolor rgb(120,200,255)
    print "and the text already printed keeps its own colours"

    textcolor
    print "and this line is back to the theme's own colour"

### See Also

[Cls](../en/cls.md), [Color](../en/color.md), [Locate](../en/locate.md), [Print](../en/print.md), [Rgb](../en/rgb.md), [TextBackground](../en/textbackground.md), [TextChar](../en/textchar.md), [TextCol](../en/textcol.md), [TextFont](../en/textfont.md), [TextRow](../en/textrow.md), [TextScreen](../en/textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
