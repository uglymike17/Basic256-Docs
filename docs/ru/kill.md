---
title: "Kill"
sidebar_label: "Kill"
---

### Kill

#### Формат:

**kill** имя\_файла\
**kill**( имя\_файла )

#### Описание:

Удаляет файл, имя которого задано параметром *имя\_файла*.

#### Разрешения

Программа может свободно работать с файлами в своей собственной папке. Для
всего, что находится за её пределами, запрашивается разрешение пользователя;
если в нём отказано, оператор завершается ошибкой `ERROR_PERMISSION`.
См. [File and Folder Permissions](../en/filepermissions.md).

#### Смотри также:

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

#### Впервые в версии:

0.9.6.34
