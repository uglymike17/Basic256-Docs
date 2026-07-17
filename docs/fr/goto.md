---
title: "Goto"
sidebar_label: "Goto"
---

## Goto

### Format

goto *label*

### Description

Poursuit l’exécution du programme à l’étiquette *label* spécifiée.

### Exemple

    print "Cette voiture est";
    goto skipit
    print " rouge avec de rayures";
    skipit: #
    print " jaune."

Affichera :

    Cette voiture est jaune.

### Voir Aussi

[Gosub](./gosub.md), [Return](./return.md)

### Notes

Les instruction [Goto](./goto.md), [Gosub](./gosub.md), et “labels” de la version 0.9.9.2, ne peuvent pas être utilisées dans les définitions des [Function](./function.md) et [Subroutine](./subroutine.md).
