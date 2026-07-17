---
title: "DBOpen"
sidebar_label: "DBOpen"
---

## DBOpen

### Format

**dbopen** *SQLiteFile*\
**dbopen** ( *SQLiteFile* )

### Description

Open an SQLite database file. If the file does not exist then create it.

### Example

    #database foo - create a database, populate a table, open a recordset and read data from table.

    # create a new database file or open it
    dbopen "dbtest.sqlite3"

    # delete old foo table - trap error if new database
    onerror errortrap
    dbexecute "drop table foo;"
    offerror
    # create and populate
    dbexecute "create table foo (id integer, words text, value decimal);"
    dbexecute "insert into foo values (1,'one',3.14);"
    dbexecute "insert into foo values (2,'two',6.28);"
    dbexecute "insert into foo values (3,'three',9.43);"

    # open a recordset and loop through the rows of data
    dbopenset "select * from foo order by words;"
    while dbrow()
        print dbint(0) + dbstring(1) + dbfloat(2)
    end while
    dbcloseset

    # wrap everything up
    dbclose
    end

    errortrap:
    # accept error - display nothing - return to next statement
    return

will display

    1one3.14
    3three9.43
    2two6.28

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
