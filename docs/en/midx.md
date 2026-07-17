---
title: "Midx"
sidebar_label: "Midx"
---

## MidX (Function)

### Format

**midx** ( [haystack_string_expression](./stringexpressions.md) , [regular_expression](./regularexpressions.md) )\
**midx** ( [haystack_string_expression](./stringexpressions.md) , [regular_expression](./regularexpressions.md) , [start_expression](./integerexpressions.md) )

returns [string_expression](./stringexpressions.md)

### Description

Returns the first substring that was matched by the regular expression. If the expression does not match anything the empty string “” will be returned. You may also specify an optional starting location for the search to begin [start_expression](./integerexpressions.md).

### Note

String indices begin at 1.

### Example

    print midx("HeLLo", "[Ll]o")
    print midx("Hello, Kitti","[Ii]",10)

will display

    Lo
    i

### Notes

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](./regexminimal.md) statement.

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                           |
|------------|---------------------------|
| 1.1.2.7    | New To Version            |
| 1.99.99.53 | Added start position \< 0 |
