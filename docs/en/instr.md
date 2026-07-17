---
title: "Instr"
sidebar_label: "Instr"
---

## Instr (Function)

### Format

**instr** ( [haystack_string_expression](./stringexpressions.md) , [needle_string_expression](./stringexpressions.md) )\
**instr** ( [haystack_string_expression](./stringexpressions.md) , [needle_string_expression](./stringexpressions.md) , [start_expression](./integerexpressions.md) )\
**instr** ( [haystack_string_expression](./stringexpressions.md) , [needle_string_expression](./stringexpressions.md) , [start_expression](./integerexpressions.md) , [boolean_expression](./booleanexpressions.md))\
returns [integer_expression](./integerexpressions.md)

### Description

Check to see if the string [needle_string_expression](./stringexpressions.md) is contained in the string [haystack_string_expression](./stringexpressions.md). If it is, then this function will return the index of starting character of the first place where [needle_string_expression](./stringexpressions.md) occurs. Otherwise, this function will return 0.

You may optionally specify a starting location for the search to begin [start_expression](./integerexpressions.md). If the start is 1 or greater the search will begin from the specified character from the start. If the start is \< 0 then the search will begin from the nth character from the end. The search will ALWAYS look forward.

An optional [boolean_expression](./booleanexpressions.md) may be used to specify that the search will treat upper and lower case letters the same.

### Note

String indices begin at 1.

### Example

    print instr("Hello", "lo")
    print instr("101,222,333",",",5)

will display

    4
    8

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                           |
|------------|---------------------------|
| 0.9.6.55   | New to Version            |
| 1.99.99.53 | Added start position \< 0 |
