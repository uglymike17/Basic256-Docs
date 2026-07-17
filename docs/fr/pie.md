---
title: "Pie"
sidebar_label: "Pie"
---

## Pie

### Format

**pie** *x*,*y*,*largeur*,*hauteur*,*angledepart*,*angleouverture*\
**pie** ( *x*,*y*,*largeur*,*hauteur*,*angledepart*,*angleouverture* )

### Description

Dessine une part de camembert (comme celles des histogrammes circulaires), le tout inclus dans un rectangle défini par *x*, *y*, *largeur*, et *hauteur*. Le centre du cercle ou de l’ellipse est le centre du rectangle. Les angles sont définis à partir de la position midi et dans le sens des aiguilles d’une montre en radian. l’arc est tracé depuis l’angle *angledepart* et l’arc fait un angle de *angleouverture*.

### Exemple

    # pie_chart.kbs
    # 2012-12-29 j.m.reneau
    # 2013-08-27 Traduction des commentaires en français par Philippe RICHARD
    # exemple avec l'instruction pie ajouté dans la version 0.9.9.25

    dim data(5)
    data = {1,3,5,7,10}
    dim colors(5)
    colors = {red,blue,green,yellow,cyan}
    total = 0
    for n = 0 to data[?]-1
       total += data[n]
    next n

    clg
    font "Arial", 20,100
    startangle = 0
    for n = 0 to data[?]-1
       # Calcul la largeur de la part de camembert en radian
       slicesize = 2*pi*data[n]/total
       color colors[n]
       pie 50,50,200,200,startangle,slicesize
       # Dessine le nombre correspondant en dehors de la part de camembert
       text 140+sin(startangle+slicesize*.5)*120, 140-cos(startangle+slicesize*.5)*120, data[n]
       startangle += slicesize
    next n

Ceci affichera:\
![Pie_Chart](@site/static/img/wiki/pie_chart.png)

### Disponible depuis la version

0.9.9.25

### Voir Aussi

*(See [fr:start](./start.md).)*
