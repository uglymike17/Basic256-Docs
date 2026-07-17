---
title: "Open"
sidebar_label: "Open"
---

## Open

### Formaat

**open** *bestand*\
**open**(*bestand*)\
**open** *bestandsnr*, *bestand*\
**open**(*bestandsnr*, *bestand*)

### Beschrijving

Deze functie opent een bestand om erin te schrijven of te lezen.\
in *bestand* geef je de *bestandsnaam* op met een absoluut of relatief pad [^1]. Als je geen *bestandsnr* meegeeft, dan wordt het *bestandsnr* = 0. Open je dan een nieuw *bestand*, zonder evenwel het bestandsnr mee te geven, zorgt ervoor dat je eerder geopend bestand gesloten wordt.

Probeer dus altijd een *bestandsnr* mee te geven !

Indien het opgegeven bestand niet bestaat, krijg je geen foutmelding, maar wordt het bestand gewoon aangemaakt. Als je dus een bestaand bestand wil openen, wees dan zeker dat je het op de goede plaats zoekt ! Dit kan je doen met de [Exists](./exists.md) functie.

### Opmerking

Met BASIC256 mag je tot 8 bestanden tegelijk openen. Bestandnummers zijn dan 0 tot 7

### Voorbeeld

``` basic4gl
print currentdir ( )
open(1,"bestand.txt")
```

geen feedback… als het bestand bestaat wordt het geopend, anders wordt dat bestand aangemaakt.

### Zie Ook

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Kill](./kill.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./exists.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./read.md)

[^1]: zie moeilijke woorden
