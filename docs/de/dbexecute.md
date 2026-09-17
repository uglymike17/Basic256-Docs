---
title: "Dbexecute"
sidebar_label: "Dbexecute"
---

## DBExecute

### Format

**dbexecute** *SqlStatement*\
**dbexecute** ( *SqlStatement* )

### Description

Execute an SQL statement on the open SQLite database file. This statement does not create a record set.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### Berechtigungen

Ein Programm darf Dateien in seinem eigenen Ordner frei verwenden. Für alles
außerhalb dieses Ordners wird der Benutzer um Erlaubnis gefragt; wird sie
verweigert, schlägt die Anweisung mit `ERROR_PERMISSION` fehl. Siehe [File and Folder Permissions](../en/filepermissions.md).

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
