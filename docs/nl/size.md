---
title: "Size"
sidebar_label: "Size"
---

## Size

### Formaat

**size**\
**size()**\
**size**(*filenumber*)

### Beschrijving

Deze functie geeft weer hoe groot het bestand is in bytes[^1]. Geef je geen bestandnummer in, dan wordt de functie uitgevoerd op bestandnummer 0, als ze bestaat natuurlijk.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
print size(1) 
close 1
```

geeft dan

    /home/guest # werkdirectory :-) 
    40 # dit bestand is dus 40 bytes lang

Geef je geen bestandnummer in, dan probeert het programma 0. Maar aangezien er geen bestand geopend is voor 0, krijg je //FOUT op lijn 3: File not open. //

### Zie Ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md)

### Nieuw Vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./seek.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./write.md)

[^1]: <http://www.jeroen.com/woordenboek/binair_stelsel>
