---
title: "Clickb"
sidebar_label: "Clickb"
---

## Clickb

### Format

**clickb**\
**clickb** ( )

### Description

Retourne quel(s) bouton(s) de la souris l’utilisateur a pressé (quand il est sur la partie graphic output). Retourne 0 si aucun clic n’a été détecté. Si plusieurs boutons ont été pressés la valeur est la somme des valeurs des boutons pressés.

| Valeurs retournées |                |
|---------------------|----------------|
| Valeur              | Bouton pressé |
| 0                   | aucun          |
| 1                   | gauche         |
| 2                   | droit          |
| 4                   | du centre      |

### Voir aussi

[Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Exemple

    # réinitialise le compte des clics
    clickclear
    # attend que l'utilisateur clique
    print "cliquez avec la souris sur la surface graphics output"
    while clickb = 0
      pause .01
    endwhile
    # Montre où l'utilisatur a cliqué
    print "L'utilisateur a cliqué le point de coordonnées (" + clickx + "," + clicky + ")"

### Disponible à partir de la version

0.9.4d
