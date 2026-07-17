---
title: "Count"
sidebar_label: "Count"
---

## Count (Function)

### Format

**count** ( [haystack_string_expression](./stringexpressions.md) , [needle_string_expression](./stringexpressions.md) )\
**count** ( [haystack_string_expression](./stringexpressions.md) , [needle_string_expression](./stringexpressions.md) , [boolean_expression](./booleanexpressions.md))

returns [integer_expression](./integerexpressions.md)

### Description

Return the count of the string *needle* in the string *haystack*. You may also specify an optional third value, a boolean value to specify that the search will treat upper and lower case letters the same.

### Example

    print count("Hello", "lo")
    print count("Buffalo buffalo buffalo.","BUFFALO",true)

will display

    1
    3

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.55 | New to Version |
