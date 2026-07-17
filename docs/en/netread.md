---
title: "Netread"
sidebar_label: "Netread"
---

## NetRead (Function)

### Format

**netread**\
**netread** ( )\
**netread** ( [network_socket_number](./integerexpressions.md) )

returns [string_expression](./stringexpressions.md)

### Description

Read data from the specified network connection and return it as a string. This function will wait until data is received. If [network_socket_number](./integerexpressions.md) is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[Freenet](./freenet.md), [NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
