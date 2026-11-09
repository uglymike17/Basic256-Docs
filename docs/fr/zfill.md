---
title: "Zfill"
sidebar_label: "Zfill"
---

## zfill (Function)

### Format

**zfill** ( [string_expression](../en/stringexpressions.md), [length_expression](../en/integerexpressions.md))

returns [string_expression](../en/stringexpressions.md)

### Description

Return a right justified string of at least [length_expression](../en/integerexpressions.md) characters, with zeros added on the left. A number is turned into a string first, and a string that is already long enough is returned as it is. A minus sign is treated like any other character, so zfill(-5, 4) is "00-5". It is equivalent to **rjust** ( [string_expression](../en/stringexpressions.md), [length_expression](../en/integerexpressions.md), “0”).

### Example

    print zfill(7, 3)
    print zfill("42", 5)
    print zfill(12345, 3)

will display

    007
    00042
    12345

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|       |                |
|-------|----------------|
| 2.0.0 | New To Version |
