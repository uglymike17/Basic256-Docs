---
title: "Case"
sidebar_label: "Case"
---

## Begin Case / Case / End Case (Statement)

### Format

**begin case**\
(tab)**case** [boolean_expression](./booleanexpressions.md)\
(tab)(tab)[statement(s)](./programsyntax.md)\
(tab)**case** [boolean_expression](./booleanexpressions.md)\
(tab)(tab)[statement(s)](./programsyntax.md)\
(tab)**else**\
(tab)(tab)[statement(s)](./programsyntax.md)\
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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|         |                |
|---------|----------------|
| 1.0.0.9 | New To Version |
