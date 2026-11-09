---
title: "Getcolor"
sidebar_label: "Getcolor"
---

## GetColor

### Format

getcolor\
getcolor()

### Description

Retourne la valeur ARGB (alpha, rouge, vert, bleu) de la couleur de tracé en cours (telle que définie par la commande color). ARGB est calculé à l’aide de la formule ((*alpha* \* 256 + *rouge*) \* 256 + *vert*) \* 256 + *bleu* où les quatre valeurs sont comprises entre 0 et 255 ; une couleur opaque donne donc un nombre négatif, comme [Rgb](./rgb.md). Si la couleur de tracé est définie à CLEAR, cette fonction retourne 0.

### Voir Aussi

[Color](./color.md), [Rgb](./rgb.md)

### Exemple

    color red
    print getcolor

Donnera le résultat :

    -65536

### Disponible à partir de a version

0.9.5m
