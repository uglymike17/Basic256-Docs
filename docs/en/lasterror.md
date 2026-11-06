---
title: "LastError"
sidebar_label: "LastError"
---

## LastError (Function)

### Format

**lasterror**\
**lasterror** ( )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the number of the last runtime error or warning that was trapped with [Try / Catch / EndTry](./try.md) or [OnError](./onerror.md). It keeps that value until the next error, also after the catch or the trap has finished. Before any error it returns 0.

Warnings have numbers from 65536 up. The numbers are listed on the [Error Codes](./errorcodes.md) page, and most of them have a constant, so a program can test for example `lasterror = error_divzero`.

### Example

    print lasterror
    try
       print 1 / 0
    catch
       print "caught"
    end try
    print lasterror + " on line " + lasterrorline + ": " + lasterrormessage

will display

    0
    caught
    50 on line 3: Division by zero

See more examples of usage on [OnError](./onerror.md) and [ThrowError](./throwerror.md) pages.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|        |                |
|--------|----------------|
| 0.9.6z | New To Version |
