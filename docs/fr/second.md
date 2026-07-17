---
title: "Second"
sidebar_label: "Second"
---

## Second

### Format

**second**\
**second**()

### Description

Renvoie la seconde courante de la minute courante de l’horloge système (0-59).

### Exemple

    # affiche la date
    dim mois$(12)
    mois$ = {"janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"}
    d = day()
    if d=1 then
       ier$="er"
    else
       ier$=""
    endif
    print d + ier$ + " " + mois$[month()] + " " + year()
    # affiche l'heure
    print  hour() + ":" + right("0" + minute(), 2) + ":" + right("0" + second(), 2)

affichera quelque chose comme ceci :\

    1er mai 2013
    21:47:04

### Voir aussi

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Year](./year.md)

### Première version

0.9.4
