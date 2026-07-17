---
title: "Replacex"
sidebar_label: "Replacex"
---

## Replacex (Function)

### Formato

**replacex** ( [haystack_string_expression](./stringexpressions.md) , [regular_expression](./regularexpressions.md) , [string_expression](./stringexpressions.md) )

returns [string_expression](./stringexpressions.md)

### Description

Return a new string where all occurrences of substrings matching the regular expression [regular_expression](./regularexpressions.md) are replaced by [string_expression](./stringexpressions.md) in the string [haystack_string_expression](./stringexpressions.md).

### Example

    a$ = "Ouvi bossa e saí da fossa"
    print Replacex(a$,"bossa","sopa")
    print Replacex(a$, "[bf]ossa", "sopa")

will display

    Ouvi sopa e saí da fossa
    Ouvi sopa e saí da sopa

### Notes

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](./regexminimal.md) statement.

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.56 | New to Version |
