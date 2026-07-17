---
title: "Dbrow"
sidebar_label: "Dbrow"
---

## DBRow (Function)

### Format

**dbrow**\
**dbrow** ( )\
**dbrow** ( [database_number](./integerexpressions.md) )\
**dbrow** ( [database_number](./integerexpressions.md) , [database_recordset_number](./integerexpressions.md) )

returns [boolean_expression](./booleanexpressions.md)

### Description

Function that advances the record set to the next row. Returns a true value if there is a row or false if we are at the end of the record set.

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
