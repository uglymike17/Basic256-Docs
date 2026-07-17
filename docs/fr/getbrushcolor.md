---
title: "Getbrushcolor"
sidebar_label: "Getbrushcolor"
---

## GetBrushColor

### Format

getbrushcolor\
getbrushcolor()

### Description

Retourne la valeur ARGB (aplha red green blue) du pinceau de dessin actuel. ARGB est calculé avec la formule ( (a \* 256 + r) \* 256 + b) \* 256 + g ou a,r,g, et b sont des valeurs entre 0 et 255. Si la couleur de dessin a été initialisé à CLEAR, **getbrushcolor** retournera 0.

### Voir Aussi

[Color](./color.md), [Rgb](./rgb.md)

### Exemple

    color red, blue
    print getcolor

Affichera :

    -16776961

### Disponible depuis la version

0.9.9.28
