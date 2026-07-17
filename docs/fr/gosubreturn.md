---
title: "Gosubreturn"
sidebar_label: "Gosubreturn"
---

## Gosub / Return

### Format

**gosub** *label*\
\
label:\
*instruction(s)*\
**return**

### Description

Exécute et attend le sous-programme commençant à l’étiquette *label*. Le sous-programme se termine par **return**, l’exécution du programme se poursuit alors à l’instruction qui suit **gosub**. le commandes **gosub** peuvent être imbriquées.

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

[Goto](./goto.md)
