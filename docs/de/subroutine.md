---
title: "Subroutine"
sidebar_label: "Subroutine"
---

## Subroutine (Statement)

### Format

**subroutine** subroutine_name ( [function_variable_list](../en/functionvariablelist.md) )\
(tab)[statement(s)](../en/programsyntax.md)\
**end subroutine**

### Description

Create a subroutine (or subprogram) that will receive zero or more values and process those values. A subroutine does not return a value back to the user, it just does what you want it to do. Execution of a subroutine will terminate and control will be returned to the “[call](../en/call.md)ing” program when a [Return](../en/return.md) statement is executed or by allowing the *End Subroutine* statement to be reached. All variables used within the subroutine, that have not been previously declared as [Global](../en/global.md), will be local to the subroutine and will not change the values in the calling code.

Subroutine variables may a list of zero or more, comma separated, variables. Arrays and variables may be passed by reference using the [Ref](../en/ref.md) definition.

Subroutines should be defined anywhere on your program, but can not be defined within another [Function](../en/function.md), [Subroutine](../en/subroutine.md) or control block ([If/Then](../en/if.md), [Do/Until](../en/dountil.md), …)

### Example

    # 100 random circles
    clg
    for x = 1 to 100
       call draw()
    next x
    end

    function rnd(n)
       rnd = int(rand*n)
    end function

    subroutine draw()
       color rgb(rnd(256),rnd(256),rnd(256))
       circle rnd(graphwidth), rnd(graphheight), rnd(graphwidth/10)
    end subroutine

draws\
![Circles](@site/static/img/wiki/en/subroutine_circle.png)

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|         |                |
|---------|----------------|
| 0.9.9.1 | New To Version |
