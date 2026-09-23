---
title: "Instrx"
sidebar_label: "Instrx"
---

## Instrx (Function)

### Format

**instrx** ( [haystack_string_expression](../en/stringexpressions.md) , [regular_expression](../en/regularexpressions.md) )\
**instrx** ( [haystack_string_expression](../en/stringexpressions.md) , [regular_expression](../en/regularexpressions.md) , [start_expression](../en/integerexpressions.md) )

returns [integer_expression](../en/integerexpressions.md)

### Description

Check to see if the text represented by the regular expression [regular_expression](../en/regularexpressions.md) is contained in the string [haystack_string_expression](../en/stringexpressions.md). If it is, then this function will return the index of starting character of the first place where [needle_string_expression](../en/stringexpressions.md) occurs. Otherwise, this function will return 0.

You may optionally specify a starting location for the search to begin [start_expression](../en/integerexpressions.md). If the start is 1 or greater the search will begin from the specified character from the start. If the start is \< 0 then the search will begin from the nth character from the end. The search will ALWAYS look forward.

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

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](../en/regexminimal.md) statement.

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|            |                           |
|------------|---------------------------|
| 0.9.6.56   | New To Version            |
| 1.99.99.53 | Added start position \< 0 |
