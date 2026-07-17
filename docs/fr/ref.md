---
title: "Ref"
sidebar_label: "Ref"
---

## Ref

### Format

subroutine subroutinename ( ***ref(**variable**)**,variable* )\
call subroutinename ( // ref(variable),variable// )\
\
function functionname ( ***ref(**variable**)**,variable* )\
functionname ( *ref(variable),variable* )\
==== Description ====

Par défaut se sont des valeurs qui sont passés en paramètre à [Subroutines](./subroutine.md) et [Functions](./function.md). Cela signifie que les valeurs spécifiées à l’appel sont copiée dans les variables correspondantes qui sont entièrement locales à la fonction.\
La déclaration ref permet de passer la référence d’une variable ou d’un tableau à la routine. Quand une routine change la valeur d’une telle variable, les changements sont répercutés dans lavariable originale.

### Exemple

    dim a(10)
    call assignarray(ref(a),10)
    print "total="+totalarray(ref(a),10)
    end

    subroutine assignarray(ref(array), arraylen)
       # Initialise les éléments du tableau
       for t = 0 to arraylen-1
          array[t]= t*t
        print array[t]
       next t
    end subroutine

    function totalarray(ref(array),arraylen)
       totalarray = 0
       for t = 0 to arraylen-1
          totalarray += array[t]
       next t
    end function

Affichera\

    0
    1
    4
    9
    16
    25
    36
    49
    64
    81
    total=285

### Voir Aussi

*(See [fr:start](./start.md).)*

### Disponible depuis la version

0.9.9.13
