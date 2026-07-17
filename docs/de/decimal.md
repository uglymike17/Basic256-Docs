---
title: "Decimal"
sidebar_label: "Decimal"
---

## Decimal

### Format

**decimal** ( *expression* )\
**decimal** *expression*

### Description

Defines the maximum number of decimal places (0-16) to convert when a floating point number is changed into a string.
This does not change the internal precision of numeric calculations but only changes how they are displayed or stored as a string.
By default a maximum of 6 decimal digits will display.

### Example

    print 2/3
    decimal 10
    print 2/3
    decimal 15
    print 2/3

will print

    0.666667
    0.6666666667
    0.666666666666667

### See Also

[Print](./print.md), [String](./string.md)

### New To Version

0.9.6w
