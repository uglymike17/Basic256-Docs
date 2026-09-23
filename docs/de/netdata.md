---
title: "Netdata"
sidebar_label: "Netdata"
---

## NetData (Function)

### Format

**netdata**\
**netdata** ( )\
**netdata** ( [network_socket_number](../en/integerexpressions.md) )

returns [boolean_expression](../en/booleanexpressions.md)

### Description

Returns a true value if there is data waiting to be read in using the [NetRead](../en/netread.md) function, else returns false. If [network_socket_number](../en/integerexpressions.md) is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](../en/netconnect.md) page.

### See Also

[Freenet](../en/freenet.md), [NetAddress](../en/netaddress.md), [NetClose](../en/netclose.md), [NetConnect](../en/netconnect.md), [NetData](../en/netdata.md), [NetListen](../en/netlisten.md), [NetRead](../en/netread.md), [NetWrite](../en/netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
