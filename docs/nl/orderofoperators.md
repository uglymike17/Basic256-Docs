---
title: "Order of Operations"
sidebar_label: "Order of Operations"
---

#### Order of Operations

Operators are evaluated according to a strict set of rules. These rules are called the “Order of Operations”.

| Order of Operations |  |  |
|----|----|----|
| Level | Operators | Category/Description |
| 1 | ( ) | Grouping |
| 2 | ^ | Exponent |
| 3 | \- ~ | Unary Minus and Bitwise Negation (NOT) |
| 4 | \* / \\ % mod | Multiplication, Division, Integer Division, and Remainder (Mod) |
| 5 | \+ - | Addition/Concatenation, and Subtraction |
| 6 | \<\< \>\> | Bitwise Shift Left and Right |
| 7 | & \| | Bitwise And and Bitwise Or |
| 8 | cross | Vector Cross Product |
| 9 | dot | Vector Dot Product |
| 10 | \< \<= \> \>= = \<\> | Comparison (Numeric and String) |
| 11 | NOT | Not |
| 12 | AND | Logical And |
| 13 | OR XOR | Logical Or and Logical Exclusive Or |
| 14 | ; | Concatenation |

The concatenation operator `;` binds more loosely than every other operator, so `a ; b or c` is evaluated as `a ; (b or c)`. Use parentheses when you mean `(a ; b) or c`.
