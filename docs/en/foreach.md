---
title: "Foreach"
sidebar_label: "Foreach"
---

## For Each / Next (Statement)

### Format

**for each** [variable](./variables.md) **in** [array](./arrays.md)\
(tab)[statement(s)](./programsyntax.md)\
**next** [variable](./variables.md)

**for each** [key](./variables.md) **in** [map](./maps.md)\
(tab)[statement(s)](./programsyntax.md)\
**next** [variable](./variables.md)

**for each** [key](./variables.md) **-\>** [value](./variables.md) **in** [map](./maps.md)\
(tab)[statement(s)](./programsyntax.md)\
**next** [variable](./variables.md)

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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New To Version |
