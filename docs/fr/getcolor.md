---
title: "Getcolor"
sidebar_label: "Getcolor"
---

## GetColor

### Format

getcolor\
getcolor()

### Description

Retourne la valeur RGB de la couleur de tracé en cours (telle que définie par la commande color). RGB est calculé à l’aide de la formule ((*rouge* \* 256) + *vert* \* 256) + *bleu* où *rouge*, *vert*, et *bleu* sont compris entre 0 et 255. Si la couleur de tracé est définie à CLEAR, cette fonction retourne -1.

### Voir Aussi

[Color](./color.md), [Rgb](./rgb.md)

### Exemple

    color red
    print getcolor

Donnera le résultat :

    16711680

### Disponible à partir de a version

0.9.5m
