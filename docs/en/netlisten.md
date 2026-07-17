---
title: "Netlisten"
sidebar_label: "Netlisten"
---

## NetListen (Statement)

### Format

**netlisten** *port_number*\
**netlisten** ( *port_number*)\
**netlisten** [network_socket_number](./integerexpressions.md), *port_number*\
**netlisten** ( [network_socket_number](./integerexpressions.md), *port_number*)

### Description

Open up a network connection (server) on a specific port address and wait for another program to connect. If [network_socket_number](./integerexpressions.md) is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[Freenet](./freenet.md), [NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
