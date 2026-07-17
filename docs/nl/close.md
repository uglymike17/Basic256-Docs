---
title: "Close"
sidebar_label: "Close"
---

## Close

### Formaat

**close**\
**close** ( )\
**close** *Bestandnr*\
**close** ( *Bestandnr* )

### Beschrijving

Deze functie sluit een bestand dat open is. Indien dat bestand niet open was, dan gebeurt er niets. Indien het *Bestandnr* niet wordt weergegeven, wordt 0 genomen .

Als je verwijst naar een bestandsnummer dat niet bestaat, krijg je wel een foutmelding.

close betekent *(sluiten)* in het Engels.

### Zie ook

[Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md)

### Voorbeeld

``` basic4gl
print currentdir ( )
open(1, "bestand.txt")
close 1
```

geeft geen feedback.

``` basic4gl
print currentdir ( )
open(1, "bestand.txt")
close 
```

Geeft foutbericht. De close functie probeert bestandnummer 0 te sluiten, maar die bestaat niet, en je krijgt de fout: FOUT op lijn 4: File not open.

------------------------------------------------------------------------

[vorige](./changedir.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./dir.md)
