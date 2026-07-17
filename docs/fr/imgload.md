---
title: "Imgload"
sidebar_label: "Imgload"
---

## Imgload

### Format

**imgload** *x*, *y*, *nomfichier*\
**imgload** *x*, *y*, *echelle*, *nomfichier*\
**imgload** *x*, *y*, *echelle*, *rotation*, *nomfichier*\

### Description

Charge une image à partir d’un fichier et l’affiche dans la fenêtre d’affichage graphique.\
Les paramètre *x* et *y* indiquent ou doit être positionné le centre de l’image dans la fenêtre graphique. Cette façon de faire est différente de toutes les autres fonctionnalités graphiques. L’axe de rotation éventuel sera aussi ce même point central.\
Cette fonction est capable de lire la plupart des formats graphiques courant : BMP (Windows Bitmap), GIF (Graphic Interchange Format),JPG/JPEG (Joint Photographic Experts Group), et PNG (Portable Network Graphics).\
**Imgload** met éventuellement à l’échelle l’image avec le paramètre *echelle* (1 = taille normale). Elle permet aussi d’effectuer une rotation de l’image en passant le paramètre *rotation* qui est l’angle de rotation en radian dans le sens des aiguilles d’une montre autour du centre de l’image.

### Disponible à partir de la version

0.9.6l
