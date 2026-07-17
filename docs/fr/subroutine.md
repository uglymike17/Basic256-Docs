---
title: "Subroutine"
sidebar_label: "Subroutine"
---

## Subroutine

### Format

**subroutine** subroutinename ( *variable list* )\
*statements*\
**end subroutine**

**subroutine** subroutinename\$ ( *variable list* )\
*statements*\
**end subroutine**

### Description

Créé un sous-programme (routine) qui peut recevoir zéro ou plus de paramètres et traiter ces paramètres. Un sous-programme ne retourne aucune valeur, il exécute juste une série d’instructions qui dépendent (ou non) des paramètres passés. Lors de l’exécution d’un sous-programme, si une instruction [Return](./return.md) est rencontrée où si l’instruction *End Suubroutine* est atteinte, celui-ci se termine et le contrôle est rendu au programme appelant à l’instruction qui suit le [call](./call.md).\
Toutes les variables utilisées dans le sous-programme est qui n’ont pas été déclarées avec [Global](./global.md), seront locales au sous-programme et ne changeront pas les valeurs d’éventuelles variable de même nom du programme appelant.\
Les paramètres sont une liste de variables (zéro ou plus) numériques ou chaîne de caractères séparés par des virgules.Les tableaux et les variables peuvent être passés par référence en utilisant [Ref](./ref.md) dans la définition.\
Les sous-programme devront être définis à la fin du programme et il est impossible de l’imbriquer dans une autre [Function](./function.md), [Subroutine](./subroutine.md) ou bloque de contrôle ([If/Then](./ifthen.md), [Do/Until](./dountil.md), …)

### Exemple

    # 100 random circles
    clg
    for x = 1 to 100
       call draw()
    next x
    end

    function rnd(n)
       rnd = int(rand*n)
    end function

    subroutine draw()
       color rnd(256),rnd(256),rnd(256)
       circle rnd(graphwidth), rnd(graphheight), rnd(graphwidth/10)
    end subroutine

Affichera\
![Circles](@site/static/img/wiki/en/subroutine_circle.png)

### Voir Aussi

*(See [fr:start](./start.md).)*

### Disponible depuis la version

0.9.9.1
