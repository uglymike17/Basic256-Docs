---
title: "Putslice"
sidebar_label: "Putslice"
---

## PutSlice

### Formaat

**putslice** *x*, *y*, *slice\$*\
**putslice** *x*, *y*, *slice\$*, *doorichtige kleur*

### Beschrijving

Met deze functie toon je de tekening die je in een vorge stap in een slice string hebt gezet. Als je *transparent* meegeeft als kleur, dan worden die punten met die kleur ook niet getoond.

### Voorbeeld

``` basci4gl
clg
a$= getslice(0,5,10,5)
print a$
putslice(10,10,a$)

```

### Zie Ook

[GetSlice](./getslice.md)

### Nieuw vanaf

0.9.6b

------------------------------------------------------------------------

[vorige](./getslice.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritecollide.md)
