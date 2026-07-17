---
title: "Whileendwhile"
sidebar_label: "Whileendwhile"
---

## While / End While

### Format

**while** *expression_booléenne*\
*instruction(s)*\
**end while**

### Description

Exécute les *instruction(s)* dans la boucle **while** tant que *expression_booléenne* est évaluée à vraie. La boucle **While** / **End While** exécute les *instructions(s)* zéro fois ou plus. Le test est effectué avant de rentrer dans la boucle.

### Voir Aussi

[Do / Until](./dountil.md), [For / Next](./fornext.md)

### Exemple

    r = 1
    while r < 6
      print r
      r = r + 1
    end while

Affichera :

    1
    2
    3
    4
    5

### Disponible à partir de la version

0.9.4g
