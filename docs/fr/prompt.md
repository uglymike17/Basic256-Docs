---
title: "Prompt"
sidebar_label: "Prompt"
---

## Prompt

### Format

**prompt** ( *message* )\
**prompt** ( *message* , *default*)

### Description

Cette fonction affiche une boîte de dialogue de saisie et retourne une chaîne de caractères contenant ce que l’utilisateur a tapé. Il est possible de spécifier une valeur par défaut sous forme d’un chaîne de caractères en second paramètre.

### Example

    a$ = prompt("Dans quel département habitez vous?","31")
    if a$ = "31" then
       print "Haute-Garonne."
    else
       print "Quelque par en France"
    end if

Affichera :\
![Prompt](@site/static/img/wiki/fr/prompt-fr.png)

### See Also

*(See [fr:start](./start.md).)*

### Disponible à partir de la version

0.9.9.42
