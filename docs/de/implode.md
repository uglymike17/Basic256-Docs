---
title: "Implode"
sidebar_label: "Implode"
---

## Implode (Function)

### Format

**implode** ( [variable\[](../en/arrays.md)\] )\
**implode** ( [variable\[](../en/arrays.md)\] , [delimiter_expression](../en/stringexpressions.md) )\
**implode** ( [variable\[](../en/arrays.md)\] , [row_delimiter_expression](../en/stringexpressions.md), [column_delimiter_expression](../en/stringexpressions.md) )\
**implode** ( [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) )\
**implode** ( [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) , [delimiter_expression](../en/stringexpressions.md) )\
**implode** ( [{ x1, y1, x2, y2, x3, y3 ... }](../en/lists.md) , [row_delimiter_expression](../en/stringexpressions.md), [column_delimiter_expression](../en/stringexpressions.md) )\
**implode** ( [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md) )\
**implode** ( [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md) , [delimiter_expression](../en/stringexpressions.md) )\
**implode** ( [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](../en/lists.md) , [row_delimiter_expression](../en/stringexpressions.md), [column_delimiter_expression](../en/stringexpressions.md) )\
returns [string_expression](../en/stringexpressions.md)

### Description

Append the elements in an array into a string. Optionally placing the [delimiter_expression](../en/stringexpressions.md) between the elements. This is functionally the opposite of the [Explode](../en/explode.md) function.

### Example

    dim a$(1)
    dim b(1)
    a$ = Explode("How now brown cow"," ")
    print implode(a$[],"-")
    print implode(a$[])
    b = Explode("1,2,3.33,4.44,5.55",",")
    print implode(b[],", ")
    print implode(b[])

will display

    How-now-brown-cow
    Hownowbrowncow
    1, 2, 3.33, 4.44, 5.55
    123.334.445.55

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|            |                                                   |
|------------|---------------------------------------------------|
| 0.9.6.57   | New to Version                                    |
| 1.99.99.55 | dimensional delimiters and list support was added |
| 1.99.99.72 | added required \[\] to passing variable array     |
