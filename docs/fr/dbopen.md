---
title: "DBOpen"
sidebar_label: "DBOpen"
---

## DBOpen

### Format

**dbopen** *SQLiteFile*\
**dbopen** ( *SQLiteFile* )

### Description

Ouvre un fichier de base de données SQLite. Si le fichier n’existe pas, il est créé.

### Exemple

    #database foo - crée une base de données, peuple une table, ouvre un enregistrement et lit les données de la table.

    # crée un nouveau fichier de base de données ou l'ouvre
    dbopen "dbtest.sqlite3"

    # efface l'ancienne table "foo" - renvoie une erreur si c'est une nouvelle base de données
    onerror errortrap
    dbexecute "drop table foo;"
    offerror
    # crée et peuple
    dbexecute "create table foo (id integer, words text, value decimal);"
    dbexecute "insert into foo values (1,'un',3.14);"
    dbexecute "insert into foo values (2,'deux',6.28);"
    dbexecute "insert into foo values (3,'trois',9.43);"

    # ouvre une table (série d'enregistrements) résultat de la requête et
    # tourne en boucle pour parcourir tous les enregistrements (toutes les lignes de données).
    dbopenset "select * from foo order by words;"
    while dbrow()
        print dbint(0) + dbstring(1) + dbfloat(2)
    end while
    dbcloseset

    # rassemble tout
    dbclose
    end

    errortrap:
    # accepte l'erreur - n'affiche rien - va à la prochaine commande
    return

affichera

    1un3.14
    3trois9.43
    2deux6.28

### Voir aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Lien externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes : [Page d'accueil de SQLite](http://sqlite.org) et [SQL sur Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
