---
title: "Freedb"
sidebar_label: "Freedb"
---

## FreeDB (Function)

### Format

**freedb**\
**freedb** ( )

returns [integer_expression](./integerexpressions.md)

### Description

BASIC256 allows for multiple databases to be opened at a single time. The **freedb** function returns a free [database_number](./integerexpressions.md) that you can use in your next [DBOpen](./dbopen.md) statement. Once a database is closed, **freedb** will return that database number to the list of available database numbers and may reissue that number.

### See Also

*(See [en:start](./start.md).)*&noheader)

### History

|          |                |
|----------|----------------|
| 0.9.9.17 | New to Version |
