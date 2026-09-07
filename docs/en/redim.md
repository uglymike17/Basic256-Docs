---
title: "Redim"
sidebar_label: "Redim"
---

## Redim (Statement)

### Format

**redim** [array_variable](./arrays.md) ( *integer* )\
**redim** [array_variable](./arrays.md) ( *integer* ) **fill** [expression](./expressions.md)\
**redim** [array_variable](./arrays.md) \[ *integer* \]\
**redim** [array_variable](./arrays.md) \[ *integer* \] **fill** [expression](./expressions.md)
**redim** [array_variable](./arrays.md) ( [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md))\
**redim** [array_variable](./arrays.md) ( [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md)) **fill** [expression](./expressions.md)\
**redim** [array_variable](./arrays.md) \[ [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md)\]\
**redim** [array_variable](./arrays.md) \[ [array_size_rows](./integerexpressions.md) , [array_size_columns](./integerexpressions.md)\] **fill** [expression](./expressions.md)\

### Description

Re-sizes a previously created array, preserving data. If an array is enlarged the new elements are given a starting value, so that they may be read straight away: the empty string for a variable whose name ends in **$**, and the whole number 0 for any other variable. Add the fill clause to give them a starting value of your own instead. Either way the fill reaches only the new elements, so the values already in the array always survive. If an array is reduced in size the elements trimmed from the end are lost.

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Assigned](./assigned.md), [Dim](./dim.md), [Fill](./fill.md), [Map](./map.md), [Mat](./mat.md), [Redim](./redim.md), [TypeOf](./typeof.md), [Unassign](./unassign.md), [VariableWatch](./variablewatch.md)

### History

|            |                                    |
|------------|------------------------------------|
| 0.9.5t     | New To Version                     |
| 1.99.99.57 | Added fill for unassigned elements |
| 2.1        | new elements are filled with 0 (or "" for a $ name) instead of being left unassigned |
