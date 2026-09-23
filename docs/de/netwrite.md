---
title: "Netwrite"
sidebar_label: "Netwrite"
---

## NetWrite (Statement)

### Format

**netwrite** [string_expression](../en/stringexpressions.md)\
**netwrite** ( [string_expression](../en/stringexpressions.md) )\
**netwrite** [network_socket_number](../en/integerexpressions.md), [string_expression](../en/stringexpressions.md)\
**netwrite** ( [network_socket_number](../en/integerexpressions.md), [string_expression](../en/stringexpressions.md) )

### Description

Send a string to the specified open network connection. If [network_socket_number](../en/integerexpressions.md) is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](../en/netconnect.md) page.

### See Also

[Freenet](../en/freenet.md), [NetAddress](../en/netaddress.md), [NetClose](../en/netclose.md), [NetConnect](../en/netconnect.md), [NetData](../en/netdata.md), [NetListen](../en/netlisten.md), [NetRead](../en/netread.md), [NetWrite](../en/netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
