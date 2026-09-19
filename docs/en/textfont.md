---
title: "TextFont"
sidebar_label: "TextFont"
---

## TextFont (Statement)

### Format

**textfont** [font_name](./stringexpressions.md)\
**textfont** [font_name](./stringexpressions.md), [font_size_in_point](./floatexpressions.md)\
**textfont** [font_name](./stringexpressions.md), [font_size_in_point](./floatexpressions.md), [font_weight](./floatexpressions.md)\
**textfont** [font_name](./stringexpressions.md), [font_size_in_point](./floatexpressions.md), [font_weight](./floatexpressions.md), [italic](./booleanexpressions.md)

Any of the forms above may also be written with the arguments in brackets.

### Description

Sets the font that [Print](./print.md) writes with in the text output window. The arguments are the same ones the graphics [Font](./font.md) statement takes.

The size is in points (1/72"). The weight runs from 1 to 100 -- Light is about 25, Normal 50 and Bold 75. The fourth argument is true for italic. Arguments left off keep their ordinary values.

**textfont ""** -- an empty name -- goes back to the font chosen in Preferences, which is what the window starts with.

[Cls](./cls.md) keeps the font, and the font goes back to the Preferences one when a program starts.

:::warning
**textfont "monospace" does not work on Windows.** The generic family names are not resolved there and a *proportional* face is handed back instead, so `iiii` and `MMMM` come out different widths and nothing lines up. Ask for a real family by name: **"Courier New"** is present on Windows and macOS and is mapped to a fixed-width face on Linux.
:::

:::note
In the ordinary text window a column is one *character*, so lining columns up or drawing a box with [Locate](./locate.md) needs a fixed-width font. [TextScreen](./textscreen.md) removes the problem altogether -- on a fixed screen the characters are laid out on a grid whatever font is chosen, and **textfont** then sets only the family, the weight and the slant, its size being ignored because only one size fits.
:::

### Example

    textfont "Courier New", 12
    print "fixed width, so these line up:"
    print "iiii MMMM"
    print "MMMM iiii"
    print

    textfont "Times New Roman", 16, 75
    print "bold serif at 16 point"

    textfont "Courier New", 12, 50, true
    print "italic again"

    textfont ""
    print "and back to the font set in Preferences"

### See Also

[Cls](./cls.md), [Font](./font.md), [Locate](./locate.md), [Print](./print.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)

### History

|         |                |
|---------|----------------|
| 2.3     | New To Version |
