---
title: "TextScreen"
sidebar_label: "TextScreen"
---

## TextScreen (Statement)

### Format

**textscreen** [columns](./integerexpressions.md), [rows](./integerexpressions.md)\
**textscreen** ( [columns](./integerexpressions.md), [rows](./integerexpressions.md) )\
**textscreen**

### Description

Turns the text output window into a fixed character screen of the size you ask for -- the kind of screen the home computers of the eighties printed on.

The columns come first and the rows second, the same way round as [Locate](./locate.md) and the graphics window: across, then down.

On a fixed screen **a column really is a column**. The characters are laid out on a grid rather than by the widths of the letters, so a box drawn with `+`, `-` and `|` closes up, and columns of figures line up underneath each other, whatever font the editor happens to be set to. That is the one thing [Locate](./locate.md) cannot promise in the ordinary window, and the reason a fixed-width font has to be asked for there by hand.

The screen always fills the window, so the letters grow and shrink as the window is resized and a program does not have to care how big it has been made. [TextFont](./textfont.md) still chooses the family, the weight and the slant, but **the size it is given is ignored** while a screen is set -- there being only one size that fits.

Printing past the last column carries on at the start of the next row. Printing past the last row scrolls the screen up a line.

:::warning
**What scrolls off the top is gone.** A screen is a screen and not a scroll -- exactly as it was on the machines this recreates -- so there is nothing to scroll back to and no history kept. A program that wants to keep something on view should print it somewhere it will not be scrolled over, or use the ordinary window.
:::

**textscreen** on its own, with no arguments, hands the window back to the ordinary scrolling one, with everything printed before the switch still in it. A screen is also given up when a program starts, so one program can never hand the next one a window the wrong shape.

Everything you already know still works and means the same thing: [Locate](./locate.md), [TextColor](./textcolor.md), [TextBackground](./textbackground.md), [Cls](./cls.md), [Input](./input.md) and [Print](./print.md), and Copy, Paste and Print from the toolbar.

Two things are worth knowing about using the screen by hand:

- Dragging with the mouse selects text to copy, and **holding Alt while dragging selects a rectangle** instead -- which is what is wanted for lifting a box, or one column, out of a picture.
- **Tab reaches the program** rather than moving to the next window, so a program can read it with [Key](./key.md) and use it to step between the fields of a form it has drawn with [Locate](./locate.md).

[TextChar](./textchar.md) reads a character back off the screen.

### Example

    textscreen 40, 25
    textbackground rgb(0,0,60)

    textcolor rgb(255,220,0)
    locate 8, 0
    print "BASIC-256 TEXTSCREEN 40x25";

    # the box closes up because a column is a column
    textcolor rgb(0,255,128)
    locate 2, 2
    print "+----------------------------+";
    for r = 3 to 8
       locate 2, r
       print "|                            |";
    next r
    locate 2, 9
    print "+----------------------------+";

    textcolor rgb(255,255,255), rgb(128,0,0)
    locate 5, 5
    print " columns really are columns ";

    # even a proportional family lands on the grid
    textfont "Segoe UI"
    textcolor rgb(120,200,255)
    locate 4, 7
    print "iiii MMMM iiii MMMM";
    textfont ""

    locate 0, 12
    textcolor rgb(200,200,200)
    print "press a key to go back to the ordinary window";
    while key = 0
    end while

    textscreen

### See Also

[Cls](./cls.md), [Input](./input.md), [Key](./key.md), [KeyPressed](./keypressed.md), [Locate](./locate.md), [Print](./print.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
