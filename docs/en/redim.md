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

Re-sizes a previously created array, preserving data. If an array is enlarged and the fill clause is not included then the new elements will not be initialized (and will be unassigned). If an array is reduced in size the elements trimmed from the end are lost.

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Assigned](./assigned.md), [Dim](./dim.md), [Fill](./fill.md), [Map](./map.md), [Redim](./redim.md), [TypeOf](./typeof.md), [Unassign](./unassign.md), [VariableWatch](./variablewatch.md)

### History

|            |                                    |
|------------|------------------------------------|
| 0.9.5t     | New To Version                     |
| 1.99.99.57 | Added fill for unassigned elements |
