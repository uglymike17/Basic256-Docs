---
title: "Global"
sidebar_label: "Global"
---

## Global

### Format

**global** *variable list*\

### Description

**Global** défini une liste de une ou plusieurs variables séparés par des virgules qui seront modifiables dans les sous-programmes [Subroutine](./subroutine.md) et les fonctions [Function](./function.md).Ces variables peuvent être des variables simples ou des tableaux.\
Les variables globales ne peuvent être définies qu’en dehors de tout bloque et avant toute utilisation de [Function](./function.md) ou [Subroutine](./subroutine.md).

### Exemple

    global a, name$
    dim a(10)
    dim name$(10)
    a = {1,4,6,8,45,34,76,98,43,12}
    name$ = {"Bob","Sue","Sam","Jim","Luis","Guido","Steve","Angela","Joe","Paul"} 
    t = 99
    call printnames()
    print t + " was unchanged - not global"
    end

    subroutine printnames()
      for t = 0 to name$[?] -1
        print a[t] + " " + name$[t]
      next t
    end subroutine

Affichera :\

    1 Bob
    4 Sue
    6 Sam
    8 Jim
    45 Luis
    34 Guido
    76 Steve
    98 Angela
    43 Joe
    12 Paul
    99 was unchanged - not global

### Voir Aussi

*(See [fr:start](./start.md).)*

### Disponible à partir de la version

0.9.9.1
