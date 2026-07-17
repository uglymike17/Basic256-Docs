---
title: "Dbclose"
sidebar_label: "Dbclose"
---

## DBClose (Statement)

### Format

**dbclose**\
**dbclose** ( )\
**dbclose** [database_number](./integerexpressions.md)\
**dbclose** ( [database_number](./integerexpressions.md) )

### Description

Close an open SQLite database file. Database connections are numbered from 0 to 7. If the database number is omitted then database file \#0 will be closed.

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
