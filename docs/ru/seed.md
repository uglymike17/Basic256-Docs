---
title: "Seed"
sidebar_label: "Seed"
---

## Seed (Statement)

### Format

**seed** [start_value](../en/numericexpressions.md)\
**seed** ( [start_value](../en/numericexpressions.md) )

### Description

Initializes the random number generator [rand](../en/rand.md) to start a specific sequence of pseudo-random numbers.

The same statement also fixes the [noise](../en/noise.md) field, so a program that seeds gets both the same sequence of random numbers and the same noise landscape every time it runs. Without a **seed** statement both differ from run to run.

### See Also

[Abs](../en/abs.md), [Acos](../en/acos.md), [Asin](../en/asin.md), [Atan](../en/atan.md), [Ceil](../en/ceil.md), [Cos](../en/cos.md), [Degrees](../en/degrees.md), [Exp](../en/exp.md), [Float](../en/float.md), [Floor](../en/floor.md), [Int](../en/int.md), [IsNumeric](../en/isnumeric.md), [Log](../en/log.md), [Log10](../en/log10.md), [Noise](../en/noise.md), [Radians](../en/radians.md), [Rand](../en/rand.md), [Round](../en/round.md), [Seed](../en/seed.md), [Sin](../en/sin.md), [Sqr](../en/sqr.md), [Tan](../en/tan.md)

### History

|            |                |
|------------|----------------|
| 1.99.99.65 | New to Version |
| 2.1.2      | also seeds the noise field |
