---
title: "Mid"
sidebar_label: "Mid"
---

## Mid (Function)

### Format

**mid**( [string_expression](./stringexpressions.md), [start_expression](./integerexpressions.md), [length_expression](./integerexpressions.md))

returns [string_expression](./stringexpressions.md)

### Description

Returns a portion of the specified [string_expression](./stringexpressions.md), starting from the *start character*, and continuing for [length_expression](./integerexpressions.md) characters or the end of the [string_expression](./stringexpressions.md).

### Example

    print mid("Hello", 2, 3)
    print mid("Hello", 2, 999)

will display

    ell
    ello

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                           |
|------------|---------------------------|
| 0.9.5b     | New To Version            |
| 1.99.99.53 | Added length \< 0         |
| 1.99.99.53 | Added start position \< 0 |
