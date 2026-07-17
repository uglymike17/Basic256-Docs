---
title: "Spriteslice"
sidebar_label: "Spriteslice"
---

## Spriteslice (Statement)

### Format

**spriteslice** *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md)\
**spriteslice** ( *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [width](./numericexpressions.md), [height](./numericexpressions.md) )

### Description

Copy the rectangular region of the screen with it’s top left corner represented by [x_position](./numericexpressions.md) and [y_position](./numericexpressions.md) of the specified [height](./numericexpressions.md) and [width](./numericexpressions.md) and create a sprite. The sprite will be active and movable but will not be visible until the Spriteshow statement is executed. It is recommended that you execute the [Clg](./clg.md) command before drawing and slicing the sprite. All unpainted pixels will be transparent when the sprite is drawn on the screen. Transparent pixels may also be set by drawing with the color CLEAR.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteo](./spriteo.md), [Spritepoly](./spritepoly.md), [Spriteplace](./spriteplace.md), [Spriter](./spriter.md), [Sprites](./sprites.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritetext](./spritetext.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### History

|        |                |
|--------|----------------|
| 0.9.6o | New To Version |
