---
title: "Freenet"
sidebar_label: "Freenet"
---

## FreeNet (Function)

### Format

**freenet**\
**freenet** ( )

returns [integer_expression](./integerexpressions.md)

### Description

BASIC256 allows for multiple network connections to be opened at a single time. The **freenet** function returns a free network [network_socket_number](./integerexpressions.md) that you can use in your next [NetConnect](./netconnect.md) statement. Once a connection is closed, **freenet** will return that [network_socket_number](./integerexpressions.md) to the list of available connection numbers and may reissue that number.

### See Also

[Freenet](./freenet.md), [NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### History

0.9.9.17 - New\
