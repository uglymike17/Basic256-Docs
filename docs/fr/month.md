---
title: "Month"
sidebar_label: "Month"
---

## Month

### Format

**month**\
**month**()

### Description

Renvoie le mois en cours de l’horloge système (0-11 : 0=janvier, 1=février, … 11=décembre).

### Exemple

    cls
    dim les_mois$(12)
    les_mois$ = {"janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"}
    d=day()
    if d=1 then
       ier$="er"
    else
       ier$=""
    endif
    print day() + ier$ + " " + les_mois$[month()] + " " + year()

affichera par exemple :

    1er mai 2013

### Voir aussi

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Second](./second.md), [Year](./year.md)

### Première version

0.9.4
