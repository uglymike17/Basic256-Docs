---
title: "Spriteslice"
sidebar_label: "Spriteslice"
---

## Spriteslice

### Format

**spriteslice** *numerosprite*, *x*, *y*, *largeur*, *hauteur*\
**spriteslice** ( *numerosprite*, *x*, *y*, *largeur*, *hauteur* )

### Description

Créé un sprite à partir d’une région donné de l’affichage graphique définie par le coin supérieur gauche (*x*, *y*), sa *largeur* et sa *hauteur*. Le “sprite” est dès lors actif et déplaçable mais il ne s’affichera à l’écran que lors de l’appel à la fonction [Spriteshow](./spriteshow.md).
Il est recommandé d’effacer la fenêtre graphique avec [Clg](./clg.md) avant de dessiner le “sprite” puis d’utiliser cette fonction. Les zones non dessinées seront transparentes quand le “sprite” sera affiché à l’écran. Les pixels transparents peuvent également être dessinés avec la couleur CLEAR.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6o
