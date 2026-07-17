---
title: "Dim"
sidebar_label: "Dim"
---

## Dim (Statement)

### Format

#### Create a One Dimensional Array

**dim** [variable](./variables.md) ( [array_size](./integerexpressions.md) )\
**dim** [variable](./variables.md) ( [array_size](./integerexpressions.md) ) **fill** [expression](./expressions.md)\
**dim** [variable](./variables.md) \[ [array_size](./integerexpressions.md) \]\
**dim** [variable](./variables.md) \[ [array_size](./integerexpressions.md) \] **fill** [expression](./expressions.md)

#### Create a Two Dimensional Array

**dim** [variable](./variables.md) ( [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md))\
**dim** [variable](./variables.md) ( [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md)) **fill** [expression](./expressions.md)\
**dim** [variable](./variables.md) \[ [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md)\]\
**dim** [variable](./variables.md) \[ [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md)\] **fill** [expression](./expressions.md)

#### Use a List to Create and Fill an Array

**dim** [variable](./variables.md) = [{ list ... }](./lists.md)\
**dim** [variable](./variables.md)\[\] = [{ list ... }](./lists.md)\
**dim** [variable](./variables.md) = [{ { list ... }, { list ... } ... }](./lists.md)\
**dim** [variable](./variables.md)\[\] = [{ { list ... }, { list ... } ... }](./lists.md)

#### Copy One Array to Another

**dim** [variable](./variables.md) = [variable](./variables.md)\[\]\
**dim** [variable](./variables.md)\[\] = [variable](./variables.md)\[\]

#### Fill an Existing Array With a Single Value

**dim** [variable](./variables.md) **fill** [expression](./expressions.md)\
**dim** [variable](./variables.md)\[\] **fill** [expression](./expressions.md)

### Description

Returns a newly created single dimensional array of length *integer* or a 2 dimensional array that can be addressed by *row* and *column*. By default the elements in the array are left uninitialized (empty), You may add the fill option to fill all elements with a single value.\
The first element of an array has an index of 0 (zero). Indexes range from 0 to length-1.

The **dim** statement can also be used to create a new array that is a duplicate of another array. The form “DIM var = var” does this by dimensioning a new array in memory and copying all of the data from the original array.

### Example

    dim z = {1, 2, 3, 4, 5}
    print z[0] + " " + z[4]

will print

    1 5

### Example Two

    dim c(4)
    c[0] = "cow"
    c[1] = "brown"
    c[2] = "how"
    c[3] = "now"
    print c[2] + " " + c[3] + " ";
    print c[1] + " " + c[0] + "?"

will print

    how now brown cow?

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Assigned](./assigned.md), [Dim](./dim.md), [Fill](./fill.md), [Map](./map.md), [Redim](./redim.md), [TypeOf](./typeof.md), [Unassign](./unassign.md), [VariableWatch](./variablewatch.md)

### History

|            |                                                    |
|------------|----------------------------------------------------|
| 1.99.99.55 | Cleaned up documentation and added array copy.     |
| 1.99.99.56 | Added fill clause                                  |
| 1.99.99.57 | Added additional fill options                      |
| 1.99.99.72 | added the \[\] when setting one array from another |
