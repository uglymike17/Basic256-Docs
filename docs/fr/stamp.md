---
title: "Stamp"
sidebar_label: "Stamp"
---

## Stamp

### Format

**stamp** *x*, *y*, *tableau*\
**stamp** *x*, *y*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *echelle*, *tableau*\
**stamp** *x*, *y*, *echelle*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *echelle*, *rotation*, *tableau*\
**stamp** *x*, *y*, *echelle*, *rotation*, {x1, y1, x2, y2, x3, y3 …}

### Description

Dessine un polygone dons le coin supérieur gauche sera positionné aux coordonnées *x*, *y*. Il est possible de définir une *echelle* de tracé ( 1 = taille normale )ainsi qu’une *rotation* définie à partir de l’origine dans le sens des aiguilles d’une montre en radian.\
Les sommets du polygone sont donnés par des coordonnées x,y stockées à la suite les unes des autres dans un tableau. La taille du tableau divisée par 2 définie le nombre de sommets. Cette fonction peut aussi être appelée avec en paramètre un tableau anonyme ( une suite de coordonnées x,y enfermées entre des accolades {}).

### Voir Aussi

[Poly](./poly.md)

### Exemple

Les deux codes ci-dessous produiront le même affichage.

    clg
    color blue
    rect 0,0,300,300
    color green
    dim tri(6)
    tri = {0, 0, 100, 100, 0, 100}
    # stamp du triangle en 0,0 (taille normale)
    stamp 100, 100, tri
    # stamp du triangle en 200,100 (taille moitié)
    stamp 200, 100, .5, tri

    clg
    color blue
    rect 0,0,300,300
    color green
    # stamp du triangle en 0,0 (taille normale)
    stamp 100, 100, {0, 0, 100, 100, 0, 100}
    # stamp du triangle en 200,100 (taille moitié)
    stamp 200, 100, .5, {0, 0, 100, 100, 0, 100}

Le réultat sera:\
![stamp.png](@site/static/img/wiki/en/stamp.png)

### Disponible depuis la version

0.9.4
