---
title: "Replace"
sidebar_label: "Replace"
---

## Replace (Function)

### Format

**replace** ( [haystack_string_expression](./stringexpressions.md) , *fromstring_expr* , *tostring_expr* )\
**replace** ( [haystack_string_expression](./stringexpressions.md) , *fromstring_Expr* , *tostring_expr* , *caseinsensitive*)

returns *String_value*

### Description

Return a new string where all occurrences or *fromstring* are replaced by *tostring* in the string *haystack*. You may also specify an optional boolean value *caseinsensitive* to specify that the search will treat upper and lower case letters the same.

### Example

    a$ = "We all live in a yellow submarine, yellow submarine, yellow submarine."
    print Replace(a$,"yellow","blue")
    print Replace(a$, "we", "Beatles", true)

will display

    We all live in a blue submarine, blue submarine, blue submarine.
    Beatles all live in a yellow submarine, yellow submarine, yellow submarine.

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.55 | New to Version |
