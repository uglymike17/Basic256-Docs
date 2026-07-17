---
title: "Typeof"
sidebar_label: "Typeof"
---

## TypeOf (Function)

### Format

**typeof** ( expression )\
**typeof** ( variable )\
returns [integer_expression](./integerexpressions.md)

### Description

Returns a number representing the type of value that was passed.

| Return Values   |       |                     |
|-----------------|-------|---------------------|
| Constant        | Value | Type                |
| TYPE_UNASSIGNED | 0     | Unassigned Variable |
| TYPE_INT        | 1     | Integer             |
| TYPE_FLOAT      | 2     | Decimal Number      |
| TYPE_STRING     | 3     | String              |
| TYPE_ARRAY      | 4     | Array Variable      |
| TYPE_REF        | 5     | Variable Reference  |
| TYPE_MAP        | 6     | Map                 |

### Example

    print typeof(a)
    print typeof(1)
    print typeof(42.345)
    print typeof("stuff")
    dim b(99)
    print typeof(b)

Will display something like

    0
    1
    2
    3
    4

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Assigned](./assigned.md), [Dim](./dim.md), [Fill](./fill.md), [Map](./map.md), [Redim](./redim.md), [TypeOf](./typeof.md), [Unassign](./unassign.md), [VariableWatch](./variablewatch.md)

### History

|           |                |
|-----------|----------------|
| 1.99.99.8 | New To Version |
| 2.0.0.0   | Added Map      |
