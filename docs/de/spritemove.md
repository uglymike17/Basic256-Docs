---
title: "Spritemove"
sidebar_label: "Spritemove"
---

## Spritemove (Statement)

### Format

**spritemove** *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md)\
**spritemove** ( *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md) )\
**spritemove** *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md)\
**spritemove** ( *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md) )\
**spritemove** *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotate_expression](../en/floatexpressions.md)\
**spritemove** ( *sprite_number*, [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotate_expression](../en/floatexpressions.md) )

### Description

Move a sprite from its current position by the specified number of pixels. Motion will be limited to the current screen. Optionally the sprite may be rotated or scaled by defining optional the *rrotate_expr* and [scale_expression](../en/floatexpressions.md) parameters. The degree [rotate_expression](../en/floatexpressions.md) is measured in radians. Rotation and scaling are relative to the previous state of the sprite.

### See Also

[Spritecollide](../en/spritecollide.md), [Spritedim](../en/spritedim.md), [Spriteh](../en/spriteh.md), [Spritehide](../en/spritehide.md), [Spriteload](../en/spriteload.md), [Spritemove](../en/spritemove.md), [Spriteo](../en/spriteo.md), [Spritepoly](../en/spritepoly.md), [Spriteplace](../en/spriteplace.md), [Spriter](../en/spriter.md), [Sprites](../en/sprites.md), [Spriteshow](../en/spriteshow.md), [Spriteslice](../en/spriteslice.md), [Spritetext](../en/spritetext.md), [Spritev](../en/spritev.md), [Spritew](../en/spritew.md), [Spritex](../en/spritex.md), [Spritey](../en/spritey.md)

### History

|          |                        |
|----------|------------------------|
| 0.9.6n   | New To Version         |
| 0.9.9.15 | Rotate and scale added |
