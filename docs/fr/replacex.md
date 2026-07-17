---
title: "Replacex"
sidebar_label: "Replacex"
---

## Replacex

### Formato

**replacex** ( *haystack* , *regex* , *tostring* )

### Description

Retourne une chaîne de caractère basée sur *haystack* où toutes les occurrences correspondant à l’expression régulière *regex* ont été remplacées pas *tostring*.

### Exemple

    a$ = "Ouvi bossa e saí da fossa"
    print Replacex(a$,"bossa","sopa")
    print Replacex(a$, "[bf]ossa", "sopa")

Affichera :

    Ouvi sopa e saí da fossa
    Ouvi sopa e saí da sopa

### Disponible depuis la version

0.9.6.56
