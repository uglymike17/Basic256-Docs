---
title: "Md5"
sidebar_label: "Md5"
---

## MD5 (Function)

### Format

**md5** ( [string_expression](../en/stringexpressions.md) )

returns [string_expression](../en/stringexpressions.md)

### Description

Returns a hexadecimal string with the MD5 digest of the [string_expression](../en/stringexpressions.md) argument. This function was derived from the RSA Data Security, Inc. MD5 Message-Digest Algorithm.

### Example

    print MD5("Something")
    print MD5("something")

will display

    73f9977556584a369800e775b48f3dbe
    437b930db84b8079c2dd804a71936b5f

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.37 | New To Version |
