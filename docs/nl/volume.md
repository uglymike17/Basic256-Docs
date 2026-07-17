---
title: "Volume"
sidebar_label: "Volume"
---

## Volume

### Formaat

**volume** *niveau*\
**volume** ( *niveau* )

### Beschrijving

Pas het volume aan met het [Sound](./sound.md) commando. Volume *niveau* is een cijfer tussen 0 en 10. Het staat normaal op 5.

### Zie ook

[Sound](./sound.md)

### Voorbeeld

``` basic5gl
for vol = 1 to 9
volume(vol)
sound(100,100)
next vol
```

maakt eenzelfde geluid geduren 1/10 seconde en telkens luider.

### Nieuw Vanaf

0.9.5i

------------------------------------------------------------------------

[vorige](./sound.md) \| [Geluid](./sound_commands.md) \| [volgende](./wavplay.md)
