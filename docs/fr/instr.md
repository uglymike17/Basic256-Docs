---
title: "Instr"
sidebar_label: "Instr"
---

## Instr

### Format

instr( *string1*, *string2* )

### Description

Vérifie si *string2* est inclus dans *sting1*. Si c’est le cas cette fonction retourne la position du premier caractère de *string2* dans *string1*. Sinon cette fonction retourne zéro (0).

### Note

La position commence à l’indice 1.

### Exemple

    print instr("Bonjour", "jour")

Affichera:

    4
