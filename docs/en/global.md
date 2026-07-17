---
title: "Global"
sidebar_label: "Global"
---

## Global (Statement)

### Format

**global** [global_variable_list](./variables.md)\

### Description

Global will define a list of one or more (comma separated) variables that will be accessible and changeable within [Subroutine](./subroutine.md)s and [Function](./function.md)s. These variables can be simple variables, or array variables.

Global variables can only be defined outside of any block statement and should be defined BEFORE you call a [Function](./function.md) or [Subroutine](./subroutine.md).

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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### New To Version

0.9.9.1
