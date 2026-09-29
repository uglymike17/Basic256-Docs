---
title: "Sort"
sidebar_label: "Sort"
---

## Sort (Statement)

### Format

#### Sort a One Dimensional Array

**sort** [variable](./variables.md)\
**sort** [variable](./variables.md) , *options*

#### Sort the Rows of a Two Dimensional Array

**sort** [variable](./variables.md) , [column](./integerexpressions.md)\
**sort** [variable](./variables.md) , [column](./integerexpressions.md) , *options*

where *options* is one or more of **ascending**, **descending** and **ignorecase**, separated by commas, in any order. The array may also be written as [variable](./variables.md)\[\].

### Description

Sorts an array in place, so the array itself is put in order and nothing is returned.

A one dimensional array has its elements put in order. A two dimensional array has its rows put in order, using the values in one column as the key: each row moves as a whole, so a record stored across a row stays together. The column is counted from [ArrayBase](./arraybase.md), like any other index. If no column is given, the first column is used.

The options are:

| Option | Meaning |
|--------|---------|
| **ascending** | Smallest first. This is the default, so it only needs to be written to make a program easier to read. |
| **descending** | Largest first. |
| **ignorecase** | Compare strings without regard to upper and lower case, so "apple" comes before "Banana". Without it, all upper case letters come before all lower case ones. |

**ascending** and **descending** cannot both be given, and no option may be given twice; either is an error when the program is compiled.

#### What Comes Before What

- Numbers are compared by their value, whole numbers and decimals together.
- Strings are compared letter by letter. A string of digits such as "10" is still a string, and is not compared as the number 10.
- All numbers come before all strings. Descending reverses this, so the strings come first.
- Elements that have no value, because they were cleared with [Unassign](./unassign.md), always go to the end, whether ascending or descending.

#### Sorting on More Than One Column

The sort is stable: rows whose keys are equal keep the order they were in before. This means a table can be sorted on two columns by sorting it twice, first on the less important column and then on the more important one. In the example below, the players are sorted by name and then by score, so players with the same score come out in name order.

#### Errors

Sorting a [Map](./map.md), or a variable that holds a single value rather than an array, raises error 84 (ERROR_EXPECTEDARRAY). A column that is not in the array raises error 15 (ERROR_ARRAYINDEX). Both can be caught with [Try](./try.md) or [OnError](./onerror.md).

### Example

    names = {"pear", "apple", "Fig", "banana"}
    sort names
    print implode(names, ", ")
    sort names, ignorecase
    print implode(names, ", ")
    sort names, descending, ignorecase
    print implode(names, ", ")

    # a two dimensional array: each row is a player and their score
    dim scores(4, 2)
    scores[0,0] = "Wilma"  : scores[0,1] = 30
    scores[1,0] = "Fred"   : scores[1,1] = 35
    scores[2,0] = "Betty"  : scores[2,1] = 30
    scores[3,0] = "Barney" : scores[3,1] = 32

    # highest score first; players with the same score stay in name order
    sort scores, 0
    sort scores, 1, descending
    for row = 0 to 3
       print scores[row,0] + " " + scores[row,1]
    next row

will print

    Fig, apple, banana, pear
    apple, banana, Fig, pear
    pear, Fig, banana, apple
    Fred 35
    Barney 32
    Betty 30
    Wilma 30

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Assigned](./assigned.md), [Dim](./dim.md), [Fill](./fill.md), [Implode](./implode.md), [Map](./map.md), [Redim](./redim.md), [TypeOf](./typeof.md), [Unassign](./unassign.md)

### History

|         |                |
|---------|----------------|
| 2.3.0   | New To Version |
