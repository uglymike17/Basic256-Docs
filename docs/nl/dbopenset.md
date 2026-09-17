---
title: "Dbopenset"
sidebar_label: "Dbopenset"
---

## DBOpenset

### Formaat

**dbopenset** *SqlOpdracht*\
**dbopenset** ( *SqlOpdracht* )

### Beschrijving

De functie voert een SQLOpdracht uit op de open database en maakt een recordset aan zodat het programma door het resultaat kan.

### Voorbeeld

Uitgewerkt voorbeeld terug te vinden op [DBOpen](./dbopen.md).

### Toestemming

Een programma mag bestanden in zijn eigen map vrij gebruiken. Voor alles buiten
die map wordt toestemming aan de gebruiker gevraagd; wordt die geweigerd, dan
mislukt de opdracht met `ERROR_PERMISSION`. Zie [File and Folder Permissions](../en/filepermissions.md).

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbopen.md) \| [Databank](./databases.md) \| [volgende](./dbrow.md)
