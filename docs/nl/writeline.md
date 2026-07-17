---
title: "Writeline"
sidebar_label: "Writeline"
---

## WriteLine

### Formaat

**writeline** *string*\
**writeline** ( *string* )\
**writeline** *filenumber*, *string*\
**writeline** ( *filenumber*, *string* )

### Beschrijving

De functie schrijft *string* aan het einde van een open bestand toe samen met een nieuwe lijn. Als je dan nog eens wegshrijft, is dat op de nieuwe lijn!\
Als je het bestandsnummer (*filenumber*) niet meegeeft, dan wordt 0 genomen.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
writeline (1,"Hello")
writeline (1,"Dit komt op de volgende lijn na Hello")
close 1
```

Print currentdir gebruik ik om te weten waar ik een bestand open. Dit is de plaats waar Foo.txt zal worden geopend ( of weggeschreven)
Verder zijn er 2 write opdrachten. In het Foo.txt bestand zie je echter alles mooi op een lijn.
Ik voer een close uit om het bestand mooi te sluiten. De informatie wordt wel onmiddellijk in het bestand gezet, maar je bent nooit zeker he.

dit geeft dan het bestand

``` txt
Hello
Dit komt op de volgende lijn na Hello
```

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### New To Version

0.9.4

------------------------------------------------------------------------

[vorige](./write.md) \| [Lezen en schrijven](./write_and_read.md)
