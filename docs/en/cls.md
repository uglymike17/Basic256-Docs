---
title: "Cls"
sidebar_label: "Cls"
---

## Cls (Statement)

### Format

**cls**

### Description

Clears the text output window.

The colours and the font are **kept**, the way a console always did, so a program that has set [TextColor](./textcolor.md), [TextBackground](./textbackground.md) or [TextFont](./textfont.md) may clear the screen as often as it likes without having to say again what it wants. They all go back to normal when a program starts, so one program can never hand the window on to the next in a state where the text is invisible.

The cursor is left at the top left corner, so the next [Print](./print.md) begins there. In a window fixed by [TextScreen](./textscreen.md) the screen is blanked and the cursor put back to 0, 0 in the same way.

### See Also

[Locate](./locate.md), [Print](./print.md), [TextBackground](./textbackground.md), [TextChar](./textchar.md), [TextCol](./textcol.md), [TextColor](./textcolor.md), [TextFont](./textfont.md), [TextRow](./textrow.md), [TextScreen](./textscreen.md)
