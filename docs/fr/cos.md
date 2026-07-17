---
title: "Cos"
sidebar_label: "Cos"
---

## Cos

### Format

**cos** ( *expression* )

### Description

Calcule le cosinus de l‘*expression*. L’*expression* doit être exprimé en radians.

### Note

La fonction cos ne retourne pas un résultat exact (mais une valur approchée).

### Voir aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

### Exemple

    clg
    color black
    # Trace une ligne à travers la fenêtre graphic output
    line 0,150,300,150
    # point de départ
    lastx = 0
    lasty = cos(0) * 50 + 150
    # puis pas après pas trace la courbe du cosinus
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = cos(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

dessine\
![Cosine Curve](@site/static/img/wiki/fr/cos.jpg)
