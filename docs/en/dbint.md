---
title: "Dbint"
sidebar_label: "Dbint"
---

## DBInt (Function)

### Format

**dbint** ( [numeric_expression](./numericexpressions.md) )\
**dbint** ( [database_number](./integerexpressions.md) , [numeric_expression](./numericexpressions.md) )\
**dbint** ( [database_number](./integerexpressions.md) , [database_recordset_number](./integerexpressions.md) , [numeric_expression](./numericexpressions.md) )\
**dbint** ( [string_expression](./stringexpressions.md) )\
**dbint** ( [database_number](./integerexpressions.md) , [string_expression](./stringexpressions.md) )\
**dbint** ( [database_number](./integerexpressions.md) , [database_recordset_number](./integerexpressions.md) , [string_expression](./stringexpressions.md) )\
returns [integer_expression](./integerexpressions.md)

### Description

Return an integer value from the specified column number or name of the current row of the open recordset. If the field is a NULL value the integer number 0 will be returned. NULL may be tested for by using the [DBNull](./dbnull.md) function.

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
| 0.9.9.22 | Added column name or alias                   |
