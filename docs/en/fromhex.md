---
title: "Fromhex"
sidebar_label: "Fromhex"
---

## FromHex (Function)

### Format

**fromhex** ( [string_expression](./stringexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

This function returns an integer number represented by the Hexadecimal (base 16) string. Hexadecimal represents 16 different values per digit and the symbols 0-9 and a-f are used.

### Example

    print fromhex("10")
    print fromhex("ff")

displays\

    16
    255

### See Also

[FromBinary](./frombinary.md), [FromHex](./fromhex.md), [FromOctal](./fromoctal.md), [FromRadix](./fromradix.md),[ToBinary](./tobinary.md), [ToHex](./tohex.md), [ToOctal](./tooctal.md), [ToRadix](./toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
