---
title: "Key"
sidebar_label: "Key"
---

## Key

### Format

key\
key()

### Description

Retourne un entier correspondant au code de la touche clavier pressée. Cette fonction est non bloquante, si aucune touche n’a été pressée depuis le dernier appel de **key** elle retourne zéro (0).

### Remarque

    if key = 47 then print key

ne produira pas l’effet escompté (afficher 47) car appeler **key** deux fois de suite produira deux résultats différents. Le code suivant est correct:

    a = key
    if a = 47 then print a
