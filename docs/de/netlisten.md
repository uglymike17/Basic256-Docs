---
title: "Netlisten"
sidebar_label: "Netlisten"
---

## NetListen

### Format

**netlisten** *port_number*\
**netlisten** ( *port_number*)\
**netlisten** *socket_number*, *port_number*\
**netlisten** ( *socket_number*, *port_number*)

### Description

Open up a network connection (server) on a specific port address and wait for another program to connect. If *socket_number* is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### Berechtigungen

NETLISTEN nimmt nur Verbindungen von diesem Computer an. Verbindungen von
anderen Rechnern werden in den Einstellungen freigegeben. Siehe
[NetListen](../en/netlisten.md).

### See Also

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31
