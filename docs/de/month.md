---
title: "Month"
sidebar_label: "Month"
---

## Month (Function)

### Format

**month**\
**month** ( )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the current system clock’s month. January is 0, February is 1… December is 11.

### Example

    cls
    dim n$(12)
    n$ = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
    print day + "-" + n$[month] + "-" + year

on New Years will display

    1-Jan-2010

### See Also

[Day](../en/day.md), [Hour](../en/hour.md), [Minute](../en/minute.md), [Month](../en/month.md), [Msec](../en/msec.md), [Second](../en/second.md), [Year](../en/year.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
