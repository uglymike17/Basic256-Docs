---
title: "Changedir"
sidebar_label: "Changedir"
---

### Changedir

#### Формат:

**changedir** выражение\
**changedir**( выражение )

#### Описание:

Меняет текущий рабочий каталог на путь, указанный в заданном выражении. Для всех систем, (включая Windows) только прямой слеш (/) должен использоваться как разделитель каталогов внутри полного пути.

#### Разрешения

Программа может свободно работать с файлами в своей собственной папке. Для
всего, что находится за её пределами, запрашивается разрешение пользователя;
если в нём отказано, оператор завершается ошибкой `ERROR_PERMISSION`.
См. [File and Folder Permissions](../en/filepermissions.md).

#### Смотри также:

[Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Exists](./exists.md), [Kill](./kill.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

#### Впервые в версии:

0.9.6r
