---
title: "Freenet"
sidebar_label: "Freenet"
---

## FreeNet (Function)

### Format

**freenet**\
**freenet** ( )

returns [integer_expression](../en/integerexpressions.md)

### Description

BASIC256 allows for multiple network connections to be opened at a single time. The **freenet** function returns a free network [network_socket_number](../en/integerexpressions.md) that you can use in your next [NetConnect](../en/netconnect.md) statement. Once a connection is closed, **freenet** will return that [network_socket_number](../en/integerexpressions.md) to the list of available connection numbers and may reissue that number.

### See Also

[Freenet](../en/freenet.md), [NetAddress](../en/netaddress.md), [NetClose](../en/netclose.md), [NetConnect](../en/netconnect.md), [NetData](../en/netdata.md), [NetListen](../en/netlisten.md), [NetRead](../en/netread.md), [NetWrite](../en/netwrite.md)

### History

0.9.9.17 - New\
