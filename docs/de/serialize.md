---
title: "Serialize"
sidebar_label: "Serialize"
---

## Serialize (Function)

### Format

**serialize** ( [variable\[](../en/arrays.md)\] )\
**serialize** ( [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) )

returns [string_expression](../en/stringexpressions.md)

### Description

The serialize statement creates a string that encodes the dimensions, types, and values in an array. The [Unserialize](../en/unserialize.md) function will take a “serialized” string and return an array or list.

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

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|            |                                               |
|------------|-----------------------------------------------|
| 1.99.99.66 | New to Version                                |
| 1.99.99.72 | added required \[\] to passing variable array |
