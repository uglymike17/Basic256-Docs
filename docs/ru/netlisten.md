---
title: "Netlisten"
sidebar_label: "Netlisten"
---

### NetListen

#### Формат:

**netlisten** номер\_порта\
**netlisten**( номер\_порта )\
**netlisten** номер\_сокета, номер\_порта\
**netlisten**( номер\_сокета, номер\_порта )

#### Описание:

Открывает сетевое соединение (сервер) по указанному номеру порта и ждет подключения. Если *номер\_сокета*, используется нулевой (0) номер.

#### Разрешения

NETLISTEN принимает подключения только с этого компьютера. Подключения с
других машин включаются в настройках. См.
[NetListen](../en/netlisten.md).

#### Смотри также:

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

#### Пример:

Пример использования смотри на странице [NetConnect](./netconnect.md).

#### Впервые в версии:

0.9.6.31
