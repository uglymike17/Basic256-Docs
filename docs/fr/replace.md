---
title: "Replace"
sidebar_label: "Replace"
---

## Replace

### Format

**replace** ( *haystack* , *fromstring* , *tostring* )\
**replace** ( *haystack* , *fromstring* , *tostring* , *caseinsensitive*)

### Description

Retourne une nouvelle chaîne de caractères où toutes les occurrences de *fromstring* ont été remplacées par *tostring* dans la chaîne originale *haystack*. En spécifiant un quatrième paramètre *caseinsensitive* à vrai (true) la recherche ne tiens pas compte de la casse.

### Exemple

    a$ = "We all live in a yellow submarine, yellow submarine, yellow submarine."
    print Replace(a$,"yellow","blue")
    print Replace(a$, "we", "Beatles", true)

Affichera :

    We all live in a blue submarine, blue submarine, blue submarine.
    Beatles all live in a yellow submarine, yellow submarine, yellow submarine.

### Disponible depuis la version

0.9.6.55
