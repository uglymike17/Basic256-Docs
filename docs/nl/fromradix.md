---
title: "Fromradix"
sidebar_label: "Fromradix"
---

## FromRadix (Function)

### Format

**fromradix** ( [string_expression](../en/stringexpressions.md), [numeric_base](../en/integerexpressions.md) )

returns [integer_expression](../en/integerexpressions.md)

### Description

Converts a string in any base from 2 to 36 into an integer value.

### Example

    print fromradix("ffef",16)
    print fromradix("1001101", 2)
    print fromradix("a1z9",36)

displays\

    65519
    77
    469125

### See Also

[FromBinary](../en/frombinary.md), [FromHex](../en/fromhex.md), [FromOctal](../en/fromoctal.md), [FromRadix](../en/fromradix.md),[ToBinary](../en/tobinary.md), [ToHex](../en/tohex.md), [ToOctal](../en/tooctal.md), [ToRadix](../en/toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
