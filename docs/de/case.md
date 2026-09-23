---
title: "Case"
sidebar_label: "Case"
---

## Begin Case / Case / End Case (Statement)

### Format

**begin case**\
(tab)**case** [boolean_expression](../en/booleanexpressions.md)\
(tab)(tab)[statement(s)](../en/programsyntax.md)\
(tab)**case** [boolean_expression](../en/booleanexpressions.md)\
(tab)(tab)[statement(s)](../en/programsyntax.md)\
(tab)**else**\
(tab)(tab)[statement(s)](../en/programsyntax.md)\
**end case**

### Description

The **case** structure allows the programmer to create a structure to test multiple conditions. Only the first true condition is executed and all of the other conditions are skipped. If there is an optional **else** as the last condition this will be executed if no other conditions are met.

### Example

    for t = 1 to 10
       begin case
          case t < 3
             print t + " is less than 3"
          case t < 7
             print t + " is less than 7 but 3 or larger"
          else
             print t +  " is 7 or larger"
       end case
    next t

displays:

    1 is less than 3
    2 is less than 3
    3 is less than 7 but 3 or larger
    4 is less than 7 but 3 or larger
    5 is less than 7 but 3 or larger
    6 is less than 7 but 3 or larger
    7 is 7 or larger
    8 is 7 or larger
    9 is 7 or larger
    10 is 7 or larger

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|         |                |
|---------|----------------|
| 1.0.0.9 | New To Version |
