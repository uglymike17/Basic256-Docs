---
title: "Dbopenset"
sidebar_label: "Dbopenset"
---

## DBOpenset (Statement)

### Format

**dbopenset** [sql_statement](./stringexpressions.md)\
**dbopenset** ( [sql_statement](./stringexpressions.md) )\
**dbopenset** [database_number](./integerexpressions.md) , [sql_statement](./stringexpressions.md)\
**dbopenset** ( [database_number](./integerexpressions.md) , [sql_statement](./stringexpressions.md) )\
**dbopenset** [database_number](./integerexpressions.md) , [database_recordset_number](./integerexpressions.md) , [sql_statement](./stringexpressions.md)\
**dbopenset** ( [database_number](./integerexpressions.md) , [database_recordset_number](./integerexpressions.md) , [sql_statement](./stringexpressions.md) )\

### Description

Perform an SQL statement and create a record set so that the program may loop through and use the results.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

*(See [en:start](./start.md).)*&noheader)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### History

|          |                                              |
|----------|----------------------------------------------|
| 0.9.6y   | New to Version                               |
| 0.9.9.19 | Added ability to have 8 database connections |
