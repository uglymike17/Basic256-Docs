---
title: "Function"
sidebar_label: "Function"
---

## Function (Statement)

### Format

**function** function_name ( [function_variable_list](./functionvariablelist.md) )\
(tab)[statement(s)](./programsyntax.md)\
**end function**

### Description

Create a function that will receive zero or more values, process those values and return either a value. Strings, integers, and floating point numbers may be returned by a function and are returned by executing a [Return](./return.md) statement with a value ovby assigning the name of the function a value and allowing the *End Function* statement to be executed. All variables used within the function will be local to the function and will not change the values in the calling code.

Function variables may a list of zero or more, comma separated, variables. Arrays and variables may be passed by reference using the [Ref](./ref.md) definition.

Functions can be defined anywhere in your program, and can not be defined within another function, [Subroutine](./subroutine.md) or control block ([If/Then](./if.md), [Do/Until](./do.md), …)

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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|          |                                |
|----------|--------------------------------|
| 0.9.9.1  | New To Version                 |
| 1.99.99. | Removed variable/function type |
