---
title: "Getslice"
sidebar_label: "Getslice"
---

## GetSlice

### Formaat

getslice(*x*, *y*, *breedte*, *hoogte*)

### Beschrijving

de functie geeft een string terug die de hexadecimale representatie is van een vierhoek, op basis van de parameters die opgegeven zijn.\
De string bestaat uit verschillende onderdelen:

- Eerste 4 bytes voor de *breedte*
- Volgende 4 bytes voor de *hoogte*
- 6 bytes per pixel (breedte\*hoogte\*)

### Voorbeeld

``` basic4gl
print getslice(0,5,10,5)
```

geeft dan

    000a0005f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8

### Zie ook

[PutSlice](./putslice.md)

### Nieuw vanaf

0.9.6b

------------------------------------------------------------------------

[vorige](./imgsave.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./putslice.md)
