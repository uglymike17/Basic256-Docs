---
title: "Imgsave"
sidebar_label: "Imgsave"
---

## ImgSave

### Format

**imgsave** *filename*\
**imgsave** *filename*, *type*\
**imgsave** ( *filename* )\
**imgsave** ( *filename*, *type* )

### Description

Sauvegarde l’écran de sortie graphique actuel dans un fichier image.\
Par défaut l’image est enregistrée au format Portable Networks Graphics (PNG). Il est possible de spécifier le format de l’image avec le paramètre *type*, les types valides sont : “BMP”, “JPG”, “JPEG”, or “PNG”.\
Quelquefois les images sont sauvegardées avec un fond noir (là où rien n’a été dessiné. C’est à cause de l’instruction [CLG](./clg.md), qui défini la couleur de fond à “clear” (transparent). Et quand l’image est enregistrée la transparence est changée en noir. Pour éviter cela remplacer l’instruction CLG par le bout de code suivant:

    color white
    rect 0, 0, graphwidth, graphheight

### Exemple

    color white
    rect 0, 0, graphwidth, graphheight
    for t = 0 to 100
       color rand()*256, rand()* 256, rand()*256
       rect rand()*graphwidth, rand()*graphheight,rand()*graphwidth, rand()*graphheight
    next t
    imgsave "testimgsave1.png"
    imgsave "testimgsave2.jpg", "jpg"

### Voir Aussi

[ImgLoad](./imgload.md)

### Disponible à partir de la version

0.9.6.45
