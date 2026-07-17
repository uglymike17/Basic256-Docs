---
title: "Dbnull"
sidebar_label: "Dbnull"
---

## DBNull (Function)

### Format

**dbnull** ( [numeric_expression](./numericexpressions.md) )\
**dbnull** ( [database_number](./integerexpressions.md) , [numeric_expression](./numericexpressions.md) )\
**dbnull** ( [database_number](./integerexpressions.md) , [database_recordset_number](./integerexpressions.md) , [numeric_expression](./numericexpressions.md) )\
**dbnull** ( [string_expression](./stringexpressions.md) )\
**dbnull** ( [database_number](./integerexpressions.md) , [string_expression](./stringexpressions.md) )\
**dbnull** ( [database_number](./integerexpressions.md) , [database_recordset_number](./integerexpressions.md) , [string_expression](./stringexpressions.md) )\
returns [boolean_expression](./booleanexpressions.md)

### Description

Return a [true](./booleanexpressions.md) if the specified column number or name of the current row of the open recordset is a NULL vale. If the field contains a value a [false](./booleanexpressions.md) will be returned.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

*(See [en:start](./start.md).)*&noheader)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### History

|          |                |
|----------|----------------|
| 0.9.9.23 | New to Version |
