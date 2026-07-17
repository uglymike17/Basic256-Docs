---
title: "Implode"
sidebar_label: "Implode"
---

## Implode

### Format

**implode** ( *arrayvariable* )\
**implode** ( *arrayvariable* , *delimiter* )

### Description

Ajoute les éléments d’un tableau à la suite les un des autres dans la chaîne de caractère retournée. En option il est possible d’ajouter un séparateur *delimiter* entre chaque élément. Cette fonction est ainsi l’opposé de la fonction [Explode](./explode.md).

### Exemple

    dim a$(1)
    dim b(1)
    a$ = Explode("How now brown cow"," ")
    print implode(a$,"-")
    print implode(a$)
    b = Explode("1,2,3.33,4.44,5.55",",")
    print implode(b,", ")
    print implode(b)

Affichera :

    How-now-brown-cow
    Hownowbrowncow
    1, 2, 3.33, 4.44, 5.55
    123.334.445.55

### Disponible depuis la version

0.9.6.57
