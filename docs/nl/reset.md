---
title: "Reset"
sidebar_label: "Reset"
---

## Reset

### Formaat

**reset**\
**reset()**\
**reset**(*filenumber*)

### Beschrijving

Wist een open bestand. Alle informatie in het bestand is dan **verloren** !!\
Wees dus voorzichtig als je dit gebruikt. Als je geen bestandsnummer ingeeft, dan neemt de functie bestandsnummer 0.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
reset 1
write (1,"Hello")
write (1," Dit komt op dezelfde lijn na Hello")
close 1
```

Telkens als je dit programma uitvoert, dan open je Foo.txt, maak je het leeg en zet je er telkens dezelfde inhoud in.

Dit is de inhoud van Foo.txt

    Hello Dit komt op dezelfde lijn na Hello

Probeer nu eens de code verschillende keer na elkaar uit te voeren, maar neem de ‘Reset 1’ opdracht weg. Wat zie je?[^1]

### Zie Ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./readline.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./seek.md)

[^1]: dezelfde tekst komt zoveel malen terug als je het programma hebt uitgevoerd
