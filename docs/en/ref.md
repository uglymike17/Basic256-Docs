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
returns [integer_expression](./integerexpressions.md)

### Description

By default values are passed to [Subroutines](./subroutine.md) and [Functions](./function.md) by value. This means that the value that you specify when calling the routine is copied into a variable that belongs to and is totally local to the routine.\
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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.13 | New To Version |
