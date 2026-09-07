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

A remark may also be written inside the braces { } of a [list](./lists.md) or a [map list](./maplist.md) that is spread over several lines, so that the rows of a table can be annotated as they are laid out.

### Example

    grid = {          # the first six whole numbers
       # the top row
       {1,2,3},
       # and the bottom row
       {4,5,6}
    }

### See Also

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|         |                                                          |
|---------|----------------------------------------------------------|
| 2.1.2   | A remark may be written inside the braces of a list       |
