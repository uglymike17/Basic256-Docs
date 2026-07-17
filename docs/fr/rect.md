---
title: "Rect"
sidebar_label: "Rect"
---

## Rect

### Format

**rect** *x*,*y*,*largeur*,*hauteur*\
**rect** ( *x*, *y*, *largeur*, *hauteur* )

### Description

Dessine un rectangle de dimensions *largeur* x *hauteur* pixels en utilisant la couleur en cours. Le sommet en haut à gauche du rectangle sera positionné aux coordonnées *x*,*y*.

### Example

    color white
    rect 0,0,300,300
    color red
    rect 50,50,150,150
    color blue
    rect 100,100,150,150
    color green
    rect 10,140,280,20

Affichera :\
![rect.png](@site/static/img/wiki/en/rect.png)
