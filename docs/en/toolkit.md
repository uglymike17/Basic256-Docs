---
title: "GUI Toolkit"
sidebar_label: "GUI Toolkit"
---

## GUI Toolkit

`toolkit.kbs` is a [module](./modules.md) shipped with BASIC-256. It draws classic-style user-interface elements — push buttons, checkboxes, radio buttons, sliders, spin boxes, tabs, group boxes, drawing fields and single-line text fields — on the graphics output, so a program can offer a familiar control panel instead of asking the user to type numbers into [Input](./input.md).

Pull it into a program with a single line:

    include "toolkit.kbs"

Every routine it adds begins with `tk_`, so the toolkit's vocabulary never collides with the language's own, with your program's, or with another module's (see [why every name has a prefix](./modules.md#why-every-name-has-a-prefix)). Because it is a module and not part of the language, these names only exist in programs that include the file. `call tk_help()` prints a summary of every routine in the Text Output window.

### How it works: draw, then hit-test

The toolkit **remembers nothing**. It has no global variables and no list of the elements on screen: each routine draws one element at the place you give it, in the state you give it, and returns. Your program keeps the values — whether a box is ticked, where a slider stands, what a text field holds — in its own variables, and redraws an element whenever its value changes.

Almost every element therefore comes as a pair:

- a **drawing subroutine**, called with `call`, that paints the element: `tk_button`, `tk_checkbox`, `tk_slider`, …
- a **hit-test function**, given the same position and a mouse point, that says whether that point is on the element: `tk_buttonhit`, `tk_checkhit`, `tk_sliderhit`, …

A toolkit program is then a loop that waits for a click with [ClickB](./clickb.md), asks each element in turn whether the click ([ClickX](./clickx.md), [ClickY](./clicky.md)) landed on it, updates the matching variable and redraws that one element. Because the hit-test takes the same arguments as the drawing routine, it is worth keeping each element's position in variables rather than repeating the numbers.

### Elements at a glance

| Draw | Hit-test | Element |
|------|----------|---------|
| `tk_button(x, y, w, h, caption$, state)` | `tk_buttonhit(x, y, w, h, px, py)` | push button |
| `tk_checkbox(x, y, caption$, state)` | `tk_checkhit(x, y, caption$, px, py)` | checkbox with label |
| `tk_radio(x, y, caption$, state)` | `tk_radiohit(x, y, caption$, px, py)` | radio button with label |
| `tk_slider(x, y, len, orient, value, maxval, bg)` | `tk_sliderhit(x, y, len, orient, px, py)` | slider (trackbar) |
| `tk_spinner(x, y, w, h, caption$, state)` | `tk_spinhit(x, y, w, h, px, py)` | spin box with up/down arrows |
| `tk_drawtabs(x, y, w, h, captions$, active, pageh)` | `tk_tabhit(x, y, w, h, captions$, px, py)` | tab strip and page |
| `tk_textfield(x, y, w, h, text$, caret, state)` | `tk_texthit(x, y, w, h, px, py)` | single-line edit field |
| `tk_drawing(x, y, w, h, nx, ny, gapx, gapy, fillcol)` | `tk_drawhit(x, y, w, h, nx, ny, gapx, gapy, px, py)` | recessed field (or grid of fields) to draw in |
| `tk_grouper(x, y, w, h, caption$)` | — | group box or separator line |

All the drawing routines are subroutines, called with `call`; the hit-tests are functions. Every routine calls [Refresh](./refresh.md) itself, so the toolkit works with [FastGraphics](./fastgraphics.md) switched on — the usual choice, since it stops the screen flickering while elements are redrawn.

### Buttons

`call tk_button(x, y, w, h, caption$, state)` draws a push button with its top-left corner at (*x*, *y*). The caption is centred, in the largest font up to 12 point that fits.

| state | Button |
|-------|--------|
| 0 | raised (normal) |
| 1 | sunken (held down) |
| 2 | click animation: sunken, a short pause, raised again |
| 3 | disabled: raised, with an embossed grey caption |

State 2 is the one to use when a button has been clicked — it gives the user the press-and-release feedback in one call. `tk_buttonhit(x, y, w, h, px, py)` is true when (*px*, *py*) is on the button.

### Checkboxes and radio buttons

`call tk_checkbox(x, y, caption$, state)` draws a 13 × 13 box at (*x*, *y*) with its label to the right; `call tk_radio(x, y, caption$, state)` draws a 12 × 12 circle the same way. Both take the same states:

| state | Checkbox | Radio button |
|-------|----------|--------------|
| 0 | unchecked | not selected |
| 1 | checked | selected |
| 2 | disabled, unchecked | disabled, not selected |
| 3 | disabled, checked | disabled, selected |

`tk_checkhit` and `tk_radiohit` are true when the point is on the box **or on its label**, as in most desktop programs, so the user does not have to aim for the little square.

The toolkit does not group radio buttons for you: a radio group is a loop in your program. Keep the captions in an array and the index of the selected one in a variable; when a click lands on another button, redraw the old one with state 0 and the new one with state 1. The [example](#example) below does exactly that.

### Sliders

`call tk_slider(x, y, len, orient, value, maxval, bg)` draws a sunken track with a raised thumb at the position of *value*.

| Argument | Meaning |
|----------|---------|
| *x*, *y* | start of the track, on its centre line — the left end of a horizontal slider, the top of a vertical one |
| *len* | track length in pixels |
| *orient* | 1 = horizontal (0 at the left), 0 = vertical (0 at the top) |
| *value* | current value, 0 to *maxval* (values outside are clamped) |
| *maxval* | largest value; *len* = *maxval* + 1 gives one pixel per step |
| *bg* | background colour, used to erase the old thumb |

The slider occupies 21 pixels across the track and *len* + 10 along it. `tk_sliderhit(x, y, len, orient, px, py)` is true anywhere in that area, and `tk_sliderval(x, y, len, orient, maxval, px, py)` turns a mouse position into a value. For a slider that follows the mouse while it is dragged, test [MouseB](./mouseb.md), [MouseX](./mousex.md) and [MouseY](./mousey.md) rather than the click functions.

### Spin boxes

`call tk_spinner(x, y, w, h, caption$, state)` draws a sunken field with up and down arrow buttons inside its right edge. The field shows *caption$*, which you format yourself, so the same routine serves numbers, months, names or anything else you step through.

| state | Spin box |
|-------|----------|
| 0 | normal |
| 1 | up button pressed |
| 2 | down button pressed |
| 3 | disabled |

`tk_spinhit(x, y, w, h, px, py)` returns 1 on the up button, -1 on the down button and 0 anywhere else — the step direction itself, so `value = value + tk_spinhit(x, y, w, h, clickx, clicky)` is all the arithmetic needed.

### Tabs

`call tk_drawtabs(x, y, w, h, captions$, active, pageh)` draws a row of tabs *w* wide and *h* high at (*x*, *y*). The captions are given in one string separated by `|`, such as `"General|Colours|Advanced"`, and the tabs share the width equally. *active* is the index of the selected tab, counting from 0. When *pageh* is greater than 0 a raised page *pageh* high is drawn below the tabs, which also clears whatever the previous page showed; with 0 only the tab strip is drawn.

`tk_tabhit(x, y, w, h, captions$, px, py)` returns the index of the tab under the point, or -1. On a new tab, redraw with the new *active* and then draw that page's contents.

### Text fields

`call tk_textfield(x, y, w, h, text$, caret, state)` draws a single-line edit field showing *text$*. *caret* is the caret position as a character index, from 0 (before the first character) to the length of the text.

| state | Text field |
|-------|------------|
| 0 | no focus, no caret |
| 1 | focused, caret visible |
| 2 | focused, caret hidden — alternate 1 and 2 to make the caret blink |
| 3 | disabled |

Text wider than the field scrolls so the caret stays in view. Editing is done by four functions, which your program feeds with the mouse and the key codes from [Key](./key.md):

| Function | Returns |
|----------|---------|
| `tk_texthit(x, y, w, h, px, py)` | true when the point is inside the field — give it the focus |
| `tk_textcaretat(x, y, w, h, text$, caret, px)` | the caret index nearest mouse x position *px*, to place the caret with a click |
| `tk_textedit$(text$, caret, k)` | the text after key code *k* has been applied |
| `tk_textcaret(text$, caret, k)` | the caret position after key code *k* has been applied |

They handle printable characters (Shift gives upper case), Backspace, Delete, Left, Right, Home and End. Call `tk_textcaret` **before** storing the result of `tk_textedit$`: both must see the text as it was before the key.

### Drawing fields and group boxes

`call tk_drawing(x, y, w, h, nx, ny, gapx, gapy, fillcol)` draws a recessed area filled with *fillcol* for your program to draw in — a canvas, a preview, a game board. (*x*, *y*) and *w* × *h* are the **interior**, the part you draw in; the 2-pixel sunken border is added outside it. With *nx* and *ny* greater than 1 it draws a grid of such fields, *gapx* and *gapy* pixels apart, and `tk_drawhit` returns the index (row × *nx* + column, counting from 0) of the field under a point, or -1. Calling it again clears the field.

`call tk_grouper(x, y, w, h, caption$)` draws an etched frame with a caption on its top edge, to group related elements. With *h* = 0 it draws a horizontal separator line *w* long instead, and with *w* = 0 a vertical one. Pass `""` for no caption. A group box is only decoration and has no hit-test.

### Example

A small control panel: a checkbox, a slider, a group of three radio buttons and a button, all steering one circle in a drawing field.

    include "toolkit.kbs"

    graphsize 500, 500
    fastgraphics
    face = rgb(192,192,192)
    clg face

    # the program keeps every value -- the toolkit only draws and hit-tests
    csize = 80
    filled = 1
    colours$ = {"Red", "Green", "Blue"}
    picked = 2

    call tk_grouper(20, 20, 300, 130, "Circle")
    call tk_checkbox(40, 45, "Filled", filled)
    font "Tahoma", 9, 50
    color black
    text 40, 85, "Size"
    call tk_slider(80, 92, 201, 1, csize, 200, face)
    call tk_grouper(340, 20, 140, 130, "Colour")
    for i = 0 to 2
       call tk_radio(360, 45 + i * 30, colours$[i], i = picked)
    next i
    call tk_button(380, 440, 100, 30, "Reset", 0)
    gosub picture

    while true
       if clickb then
          px = clickx : py = clicky
          clickclear
          if tk_checkhit(40, 45, "Filled", px, py) then
             filled = 1 - filled
             call tk_checkbox(40, 45, "Filled", filled)
             gosub picture
          end if
          for i = 0 to 2
             if tk_radiohit(360, 45 + i * 30, colours$[i], px, py) then
                call tk_radio(360, 45 + picked * 30, colours$[picked], 0)
                picked = i
                call tk_radio(360, 45 + picked * 30, colours$[picked], 1)
                gosub picture
             end if
          next i
          if tk_buttonhit(380, 440, 100, 30, px, py) then
             call tk_button(380, 440, 100, 30, "Reset", 2)
             csize = 80
             call tk_slider(80, 92, 201, 1, csize, 200, face)
             gosub picture
          end if
       end if
       if mouseb then
          if tk_sliderhit(80, 92, 201, 1, mousex, mousey) then
             csize = tk_sliderval(80, 92, 201, 1, 200, mousex, mousey)
             call tk_slider(80, 92, 201, 1, csize, 200, face)
             gosub picture
          end if
       end if
       pause 0.02
    end while

    picture:
       call tk_drawing(22, 172, 456, 254, 1, 1, 0, 0, white)
       c = rgb(255 * (picked = 0), 160 * (picked = 1), 255 * (picked = 2))
       if filled then color c else color c, clear
       penwidth 3
       circle 250, 299, 10 + csize / 2
       penwidth 1
       refresh
    return

draws\
![GUI Toolkit](@site/static/img/wiki/toolkit.png)

Everything the panel shows lives in four variables — `csize`, `filled`, `picked` and the constant captions — and the loop's only job is to change one of them when a click lands on its element, then redraw that element and the picture. `i = picked` passes 1 for the selected radio button and 0 for the others, since a comparison is itself a number. Clicks are read with [ClickB](./clickb.md) and cleared with [ClickClear](./clickclear.md), while the slider uses [MouseB](./mouseb.md) so that it follows the mouse for as long as the button is held.

The `Examples/GUI-Demo` folder has a small program for each element, including a text field with a blinking caret and a tabbed page, and `Examples/Demo/tk_gui_demo.kbs` puts them all together in one tabbed window. Both are in the browser version's File/Open Example list too.

### Notes

The toolkit sets the current [Color](./color.md) and [Font](./font.md) as it draws — and `tk_checkhit`, `tk_radiohit` and `tk_textcaretat` set the font too, since they measure text. Set your own colour and font again before drawing anything of your own after a toolkit call, as the example does before its "Size" label and its circle.

The elements are drawn in the light grey of classic desktop programs, `rgb(192,192,192)`; clear the window to that colour with [Clg](./clg.md) for them to sit on a matching background. Captions use the Tahoma font.

`tk_outline(x1, y1, x2, y2)` is a helper used by `tk_grouper` that draws an unfilled one-pixel rectangle between two corners; a program may use it too.

### See Also

[Modules](./modules.md), [Include](./include.md), [Call](./call.md), [ClickB](./clickb.md), [ClickClear](./clickclear.md), [ClickX](./clickx.md), [ClickY](./clicky.md), [MouseB](./mouseb.md), [MouseX](./mousex.md), [MouseY](./mousey.md), [Key](./key.md), [FastGraphics](./fastgraphics.md), [Refresh](./refresh.md), [Color](./color.md), [Font](./font.md)

### Availability

The bundled module library is part of the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256). `toolkit.kbs` was added in BASIC-256 2.3.1.
