---
title: "Dbexecute"
sidebar_label: "Dbexecute"
---

### DBExecute

#### Формат:

**dbexecute** SQL_запрос\
**dbexecute**( SQL_запрос )

#### Описание:

Выполняет SQL запрос к открытой SQLite базе. Эта функция не создает набора записей. Больше информации о базах данных и, в частности, об SQLite можно найти на домашней странице SQLite <http://sqlite.org> и странице SQL на Wikipedia <http://ru.wikipedia.org/wiki/SQL>.

#### Разрешения

Программа может свободно работать с файлами в своей собственной папке. Для
всего, что находится за её пределами, запрашивается разрешение пользователя;
если в нём отказано, оператор завершается ошибкой `ERROR_PERMISSION`.
См. [File and Folder Permissions](../en/filepermissions.md).

#### Смотри также:

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

#### Пример:

Смотри пример использования на странице [DBOpen](./dbopen.md).

#### Впервые в версии:

0.9.6y
