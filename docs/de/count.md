---
title: "Count"
sidebar_label: "Count"
---

## Count (Function)

### Format

**count** ( [haystack_string_expression](../en/stringexpressions.md) , [needle_string_expression](../en/stringexpressions.md) )\
**count** ( [haystack_string_expression](../en/stringexpressions.md) , [needle_string_expression](../en/stringexpressions.md) , [boolean_expression](../en/booleanexpressions.md))

returns [integer_expression](../en/integerexpressions.md)

### Description

Return the count of the string *needle* in the string *haystack*. You may also specify an optional third value, a boolean value to specify that the search will treat upper and lower case letters the same.

### Example

    print count("Hello", "lo")
    print count("Buffalo buffalo buffalo.","BUFFALO",true)

will display

    1
    3

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.55 | New to Version |
