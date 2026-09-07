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

### Writing a List Over Several Lines

A list may be written over as many lines as it needs to read well. Inside the braces { } the end of a line does not end the statement, so the rows of a two dimensional list may be laid out one to a line. The braces themselves may sit on lines of their own, and blank lines between the rows are ignored.

    level = {{1,1,1,1,1},
             {1,0,0,0,1},
             {1,0,2,0,1},
             {1,1,1,1,1}}

A [remark](./rem.md) may also be written inside the braces, so that the rows can be annotated as they are laid out.

    grid = {              # the first six whole numbers
       # the top row
       {1,2,3},
       # and the bottom row
       {4,5,6}
    }

The same applies to a [Map List](./maplist.md).

### History

|  |  |
|----|----|
| 1.99.99.55 | Added two dimensional lists |
| 2.0.0.0 | Clarified Difference between List of Values (Array) and [Map List - Keys and Values](./maplist.md) |
| 2.1.2 | Lists may be written over several lines, with remarks inside the braces |
