---
title: "Pixel"
sidebar_label: "Pixel"
---

## Pixel

### Formaat

**pixel** (*x*, *y* )

### Beschrijving

De functie geeft de RGB waarde terug van de pixel die zich op (*x*,*y*) bevindt.\
De waarde bevat ook de alpha, net als bij [Rgb](./rgb.md). Als de pixel sinds de laatste \[clg\] opdracht niet werd overschreven, of indien het werd overschreven met de *clear* kleur, is hij transparant en wordt **0** teruggegeven; wit geeft **-1**. Sprites worden niet gelezen. Buiten het grafische venster heeft het resultaat geen betekenis.

### Voorbeeld

\<code basic4gl\>
uit te werken
c/code\>

### Zie ook

[Rgb](./rgb.md)

### Nieuw vanaf

0.9.5m

------------------------------------------------------------------------

[vorige](./spritey.md) \| [Tekenen en kleuren](./a_real_dali.md)
