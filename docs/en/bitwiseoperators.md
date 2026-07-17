---
title: "Bitwise Operators"
sidebar_label: "Bitwise Operators"
---

#### Bitwise Operators

Bitwise operators only work with long integer values (since 1.99.99.19) in the range of −2,147,483,648 to 2,147,483,647. Any attempt to use a number outside this range will produce, warnings, error, and/or unexpected results.

| Bitwise Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| ~ | Bitwide Negation | ~a |  |
| & | Bitwise Conjunction | a & b | If one or both values are strings the ampersand operator will concatenate the strings into a single string.<sup>3</sup> |
| \| | Bitwise Disjunction | a \| b | Returns the bits of integer a or integer b. |
