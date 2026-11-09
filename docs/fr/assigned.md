---
title: "Assigned"
sidebar_label: "Assigned"
---

## Assigned (Statement)

### Format

**assigned**([Variable](../en/variables.md))\
**assigned**([Array_Variable\[i](../en/arrayelements.md)\])\
**assigned**([Array_Variable\[row, col](../en/arrayelements.md)\])\
**assigned**([Map_Variable\[key](../en/mapelements.md)\])

returns [boolean_expression](../en/booleanexpressions.md)

### Description

Returns true if this variable, array element, or map element has been assigned a value, and false if it has not or if [Unassign](../en/unassign.md) has cleared it. It never stops the program, so it is the way to check a variable before reading it. For a map it tells whether the key is in the map, as [*key* in *map*](../en/mapelements.md) does. An element of an array made with [Dim](../en/dim.md) is assigned, because DIM fills it with 0.

### Example

    a = 5
    print assigned(a)
    print assigned(b)
    dim c(3)
    print assigned(c[1])
    unassign c[1]
    print assigned(c[1])
    map ages
    ages["Ann"] = 12
    print assigned(ages["Ann"])
    print assigned(ages["Bob"])

displays

    1
    0
    1
    0
    1
    0

### See Also

[ArrayBase](../en/arraybase.md), [ArrayLength](../en/arraylength.md), [Assigned](../en/assigned.md), [Dim](../en/dim.md), [Fill](../en/fill.md), [Map](../en/map.md), [Mat](../en/mat.md), [Redim](../en/redim.md), [TypeOf](../en/typeof.md), [Unassign](../en/unassign.md), [VariableWatch](../en/variablewatch.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New To Version |
| 2.3.2   | A map key that is not in the map returns false instead of raising error 126, "Map key has not been assigned a value" |
