---
title: "Dbcloseset"
sidebar_label: "Dbcloseset"
---

## DBCloseSet (Statement)

### Format

**dbcloseset**\
**dbcloseset** ( )\
**dbcloseset** [database_number](../en/integerexpressions.md)\
**dbcloseset** ( [database_number](../en/integerexpressions.md) )\
**dbcloseset** [database_number](../en/integerexpressions.md) , [database_recordset_number](../en/integerexpressions.md)\
**dbcloseset** ( [database_number](../en/integerexpressions.md), [database_recordset_number](../en/integerexpressions.md) )

### Description

Close the currently open record set opened by [DBOpenSet](../en/dbopenset.md).

### Example

See example of usage on [DBOpen](../en/dbopen.md) page.

### See Also

*(See [en:start](../en/start.md).)*&noheader)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### History

|          |                                              |
|----------|----------------------------------------------|
| 0.9.6y   | New to Version                               |
| 0.9.9.19 | Added ability to have 8 database connections |
