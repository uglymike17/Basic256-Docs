---
title: "Netread"
sidebar_label: "Netread"
---

## NetRead (Function)

### Format

**netread**\
**netread** ( )\
**netread** ( [network_socket_number](../en/integerexpressions.md) )

returns [string_expression](../en/stringexpressions.md)

### Description

Read data from the specified network connection and return it as a string. This function will wait until data is received. If [network_socket_number](../en/integerexpressions.md) is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](../en/netconnect.md) page.

### See Also

[Freenet](../en/freenet.md), [NetAddress](../en/netaddress.md), [NetClose](../en/netclose.md), [NetConnect](../en/netconnect.md), [NetData](../en/netdata.md), [NetListen](../en/netlisten.md), [NetRead](../en/netread.md), [NetWrite](../en/netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
