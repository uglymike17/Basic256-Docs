---
title: "Getclipboardstring"
sidebar_label: "Getclipboardstring"
---

## GetClipboardString (Function)

### Format

**GetClipboardString** ( )

returns [string](./stringexpressions.md)

### Description

Returns the string on the system system clipboard. If there is not a string on the clipboard it will return an empty string ’’.

### Example

    a = GetClipboardString()
    print("the clipboard contains '"; a; "'")

### See Also

[GetClipboardImage](./getclipboardimage.md), [GetClipboardString](./getclipboardstring.md), [SetClipboardImage](./setclipboardimage.md), [SetClipboardString](./setclipboardstring.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.8 | New to Version |
