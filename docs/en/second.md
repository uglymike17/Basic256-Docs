---
title: "Second"
sidebar_label: "Second"
---

## Second (Function)

### Format

**second**\
**second** ( )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the current system clock’s second of the current minute (0-59).

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

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
