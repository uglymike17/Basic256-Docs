---
title: "Midx"
sidebar_label: "Midx"
---

## MidX (Function)

### Format

**midx** ( [haystack_string_expression](../en/stringexpressions.md) , [regular_expression](../en/regularexpressions.md) )\
**midx** ( [haystack_string_expression](../en/stringexpressions.md) , [regular_expression](../en/regularexpressions.md) , [start_expression](../en/integerexpressions.md) )

returns [string_expression](../en/stringexpressions.md)

### Description

Returns the first substring that was matched by the regular expression. If the expression does not match anything the empty string “” will be returned. You may also specify an optional starting location for the search to begin [start_expression](../en/integerexpressions.md).

### Note

String indices begin at 1.

### Example

    print midx("HeLLo", "[Ll]o")
    print midx("Hello, Kitti","[Ii]",10)

will display

    Lo
    i

### Notes

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](../en/regexminimal.md) statement.

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|            |                           |
|------------|---------------------------|
| 1.1.2.7    | New To Version            |
| 1.99.99.53 | Added start position \< 0 |
