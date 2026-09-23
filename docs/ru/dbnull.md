---
title: "Dbnull"
sidebar_label: "Dbnull"
---

## DBNull (Function)

### Format

**dbnull** ( [numeric_expression](../en/numericexpressions.md) )\
**dbnull** ( [database_number](../en/integerexpressions.md) , [numeric_expression](../en/numericexpressions.md) )\
**dbnull** ( [database_number](../en/integerexpressions.md) , [database_recordset_number](../en/integerexpressions.md) , [numeric_expression](../en/numericexpressions.md) )\
**dbnull** ( [string_expression](../en/stringexpressions.md) )\
**dbnull** ( [database_number](../en/integerexpressions.md) , [string_expression](../en/stringexpressions.md) )\
**dbnull** ( [database_number](../en/integerexpressions.md) , [database_recordset_number](../en/integerexpressions.md) , [string_expression](../en/stringexpressions.md) )\
returns [boolean_expression](../en/booleanexpressions.md)

### Description

Return a [true](../en/booleanexpressions.md) if the specified column number or name of the current row of the open recordset is a NULL vale. If the field contains a value a [false](../en/booleanexpressions.md) will be returned.

### Example

See example of usage on [DBOpen](../en/dbopen.md) page.

### See Also

*(See [en:start](../en/start.md).)*&noheader)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### History

|          |                |
|----------|----------------|
| 0.9.9.23 | New to Version |
