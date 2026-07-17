---
title: "Arc"
sidebar_label: "Arc"
---

## Arc

### Format

**arc** *x*,*y*,*largeur*,*hauteur*,*angledebut*,*angleouverture*\
**arc** ( *x*,*y*,*largeur*,*hauteur*,*angledebut*,*angleouverture* )

### Description

Trace un arc de cercle ou d’ellipse (partie de cercle ou d’ellipse) dans le rectangle défini par *x*, *y*, *largeur*, *hauteur*. Le centre du cercle/ellipse est le centre du rectangle. Les angles sont définis depuis la position 12h00 et dans le sens des aiguilles d’une montre en radian.

Arc peut également être utilisé pour tracer un cercle ou une ellipse non remplie (vide) en passant 2\*pi comme dernier paramètre et ainsi définir un arc faisant un tour complet.

### Example

    # arc_example.kbs
    # 2012-12-29 j.m.reneau
    #
    # example of arc statement added on 0.9.9.25

    clg
    color black
    for t = 1 to 100 step 3
       arc 150-t,150-t,t*2,t*2,0,pi*2*t/100
    next t

produira à l’écran:\
![arc_example](@site/static/img/wiki/arc_example.png)

### Disponible depuis la version

0.9.9.25

### See Also
