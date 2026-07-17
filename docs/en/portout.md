---
title: "Portout"
sidebar_label: "Portout"
---

## PortOut (Statement)

### Format

**portout** *io port number*, [integer_expression](./integerexpressions.md)
**portout** ( *io port number*, [integer_expression](./integerexpressions.md) )

### Description

Writes value (0-255) to system I/O port.

Reading and writing system I/O ports can be dangerous and can cause unpredictable results. This statement may be disabled because of potential system security issues. Availability may be configured in the IDE by going to the Edit\>Preferences menu.

Only available in Windows port. It is disabled by default after version 2.0.0. If you need this functionality, ou may install the inpout32.dll libraries from <http://www.highrez.co.uk/Downloads/InpOut32/> and compile from source.

### Example

    for y = 0 to 255
       portout 0x378,y
       print y + " " + portin(0x379)
       pause .1
    next

will output the numbers 0-255 to the standard first printer port and print the value of the status register.

### See Also

[PortIn](./portin.md), [PortOut](./portout.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.41 | New To Version |
