---
title: "Portin"
sidebar_label: "Portin"
---

## PortIn (Function)

### Format

**portin** ( *io port number* )

returns [integer_expression](./integerexpressions.md)

### Description

Reads a system I/O port from memory and returns the value (0-255).

Reading and writing system I/O ports can be dangerous and can cause unpredictable results. This statement may be disabled because of potential system security issues. Availability may be configured in the IDE by going to the Edit\>Preferences menu.

Only available in Windows port. It is disabled by default after version 2.0.0. If you need this functionality, ou may install the inpout32.dll libraries from <http://www.highrez.co.uk/Downloads/InpOut32/> and compile from source.

### Example

See example on [PortOut](./portout.md) page.

### See Also

[PortIn](./portin.md), [PortOut](./portout.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.41 | New To Version |
