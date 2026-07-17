---
title: "Eof"
sidebar_label: "Eof"
---

## Eof

### Formaat

eof\
eof()\
eof(*Bestandnr*)

### Beschrijving

Met deze functie kan je weten of we het laatste stukje van een bestand hebben bereikt of niet ( true/false)[^1]. Als je het *Bestandnr* niet meegeeft, dan wordt bestandnummer 0 verondersteld.

Je krijgt een foutmelding als je EOF probeert te doen op een bestandnummer dat geen open bestand bevat.

Je gebruikt deze functie om te weten of je alles al hebt gelezen bvb. Probeer je dan nog eens te lezen (na de EOF) dan krijg je een foutmelding.

### Zie ook

[Close](./close.md), [Exists](./exists.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### Voorbeeld

``` basic4gl
print currentdir ( )
open(1, "bestand.txt")
print eof(1)
close 1
```

geeft

    1 #omdat bestand.txt niets bevat 

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./currentdir.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./exists.md)

[^1]: true=1 en false=0
