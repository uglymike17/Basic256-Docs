---
title: "Confirm"
sidebar_label: "Confirm"
---

## Confirm

### Format

**confirm** ( *message* )\
**confirm** ( *message* , *default*)

### Description

Cette fonction affiche une boîte message avec un bouton “Oui” (“Yes”) et un “Non” (“No”). Si l’utilisateur clique sur “Oui” la fonction retourne vrai, si l’utilisateur clique sur “Non” la fonction retourne faux. Il est possible de présélectionner le bouton par défaut en passant un second paramètre à vrai pour “Oui” ou faux pour “Non”.

### Exemple

    reponse = confirm("Voulez-vous continuer ?")
    if reponse then
       print "on continu"
    else
       print "on arrête tout"
       end
    end if

Affichera :\
![Confirm](@site/static/img/wiki/fr/confirm-fr.png)

### Voir Aussi

*(See [fr:start](./start.md).)*

### Disponible à partir de la version

0.9.9.42
