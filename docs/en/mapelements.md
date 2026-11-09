---
title: "Map Elements"
sidebar_label: "Map Elements"
---

## Map Elements

### Format

**map** \[ [key](./stringexpressions.md) \]

### Description

After you specify that a variable is a map, by using the [Map](./map.md) statement, you can set and retrieve values from the map using square braces containing the key.

Keys should be string values/expressions. If you use an integer or a float as the key, it will be converted to a string. Keys are case-sensitive: "Ann" and "ann" are two different keys.

Reading a key that is not in the map is error 126, "Map key has not been assigned a value", the same as reading a variable that was never assigned (how it is reported follows the "Runtime handling of unassigned variables" preference). To ask whether a key is there, use **in**: *key* **in** *map* is true when the map has that key and false when it has not, and never stops the program. [Assigned](./assigned.md) gives the same answer.

### Example

    map ages
    ages["Ann"] = 12
    ages["Cy"] = 9
    if "Bob" in ages then
        print "Bob is " + ages["Bob"]
    else
        print "Bob is not in the map"
    end if
    print "Ann" in ages

displays

    Bob is not in the map
    1

Before BASIC256 2.3.2, **in** and **assigned** also raised error 126 for a missing key.

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Assigned](./assigned.md), [Dim](./dim.md), [Fill](./fill.md), [Map](./map.md), [Redim](./redim.md), [TypeOf](./typeof.md), [Unassign](./unassign.md), [VariableWatch](./variablewatch.md)
