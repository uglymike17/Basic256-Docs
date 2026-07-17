---
title: "Sound"
sidebar_label: "Sound"
---

## Sound

### Format

**sound** *fréquence*, *durée*\
**sound** ( *fréquence*, *durée* )\
**sound** ( *tableau* )\
**sound** *tableau*\
**sound** {fréquence1, durée1, fréquence2, durée2, …}

### Description

Joue un son sur le haut parleur de l’ordinateur. La fréquence est donnée en Hz (Hertz) et la durée en millisecondes (il faut 1000 millisecondes pour faire une seconde). Un tableau ou une liste de fréquences et de durées peuvent aussi être passés en paramètre. Cette dernière façon de procéder permet d’éviter les cliquetis entre les fréquences (qui se produit si on passe plusieurs instructions **sound** à la suite.\
Le support du son a été ajouté sous LINUX à partir de la version 0.9.5g. Sous Windows à partir de la version 0.9.5h **sound** utilise le périphérique de son par défaut.

### Voir Aussi

[Volume](./volume.md)
