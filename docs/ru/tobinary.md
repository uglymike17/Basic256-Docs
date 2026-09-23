---
title: "Tobinary"
sidebar_label: "Tobinary"
---

## ToBinary (Function)

### Format

ToBinary ( [numeric_expression](../en/numericexpressions.md) )

returns [string_expression](../en/stringexpressions.md)

### Description

Converts a number to its a string containing a binary value of ones and zeros.

### Example

    For t = 0 to 10
    print ToBinary(t)
    next t

Results in

    0
    1
    10
    11
    100
    101
    110
    111
    1000
    1001
    1010

### See Also

[FromBinary](../en/frombinary.md), [FromHex](../en/fromhex.md), [FromOctal](../en/fromoctal.md), [FromRadix](../en/fromradix.md),[ToBinary](../en/tobinary.md), [ToHex](../en/tohex.md), [ToOctal](../en/tooctal.md), [ToRadix](../en/toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
