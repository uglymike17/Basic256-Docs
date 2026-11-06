---
title: "LastError"
sidebar_label: "LastError"
---

## LastError (Function)

### Format

**lasterror**\
**lasterror** ( )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the number of the last runtime error or warning that was trapped with [Try / Catch / EndTry](../en/try.md) or [OnError](../en/onerror.md). It keeps that value until the next error, also after the catch or the trap has finished. Before any error it returns 0.

Warnings have numbers from 65536 up. The numbers are listed on the [Error Codes](../en/errorcodes.md) page, and most of them have a constant, so a program can test for example `lasterror = error_divzero`.

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

See more examples of usage on [OnError](../en/onerror.md) and [ThrowError](../en/throwerror.md) pages.

### See Also

[Error Codes](../en/errorcodes.md), [Lasterror](../en/lasterror.md), [Lasterrorextra](../en/lasterrorextra.md), [Lasterrorline](../en/lasterrorline.md), [Lasterrormessage](../en/lasterrormessage.md), [Offerror](../en/offerror.md), [Onerror](../en/onerror.md), [ThrowError](../en/throwerror.md), [Try / Catch / EndTry](../en/try.md)

### History

|        |                |
|--------|----------------|
| 0.9.6z | New To Version |
