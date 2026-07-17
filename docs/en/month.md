---
title: "Month"
sidebar_label: "Month"
---

## Month (Function)

### Format

**month**\
**month** ( )

returns [integer_expression](./integerexpressions.md)

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

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
