---
title: "Spriteslice"
sidebar_label: "Spriteslice"
---

## Spriteslice

### Formaat

**spriteslice** *spritenummer*, *x*, *y*, *breedte*, *hoogte*\
**spriteslice** ( *spritenummer*, *x*, *y*, *breedte*, *hoogte* )

### Beschrijving

De functie kopiëert een rechthoekig oppervlakte van het scherm van de linkerbovenhoek zoals opgegeven met de coördinaten *x* en *y* en dit voor een de opgegeven *hoogte* en *breedte* in een nieuw sprite met *spritenummer*.\
De sprite is acitef en kan worden verschoven, maar is niet zichtbaar tot de [spriteshow](./spriteshow.md) opdracht werd gegeven.

## Opmerking

Het is aangewezen om eerst een \[clg\] commando uit te voeren vooraleer de sprite getekend en gesliced wordt.\
Ongeverfde pixels worden transparant wanneer de sprite getoond wordt op het scherm. Doorzichtige pixels kunnen ook gemaakt worden door met de kleur *clear* te werken.

### Voorbeeld

``` basic4gl
uit te werken 
```

### Zie ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6o

------------------------------------------------------------------------

[vorige](./spriteshow.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritev.md)
