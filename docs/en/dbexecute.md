---
title: "Dbexecute"
sidebar_label: "Dbexecute"
---

## DBExecute (Statement)

### Format

**dbexecute** [sql_statement](./stringexpressions.md)\
**dbexecute** ( [sql_statement](./stringexpressions.md) )\
**dbexecute** [database_number](./integerexpressions.md) , [sql_statement](./stringexpressions.md)\
**dbexecute** ( [database_number](./integerexpressions.md) , [sql_statement](./stringexpressions.md) )

### Description

Execute an SQL statement contained in the string expression on the open SQLite database file. This statement does not create a record set.

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
