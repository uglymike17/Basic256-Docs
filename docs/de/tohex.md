---
title: "Tohex"
sidebar_label: "Tohex"
---

## ToHex (Function)

**Format**

ToHex ( [numeric_expression](../en/numericexpressions.md) )

returns [string_expression](../en/stringexpressions.md)

**Description**

This function converts the integer part of the number passed into a Hexadecimal (base 16) string. Hexadecimal represents 16 different values per digit and the symbols 0-9 and a-f are used.

**Example**

    For t = 1 to 10
    print ToHex(t)
    next t

Results in

    1
    2
    3
    4
    5
    6
    7
    8
    9
    a

### See Also

[FromBinary](../en/frombinary.md), [FromHex](../en/fromhex.md), [FromOctal](../en/fromoctal.md), [FromRadix](../en/fromradix.md),[ToBinary](../en/tobinary.md), [ToHex](../en/tohex.md), [ToOctal](../en/tooctal.md), [ToRadix](../en/toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
