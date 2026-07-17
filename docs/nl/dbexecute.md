---
title: "Dbexecute"
sidebar_label: "Dbexecute"
---

## DBExecute

### Formaat

**dbexecute** *SqlOpdracht*\
**dbexecute** ( *SqlOpdracht* )

### Beschrijving

De functie voert de *SqlOpdracht* uit op de open SQLite database. Deze opdracht opent geen recordset !\
De *SQLOdracht* dit hiermee meestal wordt uitgevoerd is een insert of update opdracht, of ook wel een DDL opdracht.\
Als je een Sql opdracht wil uitvoeren om informatie uit te lezen, wordt [DBOpenSet](./dbopenset.md) gebruikt.

### Voorbeeld

Voorbeeld is uitegewerkt op de [DBOpen](./dbopen.md) page.

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbcloseset.md) \| [Databank](./databases.md) \| [volgende](./dbfloat.md)
