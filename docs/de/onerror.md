---
title: "OnError"
sidebar_label: "OnError"
---

## OnError (Statement)

### Format

**onerror** [label](../en/labelprogramsyntax.md)

### Description

Causes the [Gosub](../en/gosubreturn.md) at [label](../en/labelprogramsyntax.md) to be executed when a runtime error occurs. Program control may be resumed at the next statement with a [Return](../en/gosubreturn.md) statement in the subroutine. Error traps are kept in a stack so that the last defined trap, that has not been removed with an [OffError](../en/offerror.md) will be the active one.

You may not execute an OnError statement inside a [Try / Catch / End Try](../en/try.md) statement.

### Example

    # test error trapping
    onerror nicetrap
    print 1
    next haha
    print 2
    open 999, "bogus.file"
    print "Runs Anyway"

    # test error trapping off and fail at any error (default)
    offerror
    print 3
    next hoho
    print "never get here"

    end

    nicetrap:
    # this is the nice error handler
    print "trap and run - error on line " + lasterrorline + " - error number " + lasterror + " message " + lasterrormessage + " (" + lasterrorextra + ")"
    return

will display\

    1
    trap and run - error on line 4 - error number 4 message Next without FOR ()
    2
    trap and run - error on line 6 - error number 5 message Invalid File Number ()
    Runs Anyway
    3
    ERROR on line 12: Next without FOR 

See additional example of usage on [ThrowError](../en/throwerror.md) page.

### See Also

[Lasterror](../en/lasterror.md), [Lasterrorextra](../en/lasterrorextra.md), [Lasterrorline](../en/lasterrorline.md), [Lasterrormessage](../en/lasterrormessage.md), [Offerror](../en/offerror.md), [Onerror](../en/onerror.md), [OnStop](../en/onstop.md), [ThrowError](../en/throwerror.md), [Try / Catch / EndTry](../en/try.md)

### History

|            |                                                            |
|------------|------------------------------------------------------------|
| 0.9.6z     | New To Version                                             |
| 1.99.99.33 | Removed the ability to use a subroutine for error trapping |
