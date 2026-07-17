---
title: "Float Expressions"
sidebar_label: "Float Expressions"
---

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
