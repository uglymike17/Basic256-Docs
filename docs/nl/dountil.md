---
title: "Dountil"
sidebar_label: "Dountil"
---

## Do / Until

### Formaat

**do**\
*opdracht(en)*\
**until** *booleanvoorwaarde*

### Beschrijving

Voert de *opdracht(en)* in de do lus tot de *booleanvoorwaarde* de waarde false teruggeeft. Do / Until voert de opdracht **minstens één keer uit**.

De test wordt uitgevoerd na de uitvoering van de opdracht(en).

### Zie ook

[For / Next](./fornext.md), [While / End While](./whileendwhile.md)

### Voorbeeld

``` basic4gl
t = 1
do
  print t
  t = t + 1
until t > 5
```

Geeft volgend resultaat

    1
    2
    3
    4
    5

### Nieuw Vanaf

0.9.4g

------------------------------------------------------------------------

[vorige](./fornext.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./end.md)
