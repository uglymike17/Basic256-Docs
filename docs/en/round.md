---
title: "Round"
sidebar_label: "Round"
---

## Round (Function)

### Format

**round** ( [Numeric_expression](./numericexpressions.md) )\
**round** ( [Numeric_expression](./numericexpressions.md), [Integer_expression](./numericexpressions.md) )\

return [Numeric_expression](./numericexpressions.md)

### Description

This function rounds a floating point number. The optional second argument (an integer) defines how many decimal places to round to.

### Example

    a = 3.1415926535
    print round(a)
    print round(a,1)
    print round(a,2)
    print round(a,3)
    print round(a,4)

    3.0
    3.1
    3.14
    3.142
    3.1416

### See Also

[Abs](./abs.md), [Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Ceil](./ceil.md), [Cos](./cos.md), [Degrees](./degrees.md), [Exp](./exp.md), [Float](./float.md), [Floor](./floor.md), [Int](./int.md), [IsNumeric](./isnumeric.md), [Log](./log.md), [Log10](./log10.md), [Radians](./radians.md), [Rand](./rand.md), [Round](./round.md), [Seed](./seed.md), [Sin](./sin.md), [Sqr](./sqr.md), [Tan](./tan.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New To Version |
