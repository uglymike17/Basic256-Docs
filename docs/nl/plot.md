---
title: "Plot"
sidebar_label: "Plot"
---

## Plot

### Formaat

**plot** *x*, *y*\
**plot** ( *x*, *y* )

### Beschrijving

Met deze functie verander je éé pixel op plaats (*x*,*y*) in het grafisch venster in de kleur van het potlood.

:!: Opgelet :!: één pixel is klein ;-)

### Voorbeeld

Omdat één pixel zeer klein is, laat ik dus 100 pixels naast elkaar van kleur veranderen ;-)

``` basic4gl
clg
color red
for x=1 to 100 
plot 100+x,100
next x
```

zie je het resultaat ?

------------------------------------------------------------------------

[vorige](./line.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./poly.md)
