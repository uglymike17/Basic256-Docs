---
title: "Numeric Expressions"
sidebar_label: "Numeric Expressions"
---

### Numeric Expressions

Numeric expressions in BASIC-256 come in two varieties; 1) integer, and 2) floating point numbers. They are created by using [Arithmetic Operators](./arithmeticoperators.md) and functions with [Numeric Constants](./numericconstants.md) and [Variables](./variables.md).

#### Integer Expressions

Integer Expressions are expressions that return a whole number.

Examples include:

| Integer Expressions |
|---------------------|
| 10                  |
| ABS(-2345)          |
| int(9.987)          |
| 5\*8                |

Positive integer values may also be expressed in binary (base 2), octal (base 8), and hexadecimal (base 16). Precede binary values with 0b (0b1110 = 14), octal with 0o (0o177 = 127), and hexadecimal with 0x (0xff = 255).

#### Floating Point Expressions

Expressions that return a decimal number, even if it ends in .0, are known as floating point expressions.

Examples include:

| Floating Point Expressions |
|----------------------------|
| 3/7                        |
| float(56)                  |
| sin(2\*pi)                 |

Very large and small floating point numbers may also be represented in scientific E notation (added in version 0.9.9.46). <http://en.wikipedia.org/wiki/Scientific_notation>

| Scientific E Notation |                |
|-----------------------|----------------|
| E Notation            | Decimal Number |
| 2e0                   | 2              |
| 3e2                   | 300            |
| 1.234e10              | 12340000000    |
| -5.3e4                | -53000         |
| 2e-1                  | 0.2            |
| 5.12e-9               | 0.00000000512  |
