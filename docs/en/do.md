---
title: "Do"
sidebar_label: "Do"
---

## Do / Until (Statement)

### Format

**do**\
(tab)[statement(s)](./programsyntax.md)\
**until** [boolean_expression](./booleanexpressions.md)

### Description

Execute the [statement(s)](./programsyntax.md) inside the do loop until the [boolean_expression](./booleanexpressions.md) evaluates to true. Do / Until executes the statements one or more times. The test is done after each time the code in the loop is executed.

### Example

    t = 1
    do
      print t
      t = t + 1
    until t > 5

will print

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
