---
title: "Global"
sidebar_label: "Global"
---

## Global (Statement)

### Format

**global** [global_variable_list](../en/variables.md)\

### Description

Global will define a list of one or more (comma separated) variables that will be accessible and changeable within [Subroutine](../en/subroutine.md)s and [Function](../en/function.md)s. These variables can be simple variables, or array variables.

Global variables can only be defined outside of any block statement and should be defined BEFORE you call a [Function](../en/function.md) or [Subroutine](../en/subroutine.md).

### Example

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

displays\

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

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### New To Version

0.9.9.1
