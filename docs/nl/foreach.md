---
title: "Foreach"
sidebar_label: "Foreach"
---

## For Each / Next (Statement)

### Format

**for each** [variable](../en/variables.md) **in** [array](../en/arrays.md)\
(tab)[statement(s)](../en/programsyntax.md)\
**next** [variable](../en/variables.md)

**for each** [key](../en/variables.md) **in** [map](../en/maps.md)\
(tab)[statement(s)](../en/programsyntax.md)\
**next** [variable](../en/variables.md)

**for each** [key](../en/variables.md) **-\>** [value](../en/variables.md) **in** [map](../en/maps.md)\
(tab)[statement(s)](../en/programsyntax.md)\
**next** [variable](../en/variables.md)

### Description

The FOREACH and NEXT commands are used to loop through the elementf of a list, an array, or a maap. Each element will be returned in the variable.

If the array is two dimensional it will be traversed through the columns of row one then row two…

### Example

    for each i in {1,2,3,4}
        print i
    next i
    x = {'a','b','c'}
    for each i in x
        print i
    next i

displays

    1
    2
    3
    4
    a
    b
    c

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New To Version |
