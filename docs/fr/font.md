---
title: "Font"
sidebar_label: "Font"
---

## Font

### Format

font *nomdefonte*, *point*, *epaisseur*

### Description

Définie la fonte de caractères qui sera utilisée par la commande **Text** comme étant *nomdefonte*. La taille sera donnée par *point* (en 1/72“). *epaisseur* est un nombre entre 0 et 100 qui définit l’épaisseur de tracé des caractères (Léger=25, Normal=50, épais=75).

### Exemple

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"
    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Donnera le resultat suivant:\
![fonttext.png](@site/static/img/wiki/en/fonttext.png)

### Voir Aussi

[Text](./text.md)

### Disponible depuis la version

0.9.4
