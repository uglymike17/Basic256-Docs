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

### Permissions

Netlisten accepts connections only from programs running on the same computer.
This is what a pair of programs being written and tried out together needs, and
it keeps a program from opening a way in to the machine from the outside.

To accept connections from other machines -- two computers in a classroom
talking to each other, for instance -- tick *NETLISTEN accepts connections from
other machines* on the Advanced tab of Preferences.

### See Also

[Freenet](./freenet.md), [NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.31 | New To Version |
