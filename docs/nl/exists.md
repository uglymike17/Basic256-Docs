---
title: "Exists"
sidebar_label: "Exists"
---

## Exists

### Formaat

exists ( *uitdrukking* )

### Beschrijving

Deze functie geeft een (true/false)[^1] terug om aan te tonen of het bestandspad naar het bestand zoals in *uitdrukking* bestaat of niet.\
Hou ermee rekening dat dze functie enkel weergeeft of het bestand dat je opgeeft bestaat in het opgegeven pad….

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### Voorbeeld

``` basic4gl
print currentdir ( ) # om te zien waar je bent
print exists ("success.wav") # dit is een bestand dat inderdaad in de opgegeven currentdir aanwezig is
print exists ("failed.wav") # dit is een bestand dat niet bestaat 
```

geeft dan

    /home/guest/basic
    1
    0

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./eof.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./kill.md)

[^1]: true=1 en false=0
