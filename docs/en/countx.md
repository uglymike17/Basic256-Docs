---
title: "Countx"
sidebar_label: "Countx"
---

## Countx (Function)

### Format

**countx** ( [haystack_string_expression](./stringexpressions.md) , [regular_expression](./regularexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

Return the count of the regular expression *regex* in the string *haystack*.

### Example

    print countx("Hello", "[hH]")
    print countx("Buffalo buffalo buffalo.","[Bb]uffalo")

will display

    1
    3

### Notes

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](./regexminimal.md) statement.

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.56 | New to Version |
