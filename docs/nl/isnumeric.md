---
title: "Isnumeric"
sidebar_label: "Isnumeric"
---

## IsNumeric (Function)

### Format

**isnumeric** ( [expression](../en/expressions.md) )

return [boolean_expression](../en/booleanexpressions.md)

### Description

The IsNumeric function returns true if the expression is an integer, a floating point number, or if it is a string that can be directly converted to a number. Otherwise it returns false.

The following Numeric strings are valid: “123”, “-345”, “234.234324”, “-34234.123”, “-2.567e7”, and “6.7888E-8”.

A string with spaces around the number, with a thousands separator, or with any other character in it is not numeric: “ 42”, “1,500” and “12abc” all return false. The empty string is not numeric either.

### Example

    print isnumeric("12")
    print isnumeric("1,5")
    print isnumeric(3.5)

will display

    1
    0
    1

### See Also

[Abs](../en/abs.md), [Acos](../en/acos.md), [Asin](../en/asin.md), [Atan](../en/atan.md), [Ceil](../en/ceil.md), [Cos](../en/cos.md), [Degrees](../en/degrees.md), [Exp](../en/exp.md), [Float](../en/float.md), [Floor](../en/floor.md), [Int](../en/int.md), [IsNumeric](../en/isnumeric.md), [Log](../en/log.md), [Log10](../en/log10.md), [Radians](../en/radians.md), [Rand](../en/rand.md), [Round](../en/round.md), [Seed](../en/seed.md), [Sin](../en/sin.md), [Sqr](../en/sqr.md), [Tan](../en/tan.md)

### History

|            |                |
|------------|----------------|
| 1.99.99.20 | New To Version |
| 2.3.2      | A string with another character where the decimal point could go, such as “1,5” or “1x5”, is no longer numeric |
