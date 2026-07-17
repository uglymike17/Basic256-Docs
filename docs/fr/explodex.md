---
title: "Explodex"
sidebar_label: "Explodex"
---

## Explodex

### Format

stringarrayvariable\$ = **explodex** ( *string* , *regex* )\
arrayvariable\$ = **explodex** ( *string* , *regex* )

### Description

Découpe la chaîne de caractères *string* en sous-chaîne, la séparation des sous-chaînes est détectée par l’expression régulière *regex*. Les sous-chaînes sont renvoyées dans un tableau numérique ou de chaînes de caractères. Le tableau sera automatiquement redimensionné pour loger le nombre exacte de sous-chaînes disponibles.\
Contrairement à EXPLODE, avec EXPLODEX il est possible d’ignorer la casse sans avoir besoin d’un troisième paramètre. Voir l’exemple ci-dessous ”\[Aa\]\[Nn\]\[Dd\]”.

### Example

    # explode avec regex //[,]* //
    a$ = "We all live in a yellow submarine, yellow submarine, yellow, submarine."
    w$ = explodex(a$,"[,]* ")
    for t = 0 to w$[?]-1
       print "w$["+t+"]=" + w$[t]
    next t

    # explode avec regex //[Aa][Nn][Dd]//
    a$="1 and 2 AND 3 and 5 aND 99 AND 8.88 aNd 6.45"
    n = explodex(a$,"[Aa][Nn][Dd]")
    for t = 0 to n[?]-1
       print "n["+t+"]=" + n[t]
    next t

Affichera :

    We all live in a yellow submarine.
    w$[0]=We
    w$[1]=all
    w$[2]=live
    w$[3]=in
    w$[4]=a
    w$[5]=yellow
    w$[6]=submarine
    w$[7]=yellow
    w$[8]=submarine
    w$[9]=yellow
    w$[10]=submarine.
    n[0]=1
    n[1]=2
    n[2]=3
    n[3]=5
    n[4]=99
    n[5]=8.88
    n[6]=6.45

### Disponible à partir de la version

0.9.6.56
