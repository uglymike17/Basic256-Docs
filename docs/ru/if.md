---
title: "If / Then"
sidebar_label: "If / Then"
---

## If / Then (Statement)

### Format

**if** [boolean_expression](../en/booleanexpressions.md) **then** [statement](../en/programsyntax.md)\
**if** [boolean_expression](../en/booleanexpressions.md) **then** [statement](../en/programsyntax.md) **else** [statement](../en/programsyntax.md)\
**if** [boolean_expression](../en/booleanexpressions.md) **then** [compound_statement](../en/compoundstatementprogramsyntax.md)\
**if** [boolean_expression](../en/booleanexpressions.md) **then** [compound_statement](../en/compoundstatementprogramsyntax.md) **else** [compound_statement](../en/compoundstatementprogramsyntax.md)\

------------------------------------------------------------------------

**if** [boolean_expression](../en/booleanexpressions.md) **then**\
[statement(s)](../en/programsyntax.md)\
**end if**

------------------------------------------------------------------------

**if** [boolean_expression](../en/booleanexpressions.md) **then**\
[statement(s)](../en/programsyntax.md)\
**else**\
[statement(s)](../en/programsyntax.md)\
**end if**

### Description

A single line IF evaluates *booleanexpr*, when true the [statement(s)](../en/programsyntax.md) following the then is executed, otherwise execution continues on the next line. There are also two forms of a multi-line if statement, one with a true block and one with a true and a false block of code to execute.

### Example

    print "Guess my letter - press a key"
    # wait for the user to press a key
    do
      a = key
      pause .01
    until a <> 0
    #
    if chr(a) = "Z" then
       print "Yippie, you pressed the Z key!!!"
    else
       print "darn, you pressed something else."
    end if
    #
    end

### See Also

[Begin Case / Case / End Case](../en/case.md), [Call](../en/call.md), [Continue Do](../en/continuedo.md), [Continue For](../en/continuefor.md), [Continue While](../en/continuewhile.md), [Do / Until](../en/do.md), [End](../en/end.md), [Exit Do](../en/exitdo.md), [Exit For](../en/exitfor.md), [Exit While](../en/exitwhile.md), [For / Next](../en/for.md), [For Each / Next](../en/foreach.md), [Function](../en/function.md), [Global](../en/global.md), [Goto](../en/goto.md), [Gosub](../en/gosub.md), [If Then](../en/if.md), [Pause](../en/pause.md), [Ref](../en/ref.md), [Rem](../en/rem.md), [Return](../en/return.md), [Subroutine](../en/subroutine.md), [While / End While](../en/while.md)

### History

|         |                                  |
|---------|----------------------------------|
| 0.9.4g  | Multiple line If/Then/Else/EndIf |
| 1.1.0.0 | Added single line If/Then/Else   |
