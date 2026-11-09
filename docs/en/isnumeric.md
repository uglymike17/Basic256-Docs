---
title: "Isnumeric"
sidebar_label: "Isnumeric"
---

## IsNumeric (Function)

### Format

**isnumeric** ( [expression](./expressions.md) )

return [boolean_expression](./booleanexpressions.md)

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

[Abs](./abs.md), [Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Ceil](./ceil.md), [Cos](./cos.md), [Degrees](./degrees.md), [Exp](./exp.md), [Float](./float.md), [Floor](./floor.md), [Int](./int.md), [IsNumeric](./isnumeric.md), [Log](./log.md), [Log10](./log10.md), [Radians](./radians.md), [Rand](./rand.md), [Round](./round.md), [Seed](./seed.md), [Sin](./sin.md), [Sqr](./sqr.md), [Tan](./tan.md)

### History

|            |                |
|------------|----------------|
| 1.99.99.20 | New To Version |
| 2.3.2      | A string with another character where the decimal point could go, such as “1,5” or “1x5”, is no longer numeric |
