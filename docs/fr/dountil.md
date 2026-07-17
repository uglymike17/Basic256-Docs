---
title: "Dountil"
sidebar_label: "Dountil"
---

## Do / Until

### Format

**do**\
 *Instruction(s)*\
**until** *ExpressionBooléenne*

### Description

Exécute en boucle la ou les *Instruction(s)* jusqu‘à ce que l’*ExpressionBooléenne* soit évaluée à vraie. Do / Until exécute la ou les *Instruction(s)* une ou plusieurs fois. Le test est fait après chaque exécution du code dans la boucle.

### Voir Aussi

[For / Next](./fornext.md), [While / End While](./whileendwhile.md)

### Exemple

    t = 1
    do
      print t
      t = t + 1
    until t > 5

Produira le résultat suivant:

    1
    2
    3
    4
    5

### Disponible à partir de la version

0.9.4g
