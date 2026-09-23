---
title: "Round"
sidebar_label: "Round"
---

## Round (Function)

### Format

**round** ( [Numeric_expression](../en/numericexpressions.md) )\
**round** ( [Numeric_expression](../en/numericexpressions.md), [Integer_expression](../en/numericexpressions.md) )\

return [Numeric_expression](../en/numericexpressions.md)

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

[Abs](../en/abs.md), [Acos](../en/acos.md), [Asin](../en/asin.md), [Atan](../en/atan.md), [Ceil](../en/ceil.md), [Cos](../en/cos.md), [Degrees](../en/degrees.md), [Exp](../en/exp.md), [Float](../en/float.md), [Floor](../en/floor.md), [Int](../en/int.md), [IsNumeric](../en/isnumeric.md), [Log](../en/log.md), [Log10](../en/log10.md), [Radians](../en/radians.md), [Rand](../en/rand.md), [Round](../en/round.md), [Seed](../en/seed.md), [Sin](../en/sin.md), [Sqr](../en/sqr.md), [Tan](../en/tan.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New To Version |
