---
title: "Dbstring"
sidebar_label: "Dbstring"
---

## DBString (Function)

### Format

**dbstring** ( [numeric_expression](../en/numericexpressions.md) )\
**dbstring** ( [database_number](../en/integerexpressions.md) , [numeric_expression](../en/numericexpressions.md) )\
**dbstring** ( [database_number](../en/integerexpressions.md) , [database_recordset_number](../en/integerexpressions.md) , [numeric_expression](../en/numericexpressions.md) )\
**dbstring** ( [string_expression](../en/stringexpressions.md) )\
**dbstring** ( [database_number](../en/integerexpressions.md) , [string_expression](../en/stringexpressions.md) )\
**dbstring** ( [database_number](../en/integerexpressions.md) , [database_recordset_number](../en/integerexpressions.md) , [string_expression](../en/stringexpressions.md) )\
returns [string_expression](../en/stringexpressions.md)

### Description

Return a string from the specified column number or name of the current row of the open recordset. If the field is a NULL value the empty string “” will be returned. NULL may be tested for by using the [DBNull](../en/dbnull.md) function.

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
| 0.9.9.22 | Added column name or alias                   |
