---
title: "Do"
sidebar_label: "Do"
---

## Do / Until (Statement)

### Format

**do**\
(tab)[statement(s)](../en/programsyntax.md)\
**until** [boolean_expression](../en/booleanexpressions.md)

### Description

Execute the [statement(s)](../en/programsyntax.md) inside the do loop until the [boolean_expression](../en/booleanexpressions.md) evaluates to true. Do / Until executes the statements one or more times. The test is done after each time the code in the loop is executed.

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

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|        |                |
|--------|----------------|
| 0.9.4g | New To Version |
