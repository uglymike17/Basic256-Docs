---
title: "Sin"
sidebar_label: "Sin"
---

## Sin (Function)

### Format

**sin** ( [numeric_expression](./numericexpressions.md) )

returns [float_expression](./floatexpressions.md)

### Description

Computes the sine of [expression](./expressions.md). *Expression* must be in radians.

### Note

The sin function does not produce an exact result.

### Example

    clg
    color black
    # draw a line across the graphic output
    line 0,150,300,150
    # where do we start
    lastx = 0
    lasty = sin(0) * 50 + 150
    # now step across the line and draw
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = sin(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

Draws
![Sine Curve](@site/static/img/wiki/en/sin.jpg)

### See Also

[Abs](./abs.md), [Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Ceil](./ceil.md), [Cos](./cos.md), [Degrees](./degrees.md), [Exp](./exp.md), [Float](./float.md), [Floor](./floor.md), [Int](./int.md), [IsNumeric](./isnumeric.md), [Log](./log.md), [Log10](./log10.md), [Radians](./radians.md), [Rand](./rand.md), [Round](./round.md), [Seed](./seed.md), [Sin](./sin.md), [Sqr](./sqr.md), [Tan](./tan.md)
