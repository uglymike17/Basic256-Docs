---
title: "Count"
sidebar_label: "Count"
---

## Count

### Format

**count** ( *meuledefoin* , *aiguille* )\
**count** ( *meuledefoin* , *aiguille* , *caseinsensitive*)

### Description

Retourne le nombre de fois que la chaîne de caractères *aiguille* apparaît dans *meuledefoin*. Il est également possible de spécifier en troisième paramètre si la recherche ne doit pas tenir compte de la casse.

### Exemple

    print count("Bonjour", "jour")
    print count("Buffalo buffalo buffalo.","BUFFALO",true)

Affichera :

    1
    3

### Disponible depuis la version

0.9.6.55
