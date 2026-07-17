---
title: "Readbyte"
sidebar_label: "Readbyte"
---

## ReadByte

### Format

**readbyte**\
**readbyte**()\
**readbyte**(*filenumber*)

### Description

Lit et retourne le prochain octet depuis un fichier. Si le numéro de fichier n’est pas spécifié zéro (0) est utilisé par défaut.\
Le fichier en question doit avoir été ouvert grâce à la fonction [Openb](./open.md), de cette façon le codes ASCII CR/LF ne seront pas interprétés et traduits.

### Example

    cls
    f$ = "binary.dat"

    print "nouveau fichier"
    openb f$
    reset
    for t = 1 to 20
       n = r()
       print n+" ";
       writebyte n
    next t
    print
    close

    print "ouverture et lecture"
    openb f$
    while not eof
       print readbyte()+" ";
    end while
    print

    print "positionnement en 10 et lecture"
    seek 10
    while not eof
       print readbyte()+" ";
    end while
    print

    close

    end

    function r()
       r = int(rand*256)
    end function

Affichera quelque cose comme :

    nouveau fichier
    181 163 155 23 46 93 122 212 178 225 1 62 113 130 202 52 185 51 37 165 
    ouverture et lecture
    181 163 155 23 46 93 122 212 178 225 1 62 113 130 202 52 185 51 37 165 
    positionnement en 10 et lecture
    1 62 113 130 202 52 185 51 37 165 

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Openb](./open.md), [ReadByte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)
