---
title: "Spriteplace"
sidebar_label: "Spriteplace"
---

## Spriteplace (Statement)

### Format

**spriteplace** *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md)\
**spriteplace** ( *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md) )\
**spriteplace** *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md)\
**spriteplace** ( *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md) )\
**spriteplace** *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotate_expression](../en/floatexpressions.md)\
**spriteplace** ( *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotate_expression](../en/floatexpressions.md) )

### Description

Place the center of a sprite at a specific location on the screen (x,y). Like [Imgload](../en/imgload.md) sprite positioning is relative to the center of the sprite and not the top left corner as with most other graphical statements.\
\
Optionally the sprite may be rotated or scaled by defining optional the [rotate_expression](../en/floatexpressions.md) and [scale_expression](../en/floatexpressions.md) parameters. The degree [rotate_expression](../en/floatexpressions.md) is measured in radians.

### Example

See [Spritedim](../en/spritedim.md)

### See Also

[Spritecollide](../en/spritecollide.md), [Spritedim](../en/spritedim.md), [Spriteh](../en/spriteh.md), [Spritehide](../en/spritehide.md), [Spriteload](../en/spriteload.md), [Spritemove](../en/spritemove.md), [Spriteo](../en/spriteo.md), [Spritepoly](../en/spritepoly.md), [Spriteplace](../en/spriteplace.md), [Spriter](../en/spriter.md), [Sprites](../en/sprites.md), [Spriteshow](../en/spriteshow.md), [Spriteslice](../en/spriteslice.md), [Spritetext](../en/spritetext.md), [Spritev](../en/spritev.md), [Spritew](../en/spritew.md), [Spritex](../en/spritex.md), [Spritey](../en/spritey.md)

### History

|          |                        |
|----------|------------------------|
| 0.9.6n   | New To Version         |
| 0.9.9.15 | Added rotate and scale |
