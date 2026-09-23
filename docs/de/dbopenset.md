---
title: "Dbopenset"
sidebar_label: "Dbopenset"
---

## DBOpenset (Statement)

### Format

**dbopenset** [sql_statement](../en/stringexpressions.md)\
**dbopenset** ( [sql_statement](../en/stringexpressions.md) )\
**dbopenset** [database_number](../en/integerexpressions.md) , [sql_statement](../en/stringexpressions.md)\
**dbopenset** ( [database_number](../en/integerexpressions.md) , [sql_statement](../en/stringexpressions.md) )\
**dbopenset** [database_number](../en/integerexpressions.md) , [database_recordset_number](../en/integerexpressions.md) , [sql_statement](../en/stringexpressions.md)\
**dbopenset** ( [database_number](../en/integerexpressions.md) , [database_recordset_number](../en/integerexpressions.md) , [sql_statement](../en/stringexpressions.md) )\

### Description

Perform an SQL statement and create a record set so that the program may loop through and use the results.

### Example

See example of usage on [DBOpen](../en/dbopen.md) page.

### Permissions

The statement is checked exactly as [DbExecute](../en/dbexecute.md) is: `ATTACH
DATABASE` and `VACUUM INTO` name a file, and that file is subject to the same
permission as any other. See [File and Folder Permissions](../en/filepermissions.md).

### See Also

*(See [en:start](../en/start.md).)*&noheader)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### History

|          |                                              |
|----------|----------------------------------------------|
| 0.9.6y   | New to Version                               |
| 0.9.9.19 | Added ability to have 8 database connections |
