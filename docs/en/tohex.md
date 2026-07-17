---
title: "Tohex"
sidebar_label: "Tohex"
---

## ToHex (Function)

**Format**

ToHex ( [numeric_expression](./numericexpressions.md) )

returns [string_expression](./stringexpressions.md)

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

[FromBinary](./frombinary.md), [FromHex](./fromhex.md), [FromOctal](./fromoctal.md), [FromRadix](./fromradix.md),[ToBinary](./tobinary.md), [ToHex](./tohex.md), [ToOctal](./tooctal.md), [ToRadix](./toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
