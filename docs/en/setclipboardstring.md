---
title: "Setclipboardstring"
sidebar_label: "Setclipboardstring"
---

## SetClipboardString (Statement)

### Format

**SetClipboardString** ( [string](./stringexpressions.md) )

### Description

Copies the string to the system clipboard.

### Example

    password = "kjjhJHK678."
    setclipboardstring password
    print "paste password now"
    pause 10
    setclipboardstring ""
    print "clipboard cleared"

### See Also

[GetClipboardImage](./getclipboardimage.md), [GetClipboardString](./getclipboardstring.md), [SetClipboardImage](./setclipboardimage.md), [SetClipboardString](./setclipboardstring.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.8 | New to Version |
