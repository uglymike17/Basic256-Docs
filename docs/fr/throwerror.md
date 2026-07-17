---
title: "Throwerror"
sidebar_label: "Throwerror"
---

## ThrowError

### Format

**throwerror** ( *integer* )\
**throwerror** *integer*

### Description

Simule une erreur d’exécution. Cette erreur peut être gérée par le gestionnaire d’erreurs mis en place par [Onerror](./onerror.md).

### Exemple

    onerror errortrap
    print "avant erreur"
    throwerror 99
    print "après erreur"
    end

    subroutine errortrap()
    print "l'erreur " + lasterror + " est arrivée"
    end subroutine

Affichera :\

    avant erreur
    l'erreur 99 est arrivée
    après erreur

### Voir Aussi

[Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [ThrowError](./throwerror.md)

### Disponible à partir de la version

0.9.6.75
