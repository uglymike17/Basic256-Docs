---
title: "Spritemove"
sidebar_label: "Spritemove"
---

## Spritemove (Statement)

### Format

**spritemove** *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md)\
**spritemove** ( *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md) )\
**spritemove** *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md)\
**spritemove** ( *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md) )\
**spritemove** *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotate_expression](./floatexpressions.md)\
**spritemove** ( *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotate_expression](./floatexpressions.md) )

### Description

Move a sprite from its current position by the specified number of pixels. Motion will be limited to the current screen. Optionally the sprite may be rotated or scaled by defining optional the *rrotate_expr* and [scale_expression](./floatexpressions.md) parameters. The degree [rotate_expression](./floatexpressions.md) is measured in radians. Rotation and scaling are relative to the previous state of the sprite.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), Spriteo, [Spritepoly](./spritepoly.md), [Spriteplace](./spriteplace.md), [Spriter](./spriter.md), [Sprites](./sprites.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritetext](./spritetext.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### History

|          |                        |
|----------|------------------------|
| 0.9.6n   | New To Version         |
| 0.9.9.15 | Rotate and scale added |
