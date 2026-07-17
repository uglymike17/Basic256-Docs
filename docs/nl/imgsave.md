---
title: "Imgsave"
sidebar_label: "Imgsave"
---

## ImgSave

### Formaat

**imgsave** *bestandsnaam*\
**imgsave** *bestandsnaam*, *type*\
**imgsave** ( *bestandsnaam* )\
**imgsave** ( *bestandsnaam*, *type* )

### Beschrijving

Met deze functie bewaar je hetgeen in het grafishc venster bestaat in een bestand op je computer in je [currentdir](./currentdir.md), je werkfolder.

Je kan het bestand bewaren als

- BMP
- JPG
- JPEG
- PNG

PNG is het standaard formaat als je niets specifieert.

### Opmerking

Soms zal het beeld zwarte vakken bevatten, als het in het scherm niets getekend was. De reden is dat de [clg](./clg.md) opdracht eigenlijk het grafisch venster vult met de kelur ‘transparant’. Transparant of doorzichtig wordt zwart gemaakt als het grafisch venster wordt weggeschreven naar het bestand.

Gebruik dan het volgende als alternatief voor [clg](./clg.md)

``` basic4gl
color white
rect 0, 0, graphwidth, graphheight
```

### Voorbeeld

``` basic4gl
color white
rect 0, 0, graphwidth, graphheight
for t = 0 to 100
   color rand()*256, rand()* 256, rand()*256
   rect rand()*graphwidth, rand()*graphheight,rand()*graphwidth, rand()*graphheight
next t
imgsave "voorbeeldbestand.png"
imgsave "voorbeeldbestand2.jpg", "jpg"
```

### Zie ook

[ImgLoad](./imgload.md)

### Nieuw vanaf

0.9.6.45

------------------------------------------------------------------------

[vorige](./imgload.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./getslice.md)
