---
title: "Spriteh"
sidebar_label: "Spriteh"
---

## Spriteh (Function)

### Format

**spriteh** ( *sprite_number* )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the height, in pixels, of a loaded sprite as it appears on the screen.

If the sprite has been scaled or rotated by [Spriteplace](./spriteplace.md) or [Spritemove](./spritemove.md), this is the height of the sprite as transformed and not the height of the picture it was made from. A sprite 40 pixels tall measures 120 at a scale of 3 and 20 at a scale of 0.5.

A rotated sprite is as tall as the upright box that encloses it once it has been turned, so the same 40 pixel sprite measures about 57 turned an eighth of a turn, and 40 again at a half turn. That box is what [Spritecollide](./spritecollide.md) works from, so a test such as **if** y > [graphheight](./graphheight.md) - **spriteh**(n) / 2 keeps a scaled or turned sprite inside the graphics area.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteo](./spriteo.md), [Spritepoly](./spritepoly.md), [Spriteplace](./spriteplace.md), [Spriter](./spriter.md), [Sprites](./sprites.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritetext](./spritetext.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### History

|        |                                                          |
|--------|----------------------------------------------------------|
| 0.9.6n | New To Version                                           |
| 2.3    | Follows the scale and rotation the sprite was placed with |
