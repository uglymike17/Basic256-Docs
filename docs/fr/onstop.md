---
title: "Onstop"
sidebar_label: "Onstop"
---

## OnStop (Statement)

### Format

**onstop** [subroutine_name()](../en/labelprogramsyntax.md)

### Description

Causes the subroutine to be executed when the stop button is pressed. If the subroutine is allowed to return, the program will continue running as if not stopped.

### Example

    onstop handleStop()

    subroutine handleStop()
        x = confirm("stop program")
        if x then end
    end subroutine

    for t = 1 to 10
    print t
    pause 1
    next t

    print 'done'

### See Also

[Lasterror](../en/lasterror.md), [Lasterrorextra](../en/lasterrorextra.md), [Lasterrorline](../en/lasterrorline.md), [Lasterrormessage](../en/lasterrormessage.md), [Offerror](../en/offerror.md), [Onerror](../en/onerror.md), [OnStop](../en/onstop.md), [ThrowError](../en/throwerror.md), [Try / Catch / EndTry](../en/try.md)

### History

|          |                |
|----------|----------------|
| 2.0.99.1 | New To Version |
