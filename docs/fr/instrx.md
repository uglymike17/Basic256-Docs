---
title: "Instrx"
sidebar_label: "Instrx"
---

## Instrx

### Format

**instrx** ( *haystack* , *regex* )\
**instrx** ( *haystack* , *regex* , *start* )

### Description

Recherche le texte représenté par la chaîne de caractère *regex* dans la chaîne de caractères *haystack*. Si la recherche est fructueuse, **instrx** retourne la position du premier caractère de la première occurrence trouvée, sinon elle retourne zéro (0).\
Un troisième paramètre optionnel *start* permet de spécifier à partir de quelle position dans la chaîne de caractères *haystack* la recherche va commencer.\
Contrairement à [Instr](./instr.md), avec **instrx** il est possible de s’abstenir de la casse dans avoir recours à un paramètre supplémentaire.

### Remarque

Les indices d’une chaîne de caractères commencent à 1.

### Exemple

    print instrx("HeLLo", "[Ll]o")
    print instrx("Hello, Kitti","[Ii]",10)

Affichera

    4
    12

### Disponible depuis la version

0.9.6.56
