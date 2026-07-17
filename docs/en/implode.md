---
title: "Implode"
sidebar_label: "Implode"
---

## Implode (Function)

### Format

**implode** ( [variable\[](./arrays.md)\] )\
**implode** ( [variable\[](./arrays.md)\] , [delimiter_expression](./stringexpressions.md) )\
**implode** ( [variable\[](./arrays.md)\] , [row_delimiter_expression](./stringexpressions.md), [column_delimiter_expression](./stringexpressions.md) )\
**implode** ( [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) )\
**implode** ( [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) , [delimiter_expression](./stringexpressions.md) )\
**implode** ( [{ x1, y1, x2, y2, x3, y3 ... }](./lists.md) , [row_delimiter_expression](./stringexpressions.md), [column_delimiter_expression](./stringexpressions.md) )\
**implode** ( [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md) )\
**implode** ( [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md) , [delimiter_expression](./stringexpressions.md) )\
**implode** ( [{ {x1, y1}, {x2, y2}, {x3, y3} ... }](./lists.md) , [row_delimiter_expression](./stringexpressions.md), [column_delimiter_expression](./stringexpressions.md) )\
returns [string_expression](./stringexpressions.md)

### Description

Append the elements in an array into a string. Optionally placing the [delimiter_expression](./stringexpressions.md) between the elements. This is functionally the opposite of the [Explode](./explode.md) function.

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

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                                                   |
|------------|---------------------------------------------------|
| 0.9.6.57   | New to Version                                    |
| 1.99.99.55 | dimensional delimiters and list support was added |
| 1.99.99.72 | added required \[\] to passing variable array     |
