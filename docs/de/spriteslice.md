---
title: "Spriteslice"
sidebar_label: "Spriteslice"
---

## Spriteslice (Statement)

### Format

**spriteslice** *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md)\
**spriteslice** ( *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [width](../en/numericexpressions.md), [height](../en/numericexpressions.md) )

### Description

Copy the rectangular region of the screen with it’s top left corner represented by [x_position](../en/numericexpressions.md) and [y_position](../en/numericexpressions.md) of the specified [height](../en/numericexpressions.md) and [width](../en/numericexpressions.md) and create a sprite. The sprite will be active and movable but will not be visible until the Spriteshow statement is executed. It is recommended that you execute the [Clg](../en/clg.md) command before drawing and slicing the sprite. All unpainted pixels will be transparent when the sprite is drawn on the screen. Transparent pixels may also be set by drawing with the color CLEAR.

### See Also

[Spritecollide](../en/spritecollide.md), [Spritedim](../en/spritedim.md), [Spriteh](../en/spriteh.md), [Spritehide](../en/spritehide.md), [Spriteload](../en/spriteload.md), [Spritemove](../en/spritemove.md), [Spriteo](../en/spriteo.md), [Spritepoly](../en/spritepoly.md), [Spriteplace](../en/spriteplace.md), [Spriter](../en/spriter.md), [Sprites](../en/sprites.md), [Spriteshow](../en/spriteshow.md), [Spriteslice](../en/spriteslice.md), [Spritetext](../en/spritetext.md), [Spritev](../en/spritev.md), [Spritew](../en/spritew.md), [Spritex](../en/spritex.md), [Spritey](../en/spritey.md)

### History

|        |                |
|--------|----------------|
| 0.9.6o | New To Version |
