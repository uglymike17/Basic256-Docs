---
title: "Rem"
sidebar_label: "Rem"
---

## Rem (Statement)

### Format

**rem** *comment*\
**\#** *comment*

### Description

Line comment. A line beginning with REM (or the shortened \#) is ignored.

A remark may also be written inside the braces { } of a [list](../en/lists.md) or a [map list](../en/maplist.md) that is spread over several lines, so that the rows of a table can be annotated as they are laid out.

### Example

    grid = {          # the first six whole numbers
       # the top row
       {1,2,3},
       # and the bottom row
       {4,5,6}
    }

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|         |                                                          |
|---------|----------------------------------------------------------|
| 2.1.2   | A remark may be written inside the braces of a list       |
