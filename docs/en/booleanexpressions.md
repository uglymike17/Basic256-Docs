---
title: "Boolean Expressions"
sidebar_label: "Boolean Expressions"
---

## Boolean Expressions

A Boolean expression is an expression that answers a true or false question.

BASIC-256 has no separate Boolean type. True is the whole number **1** and false is the whole number **0** (see [Boolean Constants](./booleanconstants.md)), so a Boolean expression is an integer expression whose value happens to be one of those two. The answer can therefore be stored in a variable, printed, or even added up.

    print 3 > 2
    print 3 = 2
    print (3 > 2) + (4 > 3)

displays

    1
    0
    2

Boolean expressions are built with [Comparison Operators](./comparisonoperators.md), [Logical Operators](./logicaloperators.md), the constants **true** and **false**, and any function that answers a true or false question, such as [Exists](./exists.md) or [IsNumeric](./isnumeric.md).

### When a Value Counts as True

Anywhere a true or false value is expected — in an [If](./if.md), a [While](./while.md) or an [Until](./do.md), or on either side of NOT, AND, OR and XOR — any value may be used. It is judged like this:

|  |  |
|----|----|
| Value | Counts as |
| A whole number | True when it is not zero. |
| A decimal number | True when it differs from zero by more than 0.00000001. A smaller number, such as 0.000000001, counts as **false**. |
| A string | True when it is not empty. Every non-empty string is true, including “0” and “false”. |
| A variable that has never been assigned | False. |
| An array or a map | Not allowed. The program stops with “Unable to convert to a Boolean”. |

### How Two Values are Compared

What a comparison actually compares depends on the types of the two values:

|  |  |
|----|----|
| Both values | Are compared |
| Two whole numbers | Exactly. |
| Two strings | Character by character, using the character codes. The comparison is case sensitive and “Z” comes before “a”. |
| Anything else | As decimal numbers, and they count as equal when they differ by no more than 0.00000001. |

The last row also covers a string compared against a number: the string is converted to a number first, and a string that is not a number counts as 0 and reports “Unable to convert to a number”.

    print "10" = 10
    print "abc" < "abd"
    print "Z" < "a"
    print 0.1 + 0.2 = 0.3

displays

    1
    1
    1
    1

The last line is not what most programming languages give. 0.1 + 0.2 is not exactly 0.3 in binary arithmetic, but the difference is far smaller than 0.00000001, so BASIC-256 calls the two equal.

### Both Sides are Always Evaluated

AND and OR do not stop early. Both sides are worked out before the operator is applied, even when the left-hand side has already settled the answer. A function call on the right of an AND therefore always happens.

### Not the Same as the Bit Operators

NOT, AND, OR and XOR work on the truth of a whole value. The [Bitwise Operators](./bitwiseoperators.md) work on the individual bits of a number. They are not interchangeable:

    print 6 and 3
    print 6 & 3

displays

    1
    2

Six and three are both non-zero, so both are true and “6 and 3” is true. The bits of six (110) and three (011) have only one bit in common, so “6 & 3” is two.

### See Also

[Bitwise Operators](./bitwiseoperators.md), [Boolean Constants](./booleanconstants.md), [Case](./case.md), [Comparison Operators](./comparisonoperators.md), [Do / Until](./do.md), [Expressions](./expressions.md), [If](./if.md), [IsNumeric](./isnumeric.md), [Logical Operators](./logicaloperators.md), [String Expressions](./stringexpressions.md), [Variables](./variables.md), [While](./while.md)

### Availability

Present in BASIC-256 but never described — this page was empty. Written from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256) source.
