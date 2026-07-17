---
title: "If / Then"
sidebar_label: "If / Then"
---

## If / Then

### Format

**if** *expression_booléenne* **then** *instruction*

------------------------------------------------------------------------

**if** *expression_booléenne* **then**\
*instruction(s)*\
**end if**

------------------------------------------------------------------------

**if** *expression_booléenne* **then**\
*instruction(s)*\
**else**\
*instruction(s)*\
**end if**

### Description

un **if** (si) en une ligne évalue l‘*expression_booléenne*, si cette dernière est vrai alors l’*instruction* qui suit **then** (alors) est exécuté. Sinon l‘exécution continue à la ligne qui suit le **if**.
Il existe aussi deux autre formes de **if** (si) sur de multiple-lignes, une forme avec seulement un bloc d’*instruction(s)* **then** (alors) exécuté si l‘*expression_booléenne* et vraie, et une autre forme avec en plus un bloc d’*instruction(s)* **else** (sinon) exécuté si l’*expression_booléenne* et fausse.

### Exemple

    print "Devinez la lettre à laquelle je pense - pressez la touche"
    # Attend que l'utilisateur presse une touche
    do
      a = key
      pause .01
    until a <> 0
    #
    if chr(a) = "Z" then
       print "Youpi, vous avez trouvé c'est Z !!!"
    else
       print "Eh non, c'est pas ça."
    end if
    #
    end

### Disponible depuis la version

0.9.4g
