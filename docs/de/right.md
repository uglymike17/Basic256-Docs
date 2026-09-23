---
title: "Right"
sidebar_label: "Right"
---

## Right (Function)

### Format

**right**( [string_expression](../en/stringexpressions.md), [length_expression](../en/integerexpressions.md))

returns [string_expression](../en/stringexpressions.md)

### Description

If length is greater than or equal to zero, returns a portion of the specified [string_expression](../en/stringexpressions.md), starting from the first character on the right and continuing for [length_expression](../en/integerexpressions.md) characters. If length is less than zero then remove [length_expression](../en/integerexpressions.md) characters from the right of the string.

### Example

    print right("Hello", 2)
    print right("Hello", -2)

will display

    lo
    Hel

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|            |                   |
|------------|-------------------|
| 0.9.5b     | New To Version    |
| 1.99.99.53 | Added length \< 0 |
