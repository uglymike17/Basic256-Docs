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
    rect 0,0,500,500
    color red
    rect 80,80,250,250
    color blue
    rect 160,160,250,250
    color green
    rect 20,240,460,40

Affichera :\
![rect.png](@site/static/img/wiki/en/rect.png)
