---
title: "Gosubreturn"
sidebar_label: "Gosubreturn"
---

## Gosub / Return

### Formaat

**gosub** *etiket*\
\
etiket:\
*opdracht(en)*\
**return**

*etiket*

- moet met een letter beginnen
- mag geen sleutelwoord zijn
- moet eindigen met :#

### Beschrijving

Gaat naar een welbepaald etiket. Wanneer het RETURN commando wordt tegengekomen,gaat het programma gewoon verder op de lijn die volgt op het GOSUB commando. GOSUB kunnen genest worden, je kan dus verschillende keren een GOSUB uitvoeren.

Ook hier moet je opletten. Als je veel GOSUB opdrachten gebruikt, kan het zijn dat je je eigen programma niet meer begrijpt. Dus als je een programma schrijft die ook door anderen zal worden gebruikt en aangepast, let je daarvoor extra op.

### Zie ook

[Goto](./goto.md)

### Voorbeeld

``` basic4gl
print "Ik wil";
gosub haaldelijst
print " eten.";
end
haaldelijst: #
print " koekjes,"
print " snoep,"
print " dessert"
return
```

zal het volgende tonen

    Ik wil koekjes, snoep, dessert eten

Voor // print ” eten.” // wordt uitgevoerd wordt eerst alles van *haaldelijst* tot *return* uitgeoverd.

![gosub.png](@site/static/img/wiki/nl/gosub.png)

------------------------------------------------------------------------

[vorige](./end.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./ifthen.md)
