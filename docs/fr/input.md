---
title: "Input"
sidebar_label: "Input"
---

## Input

### Format

**input** *expression*, *variablechainedecaracteres*\
**input** *expression*, *variablenumerique*\
**input** *variablechainedecaracteres*\
**input** *variablenumerique*

### Description

Attend que l’utilisateur tape une ligne de texte au clavier dans la fenêtre d’affichage texte de l’environnement. Quand l’utilisateur appui sur Entrée ou Retour, la ligne saisie est stockée dans *variablechainedecaracteres* ou *variablenumerique*.\
Il est possible d’afficher un texte d’invite en fournissant le paramètre optionnel *expression*.\
Si une variable numérique est spécifiée en paramètre mais que la donnée saisie n’est pas numérique, la variable numérique serra alors initialisée à zéro (0).\
Une référence à un élément de tableau peut également être passé en paramètre.
