---
title: "LastErrorLine"
sidebar_label: "LastErrorLine"
---

## LastErrorLine (Function)

### Format

**lasterrorline**\
**lasterrorline** ( )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the line number in the program where the last trapped runtime error happened. For an error inside a [Subroutine](./subroutine.md) or [Function](./function.md), it is the line inside it.

### Example

See examples of usage on [OnError](./onerror.md) and [LastError](./lasterror.md) pages.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|        |                |
|--------|----------------|
| 0.9.6z | New To Version |
