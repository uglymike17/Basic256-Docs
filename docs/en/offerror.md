---
title: "Offerror"
sidebar_label: "Offerror"
---

## OffError (Statement)

### Format

**offerror**

### Description

Removes the last error trap defined with the [OnError](./onerror.md) statement. If all of the traps have been removed then error trapping is restored to the default behavior.

You may not execute an OffError statement inside a [Try / Catch / End Try](./try.md) statement.

### Example

See examples of usage on [OnError](./onerror.md) and [ThrowError](./throwerror.md) pages.

### See Also

[Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [OnStop](./onstop.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|        |                |
|--------|----------------|
| 0.9.6z | New To Version |
