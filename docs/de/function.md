---
title: "Function"
sidebar_label: "Function"
---

## Function (Statement)

### Format

**function** function_name ( [function_variable_list](../en/functionvariablelist.md) )\
(tab)[statement(s)](../en/programsyntax.md)\
**end function**

### Description

Create a function that will receive zero or more values, process those values and return either a value. Strings, integers, and floating point numbers may be returned by a function and are returned by executing a [Return](../en/return.md) statement with a value ovby assigning the name of the function a value and allowing the *End Function* statement to be executed. All variables used within the function will be local to the function and will not change the values in the calling code.

Function variables may a list of zero or more, comma separated, variables. Arrays and variables may be passed by reference using the [Ref](../en/ref.md) definition.

Functions can be defined anywhere in your program, and can not be defined within another function, [Subroutine](../en/subroutine.md) or control block ([If/Then](../en/if.md), [Do/Until](../en/do.md), …)

### Example

    print double("Hello")
    print double(9)
    print triple(3)
    end

    function double(a)
       double = a + a
    end function

    function triple(b)
       return b * 3
    end function

will display\

    HelloHello
    18
    9

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|          |                                |
|----------|--------------------------------|
| 0.9.9.1  | New To Version                 |
| 1.99.99. | Removed variable/function type |
