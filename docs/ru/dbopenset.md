---
title: "Dbopenset"
sidebar_label: "Dbopenset"
---

### DBOpenSet

#### Формат:

**dbopen**set SQL_запрос\
**dbopen**set( SQL_запрос )

#### Описание:

Выполняет SQL запрос и создает массив записей так, что результат SQL-запроса доступен из программы. Больше информации о базах данных и, в частности, об SQLite можно найти на домашней странице SQLite <http://sqlite.org> и странице SQL на Wikipedia <http://ru.wikipedia.org/wiki/SQL>.

#### Разрешения

Программа может свободно работать с файлами в своей собственной папке. Для
всего, что находится за её пределами, запрашивается разрешение пользователя;
если в нём отказано, оператор завершается ошибкой `ERROR_PERMISSION`.
См. [File and Folder Permissions](../en/filepermissions.md).

#### Смотри также:

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

#### Пример:

Смотри пример использования на странице [DBOpen](./dbopen.md).

#### Впервые в версии:

0.9.6y
