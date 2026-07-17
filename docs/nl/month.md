---
title: "Month"
sidebar_label: "Month"
---

## Month

### Formaat

**month**\
**month**()

### Beschrijving

Geeft de maand terug op basis van de tijd van de computer.

- januari=\>**0** ( en niet 1 dus !!!! )
- februari=\>1
- maart=\>2
- april=\>3
- mei=\>4
- juni=\>5
- juli=\>6
- augustus=\>7
- september=\>8
- oktober=\>9
- november=\>10
- december=\>**11** ( geen 12 dus )

### Voorbeeld

``` basic4gl
cls
dim n$(12)
n$ = {"Jan", "Feb", "Mar", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
print day + "-" + n$[month] + "-" + year
```

Op nieuwjaar 2013 wordt dan volgende getoond

    1-Jan-2013

### Zie ook

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./day.md) \| [Datum en Uur](./datehour.md) \| [volgende](./year.md)
