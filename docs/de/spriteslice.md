---
title: "Spriteslice"
sidebar_label: "Spriteslice"
---

## Spriteslice

### Format

**spriteslice** *spritenumber*, *x*, *y*, *width*, *height*\
**spriteslice** ( *spritenumber*, *x*, *y*, *width*, *height* )

### Description

Copy the rectangular region of the screen with it’s top left corner represented by *x* and *y* of the specified *height* and *width* and create a sprite. The sprite will be active and movable but will not be visible until the Spriteshow statement is executed. It is recommended that you execute the [Clg](./clg.md) command before drawing and slicing the sprite. All unpainted pixels will be transparent when the sprite is drawn on the screen. Transparent pixels may also be set by drawing with the color CLEAR.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6o
