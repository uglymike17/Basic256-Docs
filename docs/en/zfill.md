---
title: "Zfill"
sidebar_label: "Zfill"
---

## zfill (Function)

### Format

**zfill** ( [string_expression](./stringexpressions.md), [length_expression](./integerexpressions.md))

returns [string_expression](./stringexpressions.md)

### Description

Return a right justified string of at least [length_expression](./integerexpressions.md) characters, with zeros added on the left. A number is turned into a string first, and a string that is already long enough is returned as it is. A minus sign is treated like any other character, so zfill(-5, 4) is "00-5". It is equivalent to **rjust** ( [string_expression](./stringexpressions.md), [length_expression](./integerexpressions.md), “0”).

### Example

    print zfill(7, 3)
    print zfill("42", 5)
    print zfill(12345, 3)

will display

    007
    00042
    12345

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|       |                |
|-------|----------------|
| 2.0.0 | New To Version |
