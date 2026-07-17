---
title: "Toradix"
sidebar_label: "Toradix"
---

## ToRadix (Function)

### Format

**toradix** ( [numeric_expression](./numericexpressions.md) , [numeric_base](./integerexpressions.md) )

return [string_expression](./stringexpressions.md)

### Description

Changes a *number* (base 10) to the same number in whatever *base* defined. The number is returned as a string.

### Example

    t = 1
    print "bases"
    print "10,2,5,16,26,36"
    do
       print t+",";
       print toradix(t,2)+",";
       print toradix(t,5)+",";
       print toradix(t,16)+",";
       print toradix(t,26)+",";
       print toradix(t,32)
       t*=2
    until t >  10000

displays\

    bases
    10,2,5,16,26,36
    1,1,1,1,1,1
    2,10,2,2,2,2
    4,100,4,4,4,4
    8,1000,13,8,8,8
    16,10000,31,10,g,g
    32,100000,112,20,16,10
    64,1000000,224,40,2c,20
    128,10000000,1003,80,4o,40
    256,100000000,2011,100,9m,80
    512,1000000000,4022,200,ji,g0
    1024,10000000000,13044,400,1da,100
    2048,100000000000,31143,800,30k,200
    4096,1000000000000,112341,1000,61e,400
    8192,10000000000000,230232,2000,c32,800

### See Also

[FromBinary](./frombinary.md), [FromHex](./fromhex.md), [FromOctal](./fromoctal.md), [FromRadix](./fromradix.md),[ToBinary](./tobinary.md), [ToHex](./tohex.md), [ToOctal](./tooctal.md), [ToRadix](./toradix.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.45 | New To Version |
