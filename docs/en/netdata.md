---
title: "Netdata"
sidebar_label: "Netdata"
---

## NetData (Function)

### Format

**netdata**\
**netdata** ( )\
**netdata** ( [network_socket_number](./integerexpressions.md) )

returns [boolean_expression](./booleanexpressions.md)

### Description

Returns a true value if there is data waiting to be read in using the [NetRead](./netread.md) function, else returns false. If [network_socket_number](./integerexpressions.md) is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[Freenet](./freenet.md), [NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
