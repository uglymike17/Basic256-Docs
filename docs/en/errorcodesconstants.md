---
title: "Error Code Constants"
sidebar_label: "Error Code Constants"
---

## Error Code Constants

Every error and warning number has a name, such as ERROR_DIVZERO (50) or WARNING_VARNOTASSIGNED (65549). Most of these names are also constants in BASIC-256, so a program can compare [LastError](./lasterror.md) with a name instead of a number. Like all constants they may be written in small letters.

The full list of numbers, names and messages is on the [Error Codes](./errorcodes.md) page. The names marked † there have only a number, not a constant.

### Example

    try
       print 1 / 0
    catch
       if lasterror = error_divzero then print "division by zero"
    end try
    print error_divzero
    print warning_varnotassigned

will display

    division by zero
    50
    65549

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md), [ThrowError](./throwerror.md), [Try / Catch / EndTry](./try.md)

### History

|         |                        |
|---------|------------------------|
| 2.0.0.0 | Added to Documentation |
