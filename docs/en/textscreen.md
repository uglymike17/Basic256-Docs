---
title: "TextScreen"
sidebar_label: "TextScreen"
---

## TextScreen (Statement)

### Format

**textscreen** [columns](./integerexpressions.md), [rows](./integerexpressions.md)\
**textscreen** ( [columns](./integerexpressions.md), [rows](./integerexpressions.md) )\
**textscreen** [columns](./integerexpressions.md), [rows](./integerexpressions.md), [square](./integerexpressions.md)\
**textscreen** ( [columns](./integerexpressions.md), [rows](./integerexpressions.md), [square](./integerexpressions.md) )\
**textscreen**

### Description

Turns the text output window into a fixed character screen of the size you ask for -- the kind of screen the home computers of the eighties printed on.

The columns come first and the rows second, the same way round as [Locate](./locate.md) and the graphics window: across, then down.

On a fixed screen **a column really is a column**. The characters are laid out on a grid rather than by the widths of the letters, so a box drawn with `+`, `-` and `|` closes up, and columns of figures line up underneath each other, whatever font the editor happens to be set to. That is the one thing [Locate](./locate.md) cannot promise in the ordinary window, and the reason a fixed-width font has to be asked for there by hand.

The screen is fitted into the window and centred there, so the letters grow and shrink as the window is resized and a program does not have to care how big it has been made. The character cells keep the shape the font gives them however the window is dragged -- so a circle stays a circle and a square a square, rather than being stretched with the frame -- and whatever is left over at the sides, or above and below, is coloured like the rest of the screen. [TextFont](./textfont.md) still chooses the family, the weight and the slant, but **the size it is given is ignored** while a screen is set -- there being only one size that fits.

### Square cells

A third argument asks for **square cells**: cells as tall as they are wide. `true`, or any value that is not zero, turns them on; `false` or nothing at all leaves them off, which is how a screen starts.

Without it a cell is the shape the font makes it -- one character wide and one whole line tall. A line has to hold capitals, ascenders and descenders, so for a typewriter face like Courier New the cell comes out nearly twice as tall as it is wide, exactly as it does in a terminal. That suits writing: the letters of a word sit close together and the lines are comfortably apart.

It does not suit *drawing*. A character used as a dot, a brick or a counter -- `chr(9679)`, a letter standing for a piece, a digit standing for a tile -- is inked at roughly the same size across as it is down, so in a cell twice as tall as it is wide the rows look far more spread out than the columns. With square cells the spacing matches: the character below is as far away as the character beside, which is the arrangement the eighties machines had, their cell being a square of 8 by 8 pixels.

The font is never stretched to fill a square cell -- that would pull the letters out of shape, which is the very thing the grid is careful not to do. The character keeps its own proportions and is centred in the square. It is condensed only if the family is wider than the cell, so that no glyph spills into the square beside it.

Square cells usually mean **smaller characters**, since a square cell is wider than a text cell and fewer of them fit across the window: the width, rather than the height, decides how big the letters can be. Text on a square screen also reads as widely spaced, letters having a square each. Use them for boards, grids and pictures, and leave them off for anything mostly made of words.

Printing past the last column carries on at the start of the next row. Printing past the last row scrolls the screen up a line. A character that merely fills the last square of the last row does not scroll it by itself: the screen moves when the *next* character arrives, so a program that paints the whole screen has the whole screen to show for it.

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

### Example -- square cells for a board

    # a checkerboard of dots: with square cells the gaps match in both directions
    textscreen 8, 8, true
    textbackground rgb(30,30,60)
    ball$ = chr(9679)

    for r = 0 to 7
       for c = 0 to 7
          locate c, r
          if (r + c) % 2 = 0 then
             textcolor rgb(255,255,255)
          else
             textcolor rgb(90,90,160)
          end if
          print ball$;
       next c
    next r

    # the same board without the flag shows the difference: the rows fall far
    # further apart than the columns, because a text cell is a line tall

### See Also

[Cls](./cls.md), [Input](./input.md), [Key](./key.md), [KeyPressed](./keypressed.md), [Locate](./locate.md), [Print](./print.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
