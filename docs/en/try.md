---
title: "Try"
sidebar_label: "Try"
---

## Try / Catch / EndTry (Statement)

### Format

**try**\
(tab)[statement(s)](./programsyntax.md)\
**catch**\
(tab)[statement(s)](./programsyntax.md)\
**end try**

### Description

Execute the [statement(s)](./programsyntax.md) inside the try. If a runtime error occurs jump to the code in the catch.

### Example

    for t = -1 to 1
       try
          print "9/"+t + "= " + (9/t)
       catch
          print "division by zero"
       end try
    next t

will display

    9/-1= -9
    division by zero
    9/1= 9

### See Also

[Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [OnStop](./onstop.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|         |                |
|---------|----------------|
| 1.0.0.2 | New To Version |
