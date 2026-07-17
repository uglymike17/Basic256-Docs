---
title: "Sin"
sidebar_label: "Sin"
---

## Sin

### Format

**sin** ( *expression* )

### Description

Calcul et retourne le sinus de *expression*. *Expression* doit être exprimé en radians.

### Note

La fonction sinus ne produit pas un résultat exacte.

### Voir Aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Tan](./tan.md)

### Exemple

    clg
    color black
    # On trace une ligne d'axe dans la fenêtre d'affichage graphique
    line 0,150,300,150
    # On commence à x=0
    lastx = 0
    lasty = sin(0) * 50 + 150
    # Ensuite on trace une ligne entre chaque point de la courbe de la fonction
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = sin(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

Donnera le resultat suivant :
![Sine Curve](@site/static/img/wiki/fr/sin.jpg)
