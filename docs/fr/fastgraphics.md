---
title: "Fastgraphics"
sidebar_label: "Fastgraphics"
---

## FastGraphics

### Format

fastgraphics

### Description

Active le mode **fastgraphics**, jusqu’à ce que le programme soit stoppé. Dans ce mode l’affichage graphique n’est mis à jour que lors de l’appel de la commande **REFRESH**. Ce mode peut ête utilisé pour augmenter significativement la vitesse d’affichage des graphiques complexes et diminuer (voir annuler) l’effet de clignotement.

### Remarque

Lorsque l’on créé des animations il est recommandé de procéder à tout le tracé du graphique dans un sous programme et d’utiliser un seul **REFRESH** une fois que tout a été tracé dans l’image.

### Voir Aussi

[Refresh](./refresh.md)
