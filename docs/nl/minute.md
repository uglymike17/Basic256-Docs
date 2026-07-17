---
title: "Minute"
sidebar_label: "Minute"
---

## Minute

### Formaat

minute\
minute()

### Beschrijving

Geeft de minuten terug op basis van de tijd van de computer (0-59).

### Voorbeeld

``` basic4gl
# Toon een leesbare datum
dim months$(12)
months$ = {"Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli", "Augustus", "September", "October", "November", "December"}
print right("0" + day, 2) + "-"  months$[month] + "-" + year 
# Toon een leesbare datum
h = hour
if h > 12 then
h = h - 12
ampm$ = "PM"
else
ampm$ = "AM"
end if
if h = 0 then h = 12
print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$
```

Toont ongeveer zo iets.\

    29-januari-2012
    10-00-02 PM

### Zie ook

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./hour.md) \| [Datum en Uur](./datehour.md) \| [volgende](./second.md)
