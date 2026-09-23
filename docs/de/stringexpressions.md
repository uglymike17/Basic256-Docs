---
title: "String Expressions"
sidebar_label: "String Expressions"
---

## String Expressions

A string expression is an expression whose value is text. It is built from [String Constants](../en/stringconstants.md), [Variables](../en/variables.md), the [String Operators](../en/stringoperators.md), and the many functions that return text.

### Writing the Text Itself

A string constant may be written between double quotes or between single quotes. A constant cannot contain the quote character that opened it and cannot run past the end of the line, so the second pair of quotes is what lets a quote character appear inside the text:

    print "it's a nice day"
    print 'she said "hello"'

displays

    it's a nice day
    she said "hello"

### Joining Text Together

Four operators build longer strings. The full table is on the [String Operators](../en/stringoperators.md) page; what matters when reading an expression is that three of them do two different jobs:

|  |  |
|----|----|
| Operator | What it does |
| ; | Always joins. Numbers are turned into text first. |
| \+ | Joins when either side is a string, adds when both sides are numbers. |
| & | Joins when either side is a string, ANDs the bits when both sides are numbers. |
| \* | Repeats a string a given number of times. |

The decision is made on the **type** of each value, not on what it looks like. A string of digits is still a string:

    print 12 + 3
    print "12" + 3
    a = "12" ; 3
    print a

displays

    15
    123
    123

Repeating works with the string on the left and the count on the right. Written the other way round it is a multiplication, and the text counts as zero:

    print "ab" * 3

displays

    ababab

A repeat count of zero or less produces an empty string.

### Numbers Turned into Text

When a number is joined to a string it is converted exactly as [String](../en/string.md) would convert it, honouring the number of decimal digits set in Options (twelve by default), so a calculated value may not appear with all of the digits it holds.

### How Long a String May Be

A string may hold up to 16777216 characters. An operation that would produce a longer one reports an error and the result is cut to that length.

### Comparing Text

Comparing two strings with =, \<\>, \<, \>, \<= or \>= produces a true or false answer rather than text; the rules, including what happens when a string is compared against a number, are on the [Boolean Expressions](../en/booleanexpressions.md) page.

### Functions That Return Text

[Chr](../en/chr.md), [Implode](../en/implode.md), [Left](../en/left.md), [Lower](../en/lower.md), [Ltrim](../en/ltrim.md), [Mid](../en/mid.md), [Replace](../en/replace.md), [Right](../en/right.md), [Rtrim](../en/rtrim.md), [String](../en/string.md), [ToBinary](../en/tobinary.md), [ToHex](../en/tohex.md), [ToRadix](../en/toradix.md), [Trim](../en/trim.md) and [Upper](../en/upper.md) all return a string. [Instr](../en/instr.md), [Length](../en/length.md) and [Asc](../en/asc.md) take strings but return a number.

Some string functions accept a [Regular Expression](../en/regularexpressions.md) instead of plain text to search for.

### See Also

[Asc](../en/asc.md), [Boolean Expressions](../en/booleanexpressions.md), [Chr](../en/chr.md), [Expressions](../en/expressions.md), [Explode](../en/explode.md), [Instr](../en/instr.md), [IsNumeric](../en/isnumeric.md), [Left](../en/left.md), [Length](../en/length.md), [Mid](../en/mid.md), [Print](../en/print.md), [Regular Expressions](../en/regularexpressions.md), [Right](../en/right.md), [String](../en/string.md), [String Constants](../en/stringconstants.md), [String Operators](../en/stringoperators.md), [Variables](../en/variables.md)

### Availability

Present in BASIC-256 but never described — this page was empty. Written from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256) source.
