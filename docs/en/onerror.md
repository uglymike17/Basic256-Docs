---
title: "OnError"
sidebar_label: "OnError"
---

## OnError (Statement)

### Format

**onerror** [label](./labelprogramsyntax.md)\
**onerror** *subroutine_name* **( )**

### Description

Sets up an error trap. From then on, when a runtime error or a warning happens, BASIC-256 runs the trap instead of stopping the program.

- **onerror** *label* runs the code at the [label](./labelprogramsyntax.md) like a [Gosub](./gosubreturn.md). That code must end with a [Return](./gosubreturn.md).
- **onerror** *subroutine_name*() calls the [Subroutine](./subroutine.md). The brackets are needed: without them the name is taken as a label. The subroutine may not have parameters.

When the trap has finished, the program carries on in the statement that had the error. The operation that failed gives an empty value: 0 in a calculation, an empty string in a string. Inside the trap, [LastError](./lasterror.md), [LastErrorLine](./lasterrorline.md), [LastErrorMessage](./lasterrormessage.md) and [LastErrorExtra](./lasterrorextra.md) tell you what went wrong.

Error traps are kept in a stack, so the last trap defined that has not been removed with [OffError](./offerror.md) is the active one. An error inside a [Try / Catch / End Try](./try.md) goes to its catch, not to the trap.

If the trap itself causes an error, the trap is called again for that error, and again: the program does not stop by itself. Keep the trap simple.

### Example

    # trap errors with a label
    onerror nicetrap
    print 1
    print 10 / 0
    open 99, "bogus.file"
    print "Runs Anyway"

    # turn trapping off, and stop at the next error (the default)
    offerror
    print 2
    print 10 / 0
    print "never get here"
    end

    nicetrap:
    print "trap - line " + lasterrorline + " - error " + lasterror + " - " + lasterrormessage
    return

will display

    1
    trap - line 4 - error 50 - Division by zero
    0.0
    trap - line 5 - error 5 - Invalid File Number
    Runs Anyway
    2
    ERROR on line 11: Division by zero.

The same with a subroutine:

    # trap errors with a subroutine
    onerror trap()
    print "z = " + z
    x = 10 / 0
    print "x = " + x
    end

    subroutine trap()
       print "error " + lasterror + " on line " + lasterrorline + ": " + lasterrormessage
    end subroutine

will display

    error 13 on line 3: Variable z has not been assigned a value
    z =
    error 50 on line 4: Division by zero
    x = 0.0

See additional example of usage on [ThrowError](./throwerror.md) page.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|        |                |
|--------|----------------|
| 0.9.6z | New To Version |
