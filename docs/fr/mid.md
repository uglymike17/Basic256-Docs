---
title: "Mid"
sidebar_label: "Mid"
---

## Mid

### Format

**mid**( *string*, *caractere_debut*, *longueur*)

### Description

Retourne un morceau de la chaîne de caractères *string*, la position du début est donné par *caractere_debut*, et la longueur par *longueur* ou la fin de la chaîne de caractères.

### Voir Aussi

[Left](./left.md), [Right](./right.md)

### Exemple

    print mid("Bonjour", 2, 3)
    print mid("Bonjour", 2, 999)

Affichera :

    onj
    onjour
