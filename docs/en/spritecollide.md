---
title: "Spritecollide"
sidebar_label: "Spritecollide"
---

## Spritecollide (Function)

### Format

**spritecollide** ( *sprite_number*, *sprite_number* )\
**spritecollide** ( *sprite_number*, *sprite_number*, [exact](./booleanexpressions.md) )

returns [boolean_expression](./booleanexpressions.md)

### Description

Function returns true if the two sprites are colliding.

Without the third argument, or when *exact* is false, each sprite is treated as the rectangle of its whole image, including the transparent parts. A sprite that has been scaled or rotated with [Spriteplace](./spriteplace.md) or [Spritemove](./spritemove.md) is treated as its scaled and rotated rectangle. This is fast, but for round or oddly shaped sprites it may report a collision before the visible shapes touch.

When *exact* is true, the function returns true only if a pixel that is not transparent in one sprite lies on a pixel that is not transparent in the other. This is slower, so a program can test the rectangles first and only make the exact test when they overlap.

A hidden sprite never collides with anything. A sprite number compared with itself always returns true.

### Example

    # two triangles whose boxes overlap but whose shapes do not touch
    spritedim 2
    color red
    spritepoly 0, {0, 0, 60, 0, 0, 60}
    color blue
    spritepoly 1, {60, 0, 60, 60, 0, 60}
    spriteplace 0, 200, 250
    spriteplace 1, 250, 250
    spriteshow 0
    spriteshow 1
    print spritecollide(0, 1)
    print spritecollide(0, 1, true)
    spritemove 1, -30, -30
    print spritecollide(0, 1, true)

will print

    1
    0
    1

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteo](./spriteo.md), [Spritepoly](./spritepoly.md), [Spriteplace](./spriteplace.md), [Spriter](./spriter.md), [Sprites](./sprites.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritetext](./spritetext.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### History

|        |                |
|--------|----------------|
| 0.9.6n | New To Version |
