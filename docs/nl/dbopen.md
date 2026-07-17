---
title: "DBOpen"
sidebar_label: "DBOpen"
---

## DBOpen

### Formaat

**dbopen** *SQLiteFile*\
**dbopen** ( *SQLiteFile* )

### Beschrijving

De functie opent een SQLite database bestand. Als het bestand niet bestaat, dan wordt het aangemaakt.

### Voorbeeld

``` basic4gl
#database foo - maak de database aan, zet dat in de database - open dan een recordset en lees de data uit de tabel.

# maak een nieuw bestand aan en open het
dbopen "dbtest.sqlite3"

# wis de oude tabel, vang de fout op indien de tabel niet bestaat. 
onerror errortrap
dbexecute "drop table foo;"
offerror
# create and populate
dbexecute "create table foo (id integer, words text, value decimal);"
dbexecute "insert into foo values (1,'een',3.14);"
dbexecute "insert into foo values (2,'twee',6.28);"
dbexecute "insert into foo values (3,'drie',9.43);"

# open een recordset en ga door alle rijen
dbopenset "select * from foo order by words;"
while dbrow()
    print dbint(0) + dbstring(1) + dbfloat(2)
end while
dbcloseset

# Sluit de boel maar
dbclose
end

errortrap:
# 't is goed, ga gewoon verder 
return
```

toont dan

    1een3.14
    3drie9.43
    2twee6.28

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Externe Links

Meer informatie over database en SQLLite vind je op [SQLite Home Page](http://sqlite.org) en [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbint.md) \| [Databank](./databases.md) \| [volgende](./dbopenset.md)
