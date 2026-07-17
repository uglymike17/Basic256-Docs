---
title: "Md5"
sidebar_label: "Md5"
---

## MD5 (Function)

### Format

**md5** ( [string_expression](./stringexpressions.md) )

returns [string_expression](./stringexpressions.md)

### Description

Returns a hexadecimal string with the MD5 digest of the [string_expression](./stringexpressions.md) argument. This function was derived from the RSA Data Security, Inc. MD5 Message-Digest Algorithm.

### Example

    print MD5("Something")
    print MD5("something")

will display

    73f9977556584a369800e775b48f3dbe
    437b930db84b8079c2dd804a71936b5f

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.37 | New To Version |
