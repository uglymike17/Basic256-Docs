---
title: "Goto"
sidebar_label: "Goto"
---

## Goto (Statement)

### Format

goto [label](./labelprogramsyntax.md)

### Description

Jumps to the specified label.

### Example

    print "I";
    goto skipit
    print " don't";
    skipit: #
    print " want cookies."

will print

    I want cookies.

### See Also

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### Notes

As of version 0.9.9.2 [Goto](./goto.md), [Gosub](./gosubreturn.md), and labels can not be used in [Function](./function.md) and [Subroutine](./subroutine.md) definitions.
