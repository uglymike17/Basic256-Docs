---
title: "For"
sidebar_label: "For"
---

## For / Next (Statement)

### Format

**for** [variable](./variables.md) = [start_expression](./numericexpressions.md) **to** [stop_expression](./numericexpressions.md) \[ **step** [step_expression](./numericexpressions.md) \]\
(tab)[statement(s)](./programsyntax.md)\
**next** [variable](./variables.md)

### Description

The FOR and NEXT commands are used in conjunction to execute a command or group of commands a specified number of times. When the FOR command is first encountered, the variable is set to [start_expression](./numericexpressions.md).\
After each NEXT command, variable is incremented by 1 (the default), or by [step_expression](./numericexpressions.md) if the optional STEP is used, until the variable is greater than [stop_expression](./numericexpressions.md) for positive step values, or less than [stop_expression](./numericexpressions.md) for negative step values.

### Example

    for i = 1 to 5
        print i
    next i

    print "after the for " + i

    for k = 5 to 1 step -1
        ? k
    next

displays

    1
    2
    3
    4
    5
    after the for 6
    5
    4
    3
    2
    1

### See Also

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|         |                                            |
|---------|--------------------------------------------|
| 2.0.0.0 | Variable in Next statement is now optional |
