---
title: "Whileendwhile"
sidebar_label: "Whileendwhile"
---

## While / End While

### Formaat

**while** *booleanuitdrukking*\
*opdracht(en)*\
**end while**

### Beschrijving

Voert de *opdracht(en)* in de lus uit tot *booleanuitdrukking* false is. While / End While voert de opdracht(en) nul of meerdere keren uit.

De test wordt uitgevoerd voor er aan de opdrachten wordt begonnen. Dit wil zeggen dat het mogelijk is dat de opdracht(en) zelfs misschien helemaal niet worden uitgevoerd.

### Zie ook

[Do / Until](./dountil.md), [For / Next](./fornext.md)

### Voorbeeld

``` basic4gl
r = 1
while r < 6
  print r
  r = r + 1
end while
```

geeft als resultaat

    1
    2
    3
    4
    5

### Vanaf versie

0.9.4g

------------------------------------------------------------------------

[vorige](./comment.md) \| [Programma Controle](./programcontrol.md)
