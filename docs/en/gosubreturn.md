---
title: "Gosub / Return"
sidebar_label: "Gosub / Return"
---

## Gosub / Return

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

==== See Also ====
[Goto](./goto.md), [Return](./return.md)

### Notes

As of version 0.9.9.2 [Goto](./goto.md), [Gosub](./gosubreturn.md), and labels can not be used in [Function](./function.md) and [Subroutine](./subroutine.md) definitions.
