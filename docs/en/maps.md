---
title: "Maps"
sidebar_label: "Maps"
---

## Maps

Maps, also known ad dictionaries in Python, are created using the [Map](./map.md) statement. They may hold numeric or string data. Access to specific elements in a map is accomplished by using square brackets along with the string key associated with the element.

You may use the [Array length](./arraylength.md) \[?\] operator or the [Length](./length.md) function.

Internally maps are stores in alphabetic order. You may easily loop through a map using the [For Next](./fornext.md) statement.

    map grades

    grades['bob'] = 90
    grades['mary'] = 96
    grades['jimmy'] = 76

    total = 0
    foreach name in grades
        ? name, grades[name]
        total = total + grades[name]
    next name

    ? "the class average is", total/length(grades)

displays

    bob           90
    jimmy         76
    mary          96
    the class average is        87.3333333333

### History

|         |                |
|---------|----------------|
| 2.0.0.0 | New to version |
