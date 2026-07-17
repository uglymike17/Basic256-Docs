---
title: "String Operators"
sidebar_label: "String Operators"
---

#### String Operators

String operators perform an operation called concatenation. Concatenation is joining two or more strings together to make a longer string.

| String Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| ; | Concatenation | a ; b | Always concatenates (converts numbers to strings)<sup>2</sup> |
| \+ | Concatenation | a + b | Appends b to the end of a (If either (or both) a and b are not numbers, see [IsNumeric](./isnumeric.md)). <sup>2</sup> |
| & | Concatenation | a & b | Appends b to the end of a (If either (or both) a and b are not numbers, see [IsNumeric](./isnumeric.md)). <sup>3</sup> |
| \* | Repeat | a \* i | Repeats string a, integer i times. If i \<= 0 an empty string will be returned. |

### History

|         |                                              |
|---------|----------------------------------------------|
| 2.0.0.0 | Added string repeat using the ‘\*’ operator. |
