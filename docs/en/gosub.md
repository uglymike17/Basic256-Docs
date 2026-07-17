---
title: "Gosub"
sidebar_label: "Gosub"
---

## Gosub (Statement)

### Format

**gosub** [label](./labelprogramsyntax.md)\
\
label:\
[statement(s)](./programsyntax.md)\
**return**

### Description

Jumps to the specified label. Upon encountering a [Return](./return.md) statement the program will continue at the line following the Gosub. Gosubs may call other gosubs but all variables are shared.

### Example

    a$ = "Hello"
    gosub double
    print a$
    b = 3
    gosub triple
    print b
    end

    double:
    a$ = a$ + a$
    return

    triple:
    b = b * 3
    return

will display\

    HelloHello
    9

### See Also

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### Notes

As of version 0.9.9.2 [Goto](./goto.md), [Gosub](./gosub.md), and labels can not be used in [Function](./function.md) and [Subroutine](./subroutine.md) definitions.
