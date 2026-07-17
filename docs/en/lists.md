---
title: "Lists"
sidebar_label: "Lists"
---

## Array List - 1 and 2 Dimensional Values

An Array List is either a one dimensional set of values separated by commas and enclosed in braces { }, or a list of Array Lists containing two dimensions of data. You may use Array Lists in many statements that are expecting arrays and can be used to create arrays without the dim statement.

The [Explode](./explode.md) and [Explodex](./explodex.md) functions also return a list that may be used wherever lists are allowed.

### Example

    words = {"how","now","brown","cow"}
    for n = 0 to words[?]-1
     print words[n]
    next n

    sound {{200,200},{400,300},{200,200}}

### History

|  |  |
|----|----|
| 1.99.99.55 | Added two dimensional lists |
| 2.0.0.0 | Clarified Difference between List of Values (Array) and [Map List - Keys and Values](./maplist.md) |
