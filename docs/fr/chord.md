---
title: "Chord"
sidebar_label: "Chord"
---

## Chord

### Format

**chord** *x*,*y*,*largeur*,*hauteur*,*angledepart*,*angleouvertue*\
**chord** ( *x*,*y*,*largeur*,*hauteur*,*angledepart*,*angleouvertue* )

### Description

Dessine une zone limitée par un arc de cercle et la droite joignant les extrémités de cet arc de cercle (corde), le tout inclus dans une rectangle défini par *x*, *y*, *largeur*, et *hauteur*. Le centre du cercle ou de l’ellipse est le centre du rectangle. Les angles sont définis à partir de la position midi et dans le sens des aiguilles d’une montre en radian. l’arc est tracé depuis l’angle *angledepart* et l’arc fait un angle de *angleouverture*.\
Comme le montre l’exemple suivant il est possible de dessiner un cercle ou un ellipse pleine en spécifiant un *angleouverture* à 2\*pi.

### Example

    # chord_example.kbs
    # 2012-12-29 j.m.reneau
    #
    # example of chord statement added on 0.9.9.25

    clg
    color black
    rect 140,50,20,150
    color blue
    chord 0,0,300,200,radians(-60), radians(120)
    chord 100,175,60,50,radians(90),radians(180)

    color green
    chord 200,200,25,75,0,pi*2

Affichera:\
![chord_example](@site/static/img/wiki/chord_example.png)

### Disponible à partir de la version

0.9.9.25

### Voir Aussi

*(See [fr:start](./start.md).)*
