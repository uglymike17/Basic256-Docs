---
title: "Minute"
sidebar_label: "Minute"
---

## Minute (Function)

### Format

**minute**\
**minute** ( )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the current system clock’s minute of the hour (0-59).

### Example

    # display nice date
    dim months$(12)
    months$ = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
    print year + "-" + months$[month] + "-" + right("0" + day, 2)
    # display pretty time
    h = hour
    if h > 12 then
    h = h - 12
    ampm$ = "PM"
    else
    ampm$ = "AM"
    end if
    if h = 0 then h = 12
    print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$

Will print something like.\

    2010-July-15
    10-00-02 PM

### See Also

[Day](../en/day.md), [Hour](../en/hour.md), [Minute](../en/minute.md), [Month](../en/month.md), [Msec](../en/msec.md), [Second](../en/second.md), [Year](../en/year.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
