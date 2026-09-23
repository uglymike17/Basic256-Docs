---
title: "Arraybase"
sidebar_label: "Arraybase"
---

## ArrayBase (Statement)

### Format

**arraybase** [0 or 1](../en/integerexpressions.md)\
**array base** [0 or 1](../en/integerexpressions.md)

### Description

By default an integer from 0 to one less than the length of an array is used to index values within an array. This behavior can be modified with the arraybase statement. You may specify either a zero (for default indexing) or 1 for indexing starting at 1 and going to the length of the array.

### Example

    arraybase 1
    ar = {44,55,66,77,88}
    for i = 1 to ar[?]
        ? i, ar[i]
    next i

    1            44
    2            55
    3            66
    4            77
    5            88

## GetArrayBase (Function)

### Format

**getarraybase**\
**getarraybase** ( )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the array base currently in effect — 0 or 1 — as set by the [ArrayBase](../en/arraybase.md) statement. The default is 0.

This is useful in a [Function](../en/function.md), [Subroutine](../en/subroutine.md), or [Module](../en/modules.md) that must index arrays correctly no matter which base the calling program has chosen.

### Example

    b = getarraybase
    print "indexing starts at " + b

    arraybase 1
    print "indexing starts at " + getarraybase()

will print

    indexing starts at 0
    indexing starts at 1

### See Also

[ArrayBase](../en/arraybase.md), [ArrayLength](../en/arraylength.md), [Assigned](../en/assigned.md), [Dim](../en/dim.md), [Fill](../en/fill.md), [GetArrayBase](../en/arraybase.md), [Map](../en/map.md), [Mat](../en/mat.md), [Redim](../en/redim.md), [TypeOf](../en/typeof.md), [Unassign](../en/unassign.md), [VariableWatch](../en/variablewatch.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New To Version |
