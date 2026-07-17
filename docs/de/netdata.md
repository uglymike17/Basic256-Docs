---
title: "Netdata"
sidebar_label: "Netdata"
---

## NetData

### Format

**netdata**\
**netdata** ( )\
**netdata** *socket_number*\
**netdata** ( *socket_number* )

### Description

Returns a true value (1) of there is data waiting to be read in using the [NetRead](./netread.md) function, else returns false (0). If *socket_number* is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31
