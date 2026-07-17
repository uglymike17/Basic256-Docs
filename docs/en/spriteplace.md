---
title: "Spriteplace"
sidebar_label: "Spriteplace"
---

## Spriteplace (Statement)

### Format

**spriteplace** *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md)\
**spriteplace** ( *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md) )\
**spriteplace** *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md)\
**spriteplace** ( *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md) )\
**spriteplace** *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotate_expression](./floatexpressions.md)\
**spriteplace** ( *sprite_number*, [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotate_expression](./floatexpressions.md) )

### Description

Place the center of a sprite at a specific location on the screen (x,y). Like [Imgload](./imgload.md) sprite positioning is relative to the center of the sprite and not the top left corner as with most other graphical statements.\
\
Optionally the sprite may be rotated or scaled by defining optional the [rotate_expression](./floatexpressions.md) and [scale_expression](./floatexpressions.md) parameters. The degree [rotate_expression](./floatexpressions.md) is measured in radians.

### Example

See [Spritedim](./spritedim.md)

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), Spriteo, [Spritepoly](./spritepoly.md), [Spriteplace](./spriteplace.md), [Spriter](./spriter.md), [Sprites](./sprites.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritetext](./spritetext.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### History

|          |                        |
|----------|------------------------|
| 0.9.6n   | New To Version         |
| 0.9.9.15 | Added rotate and scale |
