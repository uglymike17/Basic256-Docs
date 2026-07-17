---
title: "Clickb"
sidebar_label: "Clickb"
---

## Clickb (Function)

### Format

**clickb**\
**clickb** ( )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the buttons that the user last clicked on the mouse (if over the graphic output). Returns 0 if no click has been recorded.

| Return Values           |       |
|-------------------------|-------|
| Constant                | Value |
| MOUSEBUTTON_NONE        | 0     |
| MOUSEBUTTON_LEFT        | 1     |
| MOUSEBUTTON_RIGHT       | 2     |
| MOUSEBUTTON_CENTER      | 4     |
| MOUSEBUTTON_DOUBLECLICK | 32    |

### Example

    # clear any prior mouse click
    clickclear
    # wait for the user to click the mouse
    print "click mouse on the graphics output"
    while clickb = 0
      pause .01
    endwhile
    # show where the user clicked
    print "The user clicked at (" + clickx + "," + clicky + ")"

### See Also

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md),

### History

|            |                       |
|------------|-----------------------|
| 0.9.4d     | New To Version        |
| 1.99.99.58 | Added Named Constants |
