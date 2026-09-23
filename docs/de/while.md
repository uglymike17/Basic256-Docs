---
title: "While"
sidebar_label: "While"
---

## While / End While (Statement)

### Format

**while** [boolean_expression](../en/booleanexpressions.md)\
(tab)[statement(s)](../en/programsyntax.md)\
**end while**

### Description

Execute the [statement(s)](../en/programsyntax.md) inside the while loop until the [boolean_expression](../en/booleanexpressions.md) evaluates to false. While / End While executes the statements zero or more times. The test is done before the code in the loop is executed.

### Example

    r = 1
    while r < 6
      print r
      r = r + 1
    end while

will display

    1
    2
    3
    4
    5

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|        |                |
|--------|----------------|
| 0.9.4g | New To Version |
