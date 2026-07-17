---
title: "While"
sidebar_label: "While"
---

## While / End While (Statement)

### Format

**while** [boolean_expression](./booleanexpressions.md)\
(tab)[statement(s)](./programsyntax.md)\
**end while**

### Description

Execute the [statement(s)](./programsyntax.md) inside the while loop until the [boolean_expression](./booleanexpressions.md) evaluates to false. While / End While executes the statements zero or more times. The test is done before the code in the loop is executed.

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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|        |                |
|--------|----------------|
| 0.9.4g | New To Version |
