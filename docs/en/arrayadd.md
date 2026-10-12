---
title: "ArrayAdd"
sidebar_label: "ArrayAdd"
---

## ArrayAdd (Statement)

### Format

**arrayadd** [variable](./variables.md) , [expression](./expressions.md)\
**arrayadd** [variable](./variables.md) , [expression](./expressions.md) , [expression](./expressions.md) ...\
**arrayadd** [variable](./variables.md) , [array](./arrays.md)

The array may also be written as [variable](./variables.md)\[\].

### Description

Adds values to the end of an array, making it bigger. Everything already in the array stays where it was.

- **Two or more values** are added as one new row at the bottom of a two dimensional array. There must be as many values as the array has columns.
- **One value** added to a one dimensional array makes it one element longer, so a list can be grown one item at a time.
- **An array** can be given instead of the values. A one dimensional array is used as a row of values, so `arrayadd points, {x, y}` does the same as `arrayadd points, x, y`. A two dimensional array has all of its rows added, one after another.

If the variable has nothing in it yet, ArrayAdd makes it into an array the shape of what is being added. This means a table or a list can be built up in a loop without a [Dim](./dim.md) first.

A one dimensional array is stored as a two dimensional array with one row. So adding two or more values to it adds a second row, which needs the list to be exactly that long: `arrayadd a, 3, 4` turns `{1, 2}` into a 2 by 2 array. To lengthen a list by several elements, add them one at a time.

#### Errors

A row with a different number of values from the array's columns raises error 14 (ERROR_ARRAYNITEMS), and the array is left as it was. Adding to a [Map](./map.md), or to a variable that holds a single value rather than an array, raises error 84 (ERROR_EXPECTEDARRAY). Both can be caught with [Try](./try.md) or [OnError](./onerror.md).

### Example

    # a table of points, built up one row at a time
    arrayadd points, 10, 20
    arrayadd points, 30, 40
    arrayadd points, {50, 60}
    for row = 0 to points[?,] - 1
       print points[row,0] + ", " + points[row,1]
    next row

    # a list, one element at a time
    names = {"Ann", "Bob"}
    arrayadd names, "Cy"
    print implode(names, ", ")

    try
       arrayadd points, 70, 80, 90
    catch
       print "error " + lasterror
    end try

will print

    10, 20
    30, 40
    50, 60
    Ann, Bob, Cy
    error 14

### See Also

[ArrayBase](./arraybase.md), [ArrayLength](./arraylength.md), [Dim](./dim.md), [Fill](./fill.md), [Implode](./implode.md), [Map](./map.md), [Redim](./redim.md), [Sort](./sort.md), [Unassign](./unassign.md)

### History

|         |                |
|---------|----------------|
| 2.3.1   | New To Version |
