---
title: "Function"
sidebar_label: "Function"
---

## Function

### Format

**function** functionname ( *variable list* )\
*statements*\
**end function**

**function** functionname\$ ( *variable list* )\
*statements*\
**end function**

### Description

Créé une fonction qui peut recevoir zéro ou plus de paramètres et traiter ces paramètres et retourner une valeur numérique ou chaîne de caractères. Pour retourner une valeur au programme il faut assigner cette dernière a une variable portant le nom de la fonction et rendre le contrôle au programme appelant soit avec une instruction [Return](./return.md) soit avec l’instruction *End Suubroutine*.\
Toutes les variables utilisées dans la fonction et qui n’ont pas été déclarées avec [Global](./global.md), seront locales a la fonction et ne changeront pas les valeurs d’éventuelles variable de même nom du programme appelant.\
Les paramètres sont une liste de variables (zéro ou plus) numériques ou chaîne de caractères séparés par des virgules. Les tableaux et les variables peuvent être passés par référence en utilisant [Ref](./ref.md) dans la définition.\
Les fonctions devront être définis à la fin du programme et il est impossible de l’imbriquer dans une autre [Function](./function.md), [Subroutine](./subroutine.md) ou bloque de contrôle ([If/Then](./ifthen.md), [Do/Until](./dountil.md), …)

### Exemple

    print double$("Bonjour")
    print triple(3)
    end

    function double$(a$)
       double$ = a$ + a$
    end function

    function triple(b)
       triple = b * 3
       return
       triple = 9999    # code never gets executed
    end function

Affichera :\

    BonjourBonjour
    9

### Voir Aussi

*(See [fr:start](./start.md).)*

### Disponible à partir de la version

0.9.9.1
