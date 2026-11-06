---
title: "ThrowError"
sidebar_label: "ThrowError"
---

## ThrowError (Statement)

### Format

**throwerror** *int_expr*\
**throwerror** ( *int_expr* )

### Description

Cause a runtime error to occur, with the number given. It is handled like any other error: it can be caught with [Try / Catch / EndTry](./try.md) or an [OnError](./onerror.md) trap, and without one the program stops. Thrown from inside a [Subroutine](./subroutine.md) or [Function](./function.md), it jumps right out of it to the catch.

Use a number that BASIC-256 does not use itself (see [Error Codes](./errorcodes.md)), for example 1000 or more: [LastErrorMessage](./lasterrormessage.md) then returns "User thrown error number". A number that BASIC-256 already uses gets that error's message.

### Example

    for speed = 50 to 150 step 50
       try
          call setspeed(speed)
       catch
          print "error " + lasterror + ": " + lasterrormessage
       end try
    next speed
    end

    subroutine setspeed(s)
       if s > 100 then throwerror 1001
       print "speed set to " + s
    end subroutine

will display

    speed set to 50
    speed set to 100
    error 1001: User thrown error number

With an [OnError](./onerror.md) trap:

    onerror errortrap
    print "before error"
    throwerror 99
    print "after error"
    end

    errortrap:
    print "error " + lasterror + " happened"
    return

will display

    before error
    error 99 happened
    after error

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.75 | New To Version |
