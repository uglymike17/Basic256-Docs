---
title: "Instrx"
sidebar_label: "Instrx"
---

## Instrx (Function)

### Format

**instrx** ( [haystack_string_expression](./stringexpressions.md) , [regular_expression](./regularexpressions.md) )\
**instrx** ( [haystack_string_expression](./stringexpressions.md) , [regular_expression](./regularexpressions.md) , [start_expression](./integerexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

Check to see if the text represented by the regular expression [regular_expression](./regularexpressions.md) is contained in the string [haystack_string_expression](./stringexpressions.md). If it is, then this function will return the index of starting character of the first place where [needle_string_expression](./stringexpressions.md) occurs. Otherwise, this function will return 0.

You may optionally specify a starting location for the search to begin [start_expression](./integerexpressions.md). If the start is 1 or greater the search will begin from the specified character from the start. If the start is \< 0 then the search will begin from the nth character from the end. The search will ALWAYS look forward.

### Note

String indices begin at 1.

### Example

    print instrx("HeLLo", "[Ll]o")
    print instrx("Hello, Kitti","[Ii]",10)

will display

    4
    12

### Notes

**instrx** can be used to test if a string matches a regular expression. In for following example the function isnumber returns true if the string passed is in for format of a floating point number and false if not.

    function isnumber(s$)
       # return true if a number - false of not
       return instrx(s$,"^-?\d+\.?\d*$") <> 0
    end function

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](./regexminimal.md) statement.

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                           |
|------------|---------------------------|
| 0.9.6.56   | New To Version            |
| 1.99.99.53 | Added start position \< 0 |
