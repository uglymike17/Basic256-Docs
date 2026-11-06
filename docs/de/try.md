---
title: "Try / Catch / EndTry"
sidebar_label: "Try / Catch / EndTry"
---

## Try / Catch / EndTry (Statement)

### Format

**try**\
(tab)[statement(s)](../en/programsyntax.md)\
**catch**\
(tab)[statement(s)](../en/programsyntax.md)\
**end try**

### Description

Execute the [statement(s)](../en/programsyntax.md) inside the try. If a runtime error or a warning happens, the rest of the try part is skipped and the program jumps to the code in the catch. If nothing goes wrong, the catch part is skipped. Either way the program carries on after **end try**, which may also be written **endtry**.

- Errors that happen inside a [Subroutine](../en/subroutine.md) or [Function](../en/function.md) called from the try are caught too.
- A try may be put inside another try. An error in the catch part of the inner one goes to the outer catch.
- A try comes before an [OnError](../en/onerror.md) trap: an error inside a try goes to its catch.

In the catch, [LastError](../en/lasterror.md), [LastErrorLine](../en/lasterrorline.md) and [LastErrorMessage](../en/lasterrormessage.md) tell you which error it was.

### Example

    for t = -1 to 1
       try
          print "9/"+t + "= " + (9/t)
       catch
          print "division by zero"
       end try
    next t

will display

    9/-1= -9.0
    division by zero
    9/1= 9.0

### See Also

[Error Codes](../en/errorcodes.md), [Lasterror](../en/lasterror.md), [Lasterrorextra](../en/lasterrorextra.md), [Lasterrorline](../en/lasterrorline.md), [Lasterrormessage](../en/lasterrormessage.md), [Offerror](../en/offerror.md), [Onerror](../en/onerror.md), [ThrowError](../en/throwerror.md), [Try / Catch / EndTry](../en/try.md)

### History

|         |                |
|---------|----------------|
| 1.0.0.2 | New To Version |
