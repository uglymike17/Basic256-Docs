---
title: "Spritew"
sidebar_label: "Spritew"
---

## Spritew

### Format

**spritew** ( *sprite_number* )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the width, in pixels, of a loaded sprite as it appears on the screen.

If the sprite has been scaled or rotated by [Spriteplace](../en/spriteplace.md) or [Spritemove](../en/spritemove.md), this is the width of the sprite as transformed and not the width of the picture it was made from. A sprite 40 pixels wide measures 120 at a scale of 3 and 20 at a scale of 0.5.

A rotated sprite is as wide as the upright box that encloses it once it has been turned, so the same 40 pixel sprite measures about 57 turned an eighth of a turn, and 40 again at a half turn. That box is what [Spritecollide](../en/spritecollide.md) works from, so a test such as **if** x > [graphwidth](../en/graphwidth.md) - **spritew**(n) / 2 keeps a scaled or turned sprite inside the graphics area.

### See Also

[Spritecollide](../en/spritecollide.md), [Spritedim](../en/spritedim.md), [Spriteh](../en/spriteh.md), [Spritehide](../en/spritehide.md), [Spriteload](../en/spriteload.md), [Spritemove](../en/spritemove.md), [Spriteo](../en/spriteo.md), [Spritepoly](../en/spritepoly.md), [Spriteplace](../en/spriteplace.md), [Spriter](../en/spriter.md), [Sprites](../en/sprites.md), [Spriteshow](../en/spriteshow.md), [Spriteslice](../en/spriteslice.md), [Spritetext](../en/spritetext.md), [Spritev](../en/spritev.md), [Spritew](../en/spritew.md), [Spritex](../en/spritex.md), [Spritey](../en/spritey.md)

### History

|        |                                                          |
|--------|----------------------------------------------------------|
| 0.9.6n | New To Version                                           |
| 2.3    | Follows the scale and rotation the sprite was placed with |
