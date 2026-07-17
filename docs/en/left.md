---
title: "Left"
sidebar_label: "Left"
---

## Left (Function)

### Format

**left**( [string_expression](./stringexpressions.md), [length_expression](./integerexpressions.md))

returns [string_expression](./stringexpressions.md)

### Description

If length is greater than or equal to zero, returns a portion of the specified [string_expression](./stringexpressions.md), starting from the first character on the left and continuing for [length_expression](./integerexpressions.md) characters. If length is less than zero then remove [length_expression](./integerexpressions.md) characters from the left of the string.

### Example

    print left("Hello", 2)
    print left("Hello", -2)

will display

    He
    llo

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                   |
|------------|-------------------|
| 0.9.5b     | New To Version    |
| 1.99.99.53 | Added length \< 0 |
