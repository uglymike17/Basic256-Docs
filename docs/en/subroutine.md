---
title: "Subroutine"
sidebar_label: "Subroutine"
---

## Subroutine (Statement)

### Format

**subroutine** subroutine_name ( [function_variable_list](./functionvariablelist.md) )\
(tab)[statement(s)](./programsyntax.md)\
**end subroutine**

### Description

Create a subroutine (or subprogram) that will receive zero or more values and process those values. A subroutine does not return a value back to the user, it just does what you want it to do. Execution of a subroutine will terminate and control will be returned to the “[call](./call.md)ing” program when a [Return](./return.md) statement is executed or by allowing the *End Subroutine* statement to be reached. All variables used within the subroutine, that have not been previously declared as [Global](./global.md), will be local to the subroutine and will not change the values in the calling code.

Subroutine variables may a list of zero or more, comma separated, variables. Arrays and variables may be passed by reference using the [Ref](./ref.md) definition.

Subroutines should be defined anywhere on your program, but can not be defined within another [Function](./function.md), [Subroutine](./subroutine.md) or control block ([If/Then](./if.md), [Do/Until](./dountil.md), …)

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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|         |                |
|---------|----------------|
| 0.9.9.1 | New To Version |
