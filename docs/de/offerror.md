---
title: "OffError"
sidebar_label: "OffError"
---

## OffError (Statement)

### Format

**offerror**

### Description

Removes the last error trap defined with the [OnError](../en/onerror.md) statement. Error traps are kept in a stack: if an earlier trap is still defined, it becomes the active one again. If all of the traps have been removed then error trapping is restored to the default behavior, and an error stops the program.

### Example

See examples of usage on [OnError](../en/onerror.md) and [ThrowError](../en/throwerror.md) pages.

### See Also

[Error Codes](../en/errorcodes.md), [Lasterror](../en/lasterror.md), [Lasterrorextra](../en/lasterrorextra.md), [Lasterrorline](../en/lasterrorline.md), [Lasterrormessage](../en/lasterrormessage.md), [Offerror](../en/offerror.md), [Onerror](../en/onerror.md), [ThrowError](../en/throwerror.md), [Try / Catch / EndTry](../en/try.md)

### History

|        |                |
|--------|----------------|
| 0.9.6z | New To Version |
