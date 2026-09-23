---
title: "Spritedim"
sidebar_label: "Spritedim"
---

## Spritedim( Statement)

### Format

**spritedim** *posint_expr*\
**spritedim** ( *posint_expr* )

### Description

Create sprite placeholders in memory. Sprites are accessed in your program by a sprite number from 0 to n-1.

### Example

    # creates a sprite with number 0
    clg
    fastgraphics
    spritedim 1
    a$="Basic 256"
    Text 0,0,a$
    spriteslice 0,0,0,textwidth (a$),textheight()
    spriteshow 0

    # rotates and enlarges sprite
    for n=0 to 2*pi step .002
    clg
    spriteplace 0,150,150,n,n
    refresh
    next n

### See Also

[Spritecollide](../en/spritecollide.md), [Spritedim](../en/spritedim.md), [Spriteh](../en/spriteh.md), [Spritehide](../en/spritehide.md), [Spriteload](../en/spriteload.md), [Spritemove](../en/spritemove.md), [Spriteo](../en/spriteo.md), [Spritepoly](../en/spritepoly.md), [Spriteplace](../en/spriteplace.md), [Spriter](../en/spriter.md), [Sprites](../en/sprites.md), [Spriteshow](../en/spriteshow.md), [Spriteslice](../en/spriteslice.md), [Spritetext](../en/spritetext.md), [Spritev](../en/spritev.md), [Spritew](../en/spritew.md), [Spritex](../en/spritex.md), [Spritey](../en/spritey.md)

### History

|        |                |
|--------|----------------|
| 0.9.6n | New To Version |
