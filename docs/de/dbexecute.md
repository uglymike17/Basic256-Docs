---
title: "Dbexecute"
sidebar_label: "Dbexecute"
---

## DBExecute (Statement)

### Format

**dbexecute** [sql_statement](../en/stringexpressions.md)\
**dbexecute** ( [sql_statement](../en/stringexpressions.md) )\
**dbexecute** [database_number](../en/integerexpressions.md) , [sql_statement](../en/stringexpressions.md)\
**dbexecute** ( [database_number](../en/integerexpressions.md) , [sql_statement](../en/stringexpressions.md) )

### Description

Execute an SQL statement contained in the string expression on the open SQLite database file. This statement does not create a record set.

### Example

See example of usage on [DBOpen](../en/dbopen.md) page.

### Permissions

Ordinary SQL is passed to the database untouched. Two statements name a file of
their own and are checked before they run: `ATTACH DATABASE`, which opens a
second database file, and `VACUUM INTO`, which writes a copy of the database to
a new file. A file in the program's own folder is used with no question asked;
one elsewhere asks the user's permission.

`ATTACH DATABASE ':memory:'` needs no file and is always allowed. A name
written as a `file:` URI, or built up by an expression rather than written out
as text, is refused outright, because what it would open cannot be known before
the statement runs. See [File and Folder Permissions](../en/filepermissions.md).

### See Also

*(See [en:start](../en/start.md).)*&noheader)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### History

|          |                                              |
|----------|----------------------------------------------|
| 0.9.6y   | New to Version                               |
| 0.9.9.19 | Added ability to have 8 database connections |
