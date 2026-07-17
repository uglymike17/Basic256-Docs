---
title: "Text"
sidebar_label: "Text"
---

## Text

### Formaat

**text** *x*, *y*, *string*\
**text** ( *x*, *y*, *string* )

### Beschrijving

De functie *schrijft* de *string* in het grafisch venster met het lettertype en kleur die op dat moment zijn gedefinieerd. Er wordt gebonnen op *x*, *y* .

### Voorbeeld

``` basic4gl
clg 
color grey
rect 0,0,graphwidth,graphheight
color darkblue
font "Penguin Attack",18,50
text 10,100,"Fraaie tekst"
color darkgreen
font "Swift",14,75
text 10,200,"En dit is de vette tekst!"
```

wordt dan.\
![](@site/static/img/wiki/nl/fonttext.png)

### Zie ook

[Color](./color.md), [Font](./font.md), [TextWidth](./textwidth.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./font.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./textwidth.md)
