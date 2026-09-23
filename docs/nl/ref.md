---
title: "Ref"
sidebar_label: "Ref"
---

## Ref (Function)

### Format

subroutine subroutinename ( ***ref(**variable**)**,variable* )\
call subroutinename ( // ref(variable),variable// )\
\
function functionname ( ***ref(**variable**)**,variable* )\
functionname ( *ref(variable),variable* )\
returns [integer_expression](../en/integerexpressions.md)

### Description

By default values are passed to [Subroutines](../en/subroutine.md) and [Functions](../en/function.md) by value. This means that the value that you specify when calling the routine is copied into a variable that belongs to and is totally local to the routine.\
The **ref()** declaration allows you to pass a reference to a variable or an array to the routine. When a routine changes the value of a referenced variable, the change is actually made to the original variable used in the routine call.

### Example

    dim a(10)
    call assignarray(ref(a),10)
    print "total="+totalarray(ref(a),10)
    end

    subroutine assignarray(ref(array), arraylen)
       # set array elements
       for t = 0 to arraylen-1
          array[t]= t*t
        print array[t]
       next t
    end subroutine

    function totalarray(ref(array),arraylen)
       totalarray = 0
       for t = 0 to arraylen-1
          totalarray += array[t]
       next t
    end function

displays\

    0
    1
    4
    9
    16
    25
    36
    49
    64
    81
    total=285

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.13 | New To Version |
