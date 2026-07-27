---
title: "Bitwise Operators"
sidebar_label: "Bitwise Operators"
---

#### Bitwise Operators

Bitwise operators only work with long integer values (since 1.99.99.19) in the range of −9,223,372,036,854,775,808 to 9,223,372,036,854,775,807. Any attempt to use a number outside this range will produce warnings, errors, and/or unexpected results.

| Bitwise Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| ~ | Bitwide Negation | ~a |  |
| & | Bitwise Conjunction | a & b | If one or both values are strings the ampersand operator will concatenate the strings into a single string.<sup>3</sup> |
| \| | Bitwise Disjunction | a \| b | Returns the bits of integer a or integer b. |
| \<\< | Bitwise Shift Left | a \<\< b | Returns the bits of integer a moved b places to the left. Each place doubles the value. |
| \>\> | Bitwise Shift Right | a \>\> b | Returns the bits of integer a moved b places to the right. Each place halves the value, discarding the bits shifted off the end. |

The two shift operators bind more tightly than `&` and `|` but less tightly than `+` and `-`, so `a + b << c` means `(a + b) << c`. See [Order Of Operations](./orderofoperators.md).

A negative shift count shifts in the opposite direction, so `a << -2` gives the same result as `a >> 2`. Shifting by 64 or more places returns 0.

Shifting works on the bit pattern of the value and does not sign extend. A right shift never carries the sign bit down, so `-8 >> 1` returns a large positive number rather than -4 — use `\` ([integer division](./arithmeticoperators.md)) when you want a halving that keeps the sign. A left shift can move a bit into the sign position and produce a negative result.
