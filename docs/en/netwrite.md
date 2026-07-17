---
title: "Netwrite"
sidebar_label: "Netwrite"
---

## NetWrite (Statement)

### Format

**netwrite** [string_expression](./stringexpressions.md)\
**netwrite** ( [string_expression](./stringexpressions.md) )\
**netwrite** [network_socket_number](./integerexpressions.md), [string_expression](./stringexpressions.md)\
**netwrite** ( [network_socket_number](./integerexpressions.md), [string_expression](./stringexpressions.md) )

### Description

Send a string to the specified open network connection. If [network_socket_number](./integerexpressions.md) is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[Freenet](./freenet.md), [NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
