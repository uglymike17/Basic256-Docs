---
title: "Freedbset"
sidebar_label: "Freedbset"
---

## FreeDBSet (Function)

### Format

**freedbset** ( [database_number](./integerexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

BASIC256 allows for multiple databases with multiple result sets to be opened at a single time. The **freedbset** function returns a free [database_recordset_number](./integerexpressions.md) for an open database connection that you can use in your next [DBOpenSet](./dbopenset.md) statement. Once a database set is closed, **freedbset** will return that file number to the list of available database set numbers and may reissue that number.

### See Also

*(See [en:start](./start.md).)*&noheader)

### History

|          |     |
|----------|-----|
| 0.9.9.17 | New |
