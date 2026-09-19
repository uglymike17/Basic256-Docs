---
title: "Text Output Window"
sidebar_label: "Text Output Window"
---

## Text Output Window

The text output window is the panel [Print](./print.md) writes into and [Input](./input.md) asks its questions in. For most of the language's life a program could do exactly two things with it: print to the end of it, and empty it with [Cls](./cls.md). Version 2.3 gives the program the rest — where on the panel the text lands, what colour it is, what font it is set in, and, if the program asks for it, a fixed character screen of the kind the home computers of the eighties printed on.

Eight new words do all of it:

| Word | Kind | What it does |
|---------------------------------------|-----------|------------------------------------------------------------|
| [Locate](./locate.md) | statement | put the cursor at a column and row |
| [TextCol](./textcol.md) | function | the column the next print will write in |
| [TextRow](./textrow.md) | function | the row the next print will write in |
| [TextColor](./textcolor.md) | statement | the colour of the characters, and of the strip behind them |
| [TextBackground](./textbackground.md) | statement | the colour of the whole window |
| [TextFont](./textfont.md) | statement | the family, size, weight and slant |
| [TextScreen](./textscreen.md) | statement | turn the window into a fixed character screen |
| [TextChar](./textchar.md) | function | read a character back off that screen |

### Where the next character goes

[Locate](./locate.md) moves the text cursor, so that the next [Print](./print.md) puts its characters where you say rather than at the end of what is already there. Columns and rows count **from zero**, and go the same way round as the graphics window: across first, then down, with 0, 0 at the top left.

What is printed after a **locate** *replaces* the characters it lands on rather than pushing them along, which is what lets a program rewrite one spot over and over — a score, a clock, a counter — without redrawing anything around it:

    for n = 1 to 10
       locate 10, 5
       print "tick " + n + "   ";
       pause 0.2
    next n

Rows and columns that do not exist yet are filled in with blanks, so **locate** always lands where it was asked to, even on an empty window. A plain [Print](./print.md) is unaffected: it leaves the cursor at the end of the text, where there is nothing to replace.

[TextCol](./textcol.md) and [TextRow](./textrow.md) read the position back, which lets a program note a spot, print somewhere else, and come back to it:

    c = textcol
    r = textrow
    locate 0, 20
    print "a message at the foot of the window";
    locate c, r

Both report where the *program* is about to print, and not wherever you may have clicked with the mouse, so `locate textcol, textrow` is a statement that does nothing at all. One subtlety is worth knowing: every argument of a [Print](./print.md) is worked out before any of it reaches the window, so **textcol** read inside a [Print](./print.md) reports the position as it was *before* that print began, not as it travels along the line. Read it on the line after if you want to know where a line ended.

### Colour

[TextColor](./textcolor.md) sets the colour [Print](./print.md) writes in. Given two colours, the second is painted **behind the characters** — a strip only as wide as the text itself; given one, any such strip set earlier is cleared again. [TextBackground](./textbackground.md) colours the **whole window** instead, rows that nothing has been printed to included, and the text cursor follows the text colour so that it stays visible on a dark one. That is the pair that recreates the look of an old console:

    textcolor "white", "darkblue"     # a blue strip behind the characters only
    textbackground "darkblue"         # the entire window is blue

Colours are given exactly as they are to the graphics [Color](./color.md) statement: a colour constant, an integer ARGB value, the [Rgb](./rgb.md) function, an SVG colour name in a string, or a string of hexadecimal digits beginning with "\#". So `textcolor "yellow", "blue"` reads as it sounds. Text already on the screen keeps the colour it was written in — these statements apply to what is printed after them, not to what is there already.

Either statement written on its own, with no colour at all, hands that part of the window back to the theme.

### Clearing

[Cls](./cls.md) clears the text and **keeps** the colours and the font, the way a console always did, so a program may clear the screen as often as it likes without saying again what it wants. The cursor is left at the top left corner.

All of it — colours, font and screen shape alike — goes back to normal when a program starts, so one program can never hand the window on to the next in a state where the text is invisible or the shape is wrong.

### The font

[TextFont](./textfont.md) takes the same arguments as the graphics [Font](./font.md) statement: a family name, a size in points, a weight from 1 to 100 (Light is about 25, Normal 50, Bold 75) and a flag for italic. Arguments left off keep their ordinary values, and `textfont ""` goes back to the font chosen in Preferences.

:::warning
**textfont "monospace" does not work on Windows.** The generic family names are not resolved there and a *proportional* face is handed back instead, so `iiii` and `MMMM` come out different widths and nothing lines up. Ask for a real family by name — **"Courier New"** is present on Windows and macOS, and is mapped to a fixed-width face on Linux.
:::

The font matters more here than it looks, because in the ordinary window a column is one *character* and not a fixed distance across the window. A box drawn with [Locate](./locate.md), or columns of figures lined up with it, only comes out straight in a fixed-width font. The fixed screen removes the problem altogether.

### A real character screen

[TextScreen](./textscreen.md) turns the window into a fixed screen of the size asked for, the columns first and the rows second:

    textscreen 40, 25

On a fixed screen **a column really is a column**. The characters are laid out on a grid rather than by the widths of the letters, so a box drawn with `+`, `-` and `|` closes up, and columns of figures line up underneath each other, whatever font is set. The screen always fills the window, so the letters grow and shrink as the window is resized and a program does not have to care how big it has been made; [TextFont](./textfont.md) still chooses the family, the weight and the slant, but the size it is given is ignored, there being only one size that fits.

Printing past the last column carries on at the start of the next row, and printing past the last row scrolls the screen up a line.

:::warning
**What scrolls off the top is gone.** A screen is a screen and not a scroll — exactly as it was on the machines this recreates — so there is nothing to scroll back to and no history kept. A program that wants to keep something on view should print it somewhere it will not be scrolled over, or use the ordinary window.
:::

Everything else means the same thing on a fixed screen as it does in the ordinary window: [Locate](./locate.md), [TextColor](./textcolor.md), [TextBackground](./textbackground.md), [Cls](./cls.md), [Input](./input.md) and [Print](./print.md), and Copy, Paste and Print from the toolbar. Two things about handling the screen by hand are worth knowing. **Holding Alt while dragging** selects a rectangle rather than a run of text, which is what is wanted for lifting a box, or one column, out of a picture. And **Tab reaches the program** rather than moving to the next window, so a program can read it with [Key](./key.md) and use it to step between the fields of a form it has drawn with [Locate](./locate.md).

[TextChar](./textchar.md) reads a single character back off the screen — `textchar(column, row)`, counted from zero like everything else here. It is the same idea as `SCREEN$` on the ZX Spectrum, or reading the screen memory on a Commodore 64, and it is how a game finds out what is in the square it is about to move into. A square nothing has been printed to holds a space. An empty string comes back when there is nothing to read at all: off the edge of the screen, in the ordinary scrolling window, which has no squares to read, or under `--silent`, which has no window at all. It reports the screen as it is *now*, so after a scroll it returns what has moved into the square rather than what was printed there to begin with.

**textscreen** written on its own hands the window back to the ordinary scrolling one, with everything printed before the switch still in it.

### Which of the two to use

The ordinary window suits output that grows: transcripts, lists, answers — anything a reader will want to scroll back through. The fixed screen suits anything that is *laid out*: forms, boards, dashboards, games, tables of figures, where a column has to be a column and the program would rather overwrite a square than add a line.

### Example

    textscreen 40, 12
    textbackground rgb(0,40,0)
    textcolor rgb(120,255,120)
    cls

    locate 6, 0
    print "BASIC-256 TERMINAL 40x12";

    locate 2, 2
    print "+----------------------------+";
    for r = 3 to 6
       locate 2, r
       print "|                            |";
    next r
    locate 2, 7
    print "+----------------------------+";

    textcolor rgb(255,255,255), rgb(128,0,0)
    locate 5, 4
    print " columns really are columns ";

    textcolor rgb(200,200,200)
    locate 2, 9
    print "the square at 5,4 holds [" + textchar(5,4) + "]";
    locate 2, 10
    print "press a key for the ordinary window";
    while key = 0
    end while

    textscreen

### See Also

[Cls](./cls.md), [Color](./color.md), [Font](./font.md), [Input](./input.md), [Key](./key.md), [Locate](./locate.md), [Print](./print.md), [Rgb](./rgb.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)

### Availability

The text output window statements are part of the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256), and were added in BASIC-256 2.3.
