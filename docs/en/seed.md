---
title: "Seed"
sidebar_label: "Seed"
---

## Seed (Statement)

### Format

**seed** [start_value](./numericexpressions.md)\
**seed** ( [start_value](./numericexpressions.md) )

### Description

Initializes the random number generator [rand](./rand.md) to start a specific sequence of pseudo-random numbers.

The same statement also fixes the [noise](./noise.md) field, so a program that seeds gets both the same sequence of random numbers and the same noise landscape every time it runs. Without a **seed** statement both differ from run to run.

### See Also

[Abs](./abs.md), [Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Ceil](./ceil.md), [Cos](./cos.md), [Degrees](./degrees.md), [Exp](./exp.md), [Float](./float.md), [Floor](./floor.md), [Int](./int.md), [IsNumeric](./isnumeric.md), [Log](./log.md), [Log10](./log10.md), [Noise](./noise.md), [Radians](./radians.md), [Rand](./rand.md), [Round](./round.md), [Seed](./seed.md), [Sin](./sin.md), [Sqr](./sqr.md), [Tan](./tan.md)

### History

|            |                |
|------------|----------------|
| 1.99.99.65 | New to Version |
| 2.1.2      | also seeds the noise field |
