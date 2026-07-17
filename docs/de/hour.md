---
title: "Hour"
sidebar_label: "Hour"
---

## Hour

### Format

hour\
hour()

### Description

Returns the current system clock’s hour of the day (0-23).

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

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

### New To Version

0.9.4
