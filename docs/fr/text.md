---
title: "Text"
sidebar_label: "Text"
---

## Text

### Format

**text** *x*, *y*, *chainedecaracteres*\
**text** ( *x*, *y*, *chainedecaracteres* )

### Description

Dessine le texte *chainedecaracteres* dans la fenêtre graphique aux coordonnées *x*, *y* en utilisant la couleur courante (définie par [Color](./color.md)), et la police de caractère courante (définie par [Font](./font.md)).

### Example

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"
    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Affichera:\
![fonttext.png](@site/static/img/wiki/en/fonttext.png)

### Voir Aussi

[Color](./color.md), [Font](./font.md)

### Disponible à partir de la version

0.9.4
