---
title: "Fromradix"
sidebar_label: "Fromradix"
---

## FromRadix (Function)

### Format

**fromradix** ( [string_expression](./stringexpressions.md), [numeric_base](./integerexpressions.md) )

returns [integer_expression](./integerexpressions.md)

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

[FromBinary](./frombinary.md), [FromHex](./fromhex.md), [FromOctal](./fromoctal.md), [FromRadix](./fromradix.md),[ToBinary](./tobinary.md), [ToHex](./tohex.md), [ToOctal](./tooctal.md), [ToRadix](./toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
