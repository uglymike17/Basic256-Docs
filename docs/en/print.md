---
title: "Print"
sidebar_label: "Print"
---

## Print (Statement)

### Format

**print** [expression](./expressions.md) \[ ; \]\
**?** [expression](./expressions.md) \[ ; \]\
**print** [expression](./expressions.md) ,[expression](./expressions.md)…\
**?** [expression](./expressions.md) ,[expression](./expressions.md)…

### Description

Writes text to the text output window, appending a new line. If multiple expressions are included in a single print statement, separated by commas, they will be output in 14 character wide left justified columns.

If the optional semicolon is included at the end of the statement, no new line is appended. The new line suppress is only available for print with a single expression.

### Example

    print "all one"
    ? "some";
    print "more"
    for t = 1 to 10
        ? t, t*2
    next t

Will output:

    all one
    somemore
    1             2
    2             4
    3             6
    4             8
    5             10
    6             12
    7             14
    8             16
    9             18
    10            20

### See Also

[?](./print.md), [Cls](./cls.md), [Print](./print.md)

### History

|       |                                                       |
|-------|-------------------------------------------------------|
| 2.0.0 | Added columnar output (comma) and the ‘?’ as shortcut |
