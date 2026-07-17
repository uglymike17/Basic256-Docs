---
title: "Netdata"
sidebar_label: "Netdata"
---

### NetData

#### Формат:

**netdata**\
**netdata**( )\
**netdata** номер\_сокета\
**netdata**( номер\_сокета )

#### Описание:

Возвращает значение true (истина, числовое значение 1), если имеются данные, которые можно прочитать функцией [NetRead](./netread.md), в противном случае возвращает false (ложь, значение 0). Если *номер\_сокета*, используется нулевой (0) номер.

#### Смотри также:

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

#### Пример:

Пример использования смотри на странице [NetConnect](./netconnect.md).

#### Впервые в версии:

0.9.6.31
