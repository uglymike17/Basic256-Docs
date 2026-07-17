---
title: "Ostype"
sidebar_label: "Ostype"
---

## Ostype (Function)

### Format

**ostype**\
**ostype** ( )\
returns [integer_expression](./integerexpressions.md)

### Description

Returns a number representing the operating system/software environment that this BASIC256 executable file was compiled for.

| Return Values    |       |
|------------------|-------|
| Constant         | Value |
| OSTYPE_WINDOWS   | 0     |
| OSTYPE_LINUX     | 1     |
| OSTYPE_MACINTOSH | 2     |
| OSTYPE_ANDROID   | 3     |

### Example

    print "You are using a ";
    if ostype() = 0 then
       print "windows";
    else
       print "non-windows";
    end if
    print " machine."

Will display something like

    You are using a non-windows machine.

### See Also

[EditVisible](./editvisible.md), [GraphToolBarVisible](./graphtoolbarvisible.md), [GraphVisible](./graphvisible.md), [Include](./include.md),[MainToolbarVisible](./maintoolbarvisible.md), [OutputToolBarVisible](./outputtoolbarvisible.md), [OutputVisible](./outputvisible.md), [RegexMinimal](./regexminimal.md), [Ostype](./ostype.md), [System](./system.md), [Version](./version.md)

### History

|            |                       |
|------------|-----------------------|
| 0.9.6.58   | New To Version        |
| 1.0.1.0    | Added Android         |
| 1.99.99.58 | Added Named Constants |
