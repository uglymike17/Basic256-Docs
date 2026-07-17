---
title: "If / Then"
sidebar_label: "If / Then"
---

## If / Then (Statement)

### Format

**if** [boolean_expression](./booleanexpressions.md) **then** [statement](./programsyntax.md)\
**if** [boolean_expression](./booleanexpressions.md) **then** [statement](./programsyntax.md) **else** [statement](./programsyntax.md)\
**if** [boolean_expression](./booleanexpressions.md) **then** [compound_statement](./compoundstatementprogramsyntax.md)\
**if** [boolean_expression](./booleanexpressions.md) **then** [compound_statement](./compoundstatementprogramsyntax.md) **else** [compound_statement](./compoundstatementprogramsyntax.md)\

------------------------------------------------------------------------

**if** [boolean_expression](./booleanexpressions.md) **then**\
[statement(s)](./programsyntax.md)\
**end if**

------------------------------------------------------------------------

**if** [boolean_expression](./booleanexpressions.md) **then**\
[statement(s)](./programsyntax.md)\
**else**\
[statement(s)](./programsyntax.md)\
**end if**

### Description

A single line IF evaluates *booleanexpr*, when true the [statement(s)](./programsyntax.md) following the then is executed, otherwise execution continues on the next line. There are also two forms of a multi-line if statement, one with a true block and one with a true and a false block of code to execute.

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

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|         |                                  |
|---------|----------------------------------|
| 0.9.4g  | Multiple line If/Then/Else/EndIf |
| 1.1.0.0 | Added single line If/Then/Else   |
