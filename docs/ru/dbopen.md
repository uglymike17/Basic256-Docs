---
title: "DBOpen"
sidebar_label: "DBOpen"
---

### DBOpen

#### Формат:

**dbopen** SQLite_имя\_файла\
**dbopen**( SQLite_имя\_файла )

#### Описание:

Открывает файл SQLite базы данных. Если файл не существует, - создается новый. Больше информации о базах данных и, в частности, об SQLite можно найти на домашней странице SQLite <http://sqlite.org> и странице SQL на Wikipedia <http://ru.wikipedia.org/wiki/SQL>.

#### Смотри также:

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

#### Пример:

    # cоздаем базу и в ней таблицу foo, заполняем ее данными, затем делаем запрос к базе и читаем данные из таблицы

    # cоздаем новую базу данных или открываем существующую
    dbopen "dbtest.sqlite3"

    # удаляем старую таблицу foo, перехватываем ошибку, если база новая
    onerror errortrap
    dbexecute "drop table foo;"
    offerror
    # создаем и заполняем таблицу
    dbexecute "create table foo (id integer, words text, value decimal);"
    dbexecute "insert into foo values (1,&#039;one&#039;,3.14);"
    dbexecute "insert into foo values (2,&#039;two&#039;,6.28);"

    dbexecute "insert into foo values (3,&#039;three&#039;,9.43);"

    # формируем запрос к базе и выдаем записи в цикле
    dbopenset "select * from foo order by words;"
    while dbrow()
        print dbint(0) + dbstring(1) + dbfloat(2)
    end while
    dbcloseset

    # закрываем базу
    dbclose
    end

    errortrap:
    # oбрабатываем ошибку. ничего не отображаем, просто переходим к следующей строке программы
    return

Будет напечатано

    1one3.14
    3three9.43
    2two6.28

#### Впервые в версии:

0.9.6y
