---
title: "Arraybase"
sidebar_label: "Arraybase"
---

## ArrayBase (Statement)

### Format

**arraybase** [0 or 1](./integerexpressions.md)\
**array base** [0 or 1](./integerexpressions.md)

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

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Assigned](./assigned.md), [Dim](./dim.md), [Fill](./fill.md), [Map](./map.md), [Redim](./redim.md), [TypeOf](./typeof.md), [Unassign](./unassign.md), [VariableWatch](./variablewatch.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New To Version |
