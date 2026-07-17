---
title: "Month"
sidebar_label: "Month"
---

## Month

### Format

**month**\
**month**()

### Description

Returns the current system clock’s month. January is 0, February is 1… December is 11.

### See Also

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Second](./second.md), [Year](./year.md)

### Example

    cls
    dim n$(12)
    n$ = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
    print day + "-" + n$[month] + "-" + year

on New Years will display

    1-Jan-2010

### New To Version

0.9.4
