---
title: "Gosub"
sidebar_label: "Gosub"
---

## Gosub (Statement)

### Format

**gosub** [label](../en/labelprogramsyntax.md)\
\
label:\
[statement(s)](../en/programsyntax.md)\
**return**

### Description

Jumps to the specified label. Upon encountering a [Return](../en/return.md) statement the program will continue at the line following the Gosub. Gosubs may call other gosubs but all variables are shared.

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

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### Notes

As of version 0.9.9.2 [Goto](../en/goto.md), [Gosub](../en/gosub.md), and labels can not be used in [Function](../en/function.md) and [Subroutine](../en/subroutine.md) definitions.
