---
title: "For"
sidebar_label: "For"
---

## For / Next (Statement)

### Format

**for** [variable](../en/variables.md) = [start_expression](../en/numericexpressions.md) **to** [stop_expression](../en/numericexpressions.md) \[ **step** [step_expression](../en/numericexpressions.md) \]\
(tab)[statement(s)](../en/programsyntax.md)\
**next** [variable](../en/variables.md)

### Description

The FOR and NEXT commands are used in conjunction to execute a command or group of commands a specified number of times. When the FOR command is first encountered, the variable is set to [start_expression](../en/numericexpressions.md).\
After each NEXT command, variable is incremented by 1 (the default), or by [step_expression](../en/numericexpressions.md) if the optional STEP is used, until the variable is greater than [stop_expression](../en/numericexpressions.md) for positive step values, or less than [stop_expression](../en/numericexpressions.md) for negative step values.

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

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|         |                                            |
|---------|--------------------------------------------|
| 2.0.0.0 | Variable in Next statement is now optional |
