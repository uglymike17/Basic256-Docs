---
title: "Clickb"
sidebar_label: "Clickb"
---

## Clickb

### Format

**clickb**\
**clickb** ( )

### Description

Returns the buttons that the user last clicked on the mouse (if over the graphic output). Returns 0 if no click has been recorded. If multiple buttons have been pressed the value is the sum of the values for all pressed buttons.

| Return Values |                      |
|---------------|----------------------|
| Value         | Mouse Button Pressed |
| 0             | None                 |
| 1             | Left                 |
| 2             | Right                |
| 4             | Center               |

### See Also

[Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

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

### New To Version

0.9.4d
