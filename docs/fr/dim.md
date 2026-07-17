---
title: "Dim"
sidebar_label: "Dim"
---

## Dim

### Format

**dim** *numericvariable* ( *integer* )\
**dim** *stringvariable\$* ( *integer* )\
**dim** *numericvariable* ( *rows* , *columns* )\
**dim** *stringvariable\$* ( *rows* , *columns* )

### Description

Retourne un nouveau tableau à 1 dimension de longueur *integer* ou à 2 dimensions qui peut être adressé par *row* et *column*. Selon l’assignation de la variable, un tableau numérique ou de chaînes de caractères est créé.\
Le premier élément d’un tableau a l’index 0 (zéro). Les index allant ainsi de 0 à {longueur}-1.

### Voir aussi

[Redim](./redim.md)

### Exemple

    dim z(5)
    z = {1, 2, 3, 4, 5}
    print z[0] + " " + z[4]

affichera

    1 5

### Exemple 2

    dim c$(4)
    c$ = {"à", "bulot, "laque", "L'anneau"}
    print c$[2] + " " + c$[3] + " ";
    print c$[1] + " " + c$[0] + "!"

affichera

    L'anneau laque à bulot!
