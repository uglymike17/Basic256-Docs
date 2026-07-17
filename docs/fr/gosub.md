---
title: "Gosub"
sidebar_label: "Gosub"
---

## Gosub

### Format

**gosub** *label*\
\
label:\
*instruction(s)*\
**return**

### Description

Exécute et attend le sous-programme commençant à l’étiquette *label*. Le sous-programme se termine par [Return](./return.md), l’exécution du programme se poursuit alors à l’instruction qui suit **gosub**. le commandes **gosub** peuvent être imbriquées.

### Exemple

    print "Début du";
    gosub progtxt
    gosub sousprog
    print "Milieu du";
    gosub progtxt
    gosub sousprog
    print "Fin du";
    gosub progtxt
    end

    sousprog:
    print "-> exécution du sous";
    gosub progtxt
    return

    progtxt:
    print " programme"
    return

Affichera :

    Début du programme
    -> exécution du sous programme
    Milieu du programme
    -> exécution du sous programme
    Fin du programme

### Voir Aussi

[Goto](./goto.md), [Return](./return.md)

### Notes

Les instruction [Goto](./goto.md), [Gosub](./gosub.md), et “labels” de la version 0.9.9.2, ne peuvent pas être utilisées dans les définitions des [Function](./function.md) et [Subroutine](./subroutine.md).
