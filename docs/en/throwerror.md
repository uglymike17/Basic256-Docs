---
title: "Throwerror"
sidebar_label: "Throwerror"
---

## ThrowError (Statement)

### Format

**throwerror** *int_expr*\
**throwerror** ( *int_expr* )\

### Description

Cause a runtime error to occour. These errors may be trapped with the [Onerror](./onerror.md) statement.

### Example

    onerror errortrap
    print "before error"
    throwerror 99
    print "after error"
    end

    errortrap:
    print "error " + lasterror + " happened"
    return

will display\

    before error
    error 99 happened
    after error

### See Also

[Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [OnStop](./onstop.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|            |                                                             |
|------------|-------------------------------------------------------------|
| 0.9.6.75   | New To Version                                              |
| 1.99.99.33 | Removed the ability to use a subroutine in an onerror trap. |
