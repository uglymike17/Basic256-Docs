---
title: "Poly"
sidebar_label: "Poly"
---

## Poly

### Format

**poly** *variable_tableau_numerique*\
**poly** {x1, y1, x2, y2, x3, y3 …}

### Description

Trace un polygone. Les sommets du polygone sont donnés par des coordonnées x,y stockées à la suite les unes des autres dans un tableau. La taille du tableau divisée par 2 définie le nombre de sommets. Cette fonction peut aussi être appelée avec en paramètre un tableau anonyme ( une suite de coordonnées x,y enfermées entre des accolades {}).

### Remarque

Avant la version 0.9.4 il fallait également passer le nombre de sommets en paramètre.

### Voir aussi

[Stamp](./stamp.md)

### Exemple

    color blue
    rect 0,0,300,300
    color green
    dim tri(6)
    tri = {100, 100, 200, 200, 100, 200}
    poly tri

    color blue
    rect 0,0,300,300
    color green
    poly {100, 100, 200, 200, 100, 200}

Les deux codes ci-dessus produiront le résultat suivant:\
![poly.png](@site/static/img/wiki/en/poly.png)
