---
title: "Fromhex"
sidebar_label: "Fromhex"
---

## FromHex (Function)

### Format

**fromhex** ( [string_expression](../en/stringexpressions.md) )

returns [integer_expression](../en/integerexpressions.md)

### Description

This function returns an integer number represented by the Hexadecimal (base 16) string. Hexadecimal represents 16 different values per digit and the symbols 0-9 and a-f are used.

### Example

    print fromhex("10")
    print fromhex("ff")

displays\

    16
    255

### See Also

[FromBinary](../en/frombinary.md), [FromHex](../en/fromhex.md), [FromOctal](../en/fromoctal.md), [FromRadix](../en/fromradix.md),[ToBinary](../en/tobinary.md), [ToHex](../en/tohex.md), [ToOctal](../en/tooctal.md), [ToRadix](../en/toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
