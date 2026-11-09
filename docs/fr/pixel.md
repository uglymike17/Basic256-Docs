---
title: "Pixel"
sidebar_label: "Pixel"
---

## Pixel

### Format

**pixel** (*x*, *y* )

### Description

Retourne la valeur RGB du pixel aux coordonnés *x*,*y* . La valeur comprend l’alpha, comme celle de [Rgb](./rgb.md). Si le pixel n’a jamais été dessiné depuis le dernier appel à la commande [Clg](./clg.md) ou s’il a été dessiné avec la couleur CLEAR, il est transparent et cette fonction retourne 0 ; le blanc retourne -1. Les sprites ne sont pas lus. En dehors de la zone graphique, le résultat n’a pas de sens.

### Voir Aussi

[Rgb](./rgb.md)

### Disponible depuis la version

0.9.5m
