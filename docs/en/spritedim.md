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

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteo](./spriteo.md), [Spritepoly](./spritepoly.md), [Spriteplace](./spriteplace.md), [Spriter](./spriter.md), [Sprites](./sprites.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritetext](./spritetext.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### History

|        |                |
|--------|----------------|
| 0.9.6n | New To Version |
