---
title: "Maplist"
sidebar_label: "Maplist"
---

## Map List - Keys and Values

A Map List is a connection of string keys and associated values. The key and value are separated by **‘-\>’** and key value pairs are separated by commas **‘,’**. Remember, maps are automatically sorted by their keys and a Map List will sort automatically at run-time.

You may use Map Lists in many statements that are expecting maps and can be used to create a map without the [map](./map.md) statement.

### Example

    inventory = {"apple"->.27,"bananna"->.18,"orange"->.43, "grapefruit"->1.02}
    print "fruit","price"
    foreach f -> p in inventory
        ? f,p
    next

### History

|         |                 |
|---------|-----------------|
| 2.0.0.0 | Added Map Lists |
