---
title: "Kill"
sidebar_label: "Kill"
---

## Kill

### Formaat

kill ( *uitdrukking* )

### Beschrijving

Deze functie verwijdert het bestand zoals in *uitdrukking* van het system .\
Indien het bestand niet bestaat, krijg je een foutmelding.

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### Voorbeeld

``` basic4gl
file$="failed.wav"
print currentdir ( )
if  exists (file$) then 
kill (file$)
else 
print "bestand niet gevonden, niets gewist"
end if
```

geeft dan

    /home/guest/basic
    bestand niet gevonden, niets gewist

omdat failed.wav niet bestaat….

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./exists.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./open.md)
