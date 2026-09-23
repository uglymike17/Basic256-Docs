---
title: "Replace"
sidebar_label: "Replace"
---

## Replace (Function)

### Format

**replace** ( [haystack_string_expression](../en/stringexpressions.md) , *fromstring_expr* , *tostring_expr* )\
**replace** ( [haystack_string_expression](../en/stringexpressions.md) , *fromstring_Expr* , *tostring_expr* , *caseinsensitive*)

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

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.55 | New to Version |
