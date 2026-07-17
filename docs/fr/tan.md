---
title: "Tan"
sidebar_label: "Tan"
---

## Tan

### Format

**tan** ( *expression* )

### Description

Calcul et retourne la tangente de *expression* qui doit être donné en radians.

### Remarque

La fonction tangente ne produit pas un résultat exacte.

### Voir Aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Sin](./sin.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md)

### Example

    clg
    color black
    # On trace l'axe des x
    line 0,150,300,150
    # on calcul le premier point
    lastx = 0
    lasty = tan(0) * 50 + 150
    # on trace une ligne entre chaque point de la courbe
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = tan(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

Donnera le résultat suivant:\
![](@site/static/img/wiki/fr/tan.jpg)
