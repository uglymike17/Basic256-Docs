---
title: "Write"
sidebar_label: "Write"
---

## Write

### Formaat

**write** *string*\
**write** ( *string* )\
**write** *filenumber*, *string*\
**write** ( *filenumber*, *string* )

### Beschrijving

Schrijft *string* aan het einde van een open bestand toe. Als je het bestandsnummer (*filenumber*) niet meegeeft, dan wordt 0 genomen.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
write (1,"Hello")
write (1," Dit komt op dezelfde lijn na Hello")
close 1
```

Print currentdir gebruik ik om te weten waar ik een bestand open. Dit is de plaats waar Foo.txt zal worden geopend ( of weggeschreven)
Verder zijn er 2 write opdrachten. In het Foo.txt bestand zie je echter alles mooi op een lijn.
Ik voer een close uit om het bestand mooi te sluiten. De informatie wordt wel onmiddellijk in het bestand gezet, maar je bent nooit zeker he.

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./size.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./writeline.md)
