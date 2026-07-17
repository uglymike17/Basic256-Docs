---
title: "Serialize"
sidebar_label: "Serialize"
---

## Serialize (Function)

### Format

**serialize** ( [variable\[](./arrays.md)\] )\
**serialize** ( [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) )

returns [string_expression](./stringexpressions.md)

### Description

The serialize statement creates a string that encodes the dimensions, types, and values in an array. The [Unserialize](./unserialize.md) function will take a “serialized” string and return an array or list.

Often developers will create a serialized string so that they may save the values in an array into a data file or a database table.

#### Format of the Serialized Array

The string representing the array‘s data is a series of values separated by a colon ’:‘. The first value represents the number of rows and the second the number of columns. A one dimensional array will have a single row (1), with the length in the second value. The elements of the array follow. The first character of each value contains a marker byte defining the data type (’0’-unassigned, ‘1’-integer, ‘2’-float, and ‘3’-string). The actual array data follows. Strings are converted to hexadecimal so that any Unicode or special characters will be stored without change. The strings returned will contain ONLY ‘:’, ‘.’, ‘0’-‘9’, and ‘a’-‘f’.

The array {1,2,3,4,5.555,“six”} would be serialized to “1:6:11:12:13:14:25.555:3736978” and the array {{1,2},{3,4}} would be serialized to “2:2:11:12:13:14”.

### Example

    dim a(3,4)
    a[0,0] = 0
    a[1,1] = 1
    a[2,2] = 2
    a[0,1] = 'string with "quotes"'
    a[1,2] = 1.234

    stuff = serialize(a[])
    print stuff

    dim c = unserialize(stuff)
    # the array c is an exact copy of the array a

will display

    3:4:10:3737472696e672077697468202271756f74657322:0:0:0:11:21.234:0:0:0:12:0

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                                               |
|------------|-----------------------------------------------|
| 1.99.99.66 | New to Version                                |
| 1.99.99.72 | added required \[\] to passing variable array |
