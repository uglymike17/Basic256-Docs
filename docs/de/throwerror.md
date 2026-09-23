---
title: "Throwerror"
sidebar_label: "Throwerror"
---

## ThrowError (Statement)

### Format

**throwerror** *int_expr*\
**throwerror** ( *int_expr* )\

### Description

Cause a runtime error to occour. These errors may be trapped with the [Onerror](../en/onerror.md) statement.

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

[Lasterror](../en/lasterror.md), [Lasterrorextra](../en/lasterrorextra.md), [Lasterrorline](../en/lasterrorline.md), [Lasterrormessage](../en/lasterrormessage.md), [Offerror](../en/offerror.md), [Onerror](../en/onerror.md), [OnStop](../en/onstop.md), [ThrowError](../en/throwerror.md), [Try / Catch / EndTry](../en/try.md)

### History

|            |                                                             |
|------------|-------------------------------------------------------------|
| 0.9.6.75   | New To Version                                              |
| 1.99.99.33 | Removed the ability to use a subroutine in an onerror trap. |
