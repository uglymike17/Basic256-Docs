---
title: "Explode"
sidebar_label: "Explode"
---

## Explode

### Format

stringarrayvariable\$ = **explode** ( *string* , *delimiter* )\
stringarrayvariable\$ = **explode** ( *string* , *delimiter* , *caseinsensitive* )\
arrayvariable\$ = **explode** ( *string* , *delimiter* )\
arrayvariable\$ = **explode** ( *string* , *delimiter* , *caseinsensitive* )

### Description

Découpe la chaîne de caractères *string* en plusieurs sous-chaînes, la séparation des sous-chaînes est détecté par *delimiter*. Les sous-chaînes sont renvoyées dans un tableau numérique ou de de chaînes de caractères. Le tableau sera automatiquement redimensionné pour loger le nombre exacte de sous-chaînes disponibles.\
Il est possible de spécifier un troisième paramètre (à vrai: *true*) pour indiquer que la recherche ne tiens pas compte de la casse.

### Exemple

    # Sépare à chaque espace
    a$ = "We all live in a yellow submarine."
    print a$
    w$ = explode(a$," ")
    for t = 0 to w$[?]-1
       print "w$["+t+"]=" + w$[t]
    next t

    # Sépare à chaque A ou a
    a$ = "klj;lkjalkjAlkj;"
    print a$
    w$ = explode(a$,"A",true)
    for t = 0 to w$[?]-1
       print "w$["+t+"]=" + w$[t]
    next t

    # Sépare chaque nombre à chaque virgule
    a$="1,2,3,77,foo,9.987,6.45"
    print a$
    n = explode(a$,",")
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
    w$[6]=submarine.
    klj;lkjalkjAlkj;
    w$[0]=klj;lkj
    w$[1]=lkj
    w$[2]=lkj;
    1,2,3,77,foo,9.987,6.45
    n[0]=1
    n[1]=2
    n[2]=3
    n[3]=77
    n[4]=0
    n[5]=9.987
    n[6]=6.45

### Disponible depuis la version

0.9.6.55
