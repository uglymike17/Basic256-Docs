---
title: "Countx"
sidebar_label: "Countx"
---

## Countx

### Format

**countx** ( *Chainedecaracteres* , *regex* )

### Description

Retourne le nombre de fois que l’expression régulière *regex* est trouvée dans *Chainedecaracteres*.

### Exemple

    print countx("Bonjour", "[oO]")
    print countx("Buffalo buffalo buffalo.","[Bb]uffalo")

Affichera :

    2
    3

### Disponible depuis la version

0.9.6.56
