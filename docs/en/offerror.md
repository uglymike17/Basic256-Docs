---
title: "OffError"
sidebar_label: "OffError"
---

## OffError (Statement)

### Format

**offerror**

### Description

Removes the last error trap defined with the [OnError](./onerror.md) statement. Error traps are kept in a stack: if an earlier trap is still defined, it becomes the active one again. If all of the traps have been removed then error trapping is restored to the default behavior, and an error stops the program.

### Example

See examples of usage on [OnError](./onerror.md) and [ThrowError](./throwerror.md) pages.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|        |                |
|--------|----------------|
| 0.9.6z | New To Version |
