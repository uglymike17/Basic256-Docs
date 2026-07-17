---
title: "NetConnect"
sidebar_label: "NetConnect"
---

### NetConnect

#### Формат:

**netconnect** имя\_сервера, номер\_порта\
**netconnect**( имя\_сервера, номер\_порта )\
**netconnect** номер\_сокета, имя\_сервера, номер\_порта\
**netconnect**( номер\_сокета, имя\_сервера, номер\_порта )

#### Описание:

Открывает клиентское сетевое соединение с сервером. IP адрес или имя хоста указывается в параметре *имя\_сервера*, а порт в параметре *номер\_порта*. Если *номер\_сокета*, используется нулевой (0) номер.

#### Смотри также:

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

#### Пример:

Откройте два экземпляра BASIC-256 на одном компьютере. Скопируйте код “сервера” в один экземпляр и код “клиента” в другой. Запустите сначала сервер, затем клиент. Вы сможете увидеть, как два различных процесса обмениваются сообщениями.\<h4\>Код для сервера\</h4\>

    # Получаем сообщение и посылаем ответ об успешном соединении
    print "wait for connection on " + netaddress()
    netlisten 9997
    print "got connection"
    do
      while not netdata
       pause .1
       print ".";
      end while
      n$ = netread
      print n$
      netwrite "I got '" + n$ + "'."
    until n$ = "end"
    netclose

Будет напечатано (где xxx.xxx.xxx.xxx IPv4 адрес вашего компьютера)

    wait for connection on xxx.xxx.xxx.xxx
    got connection
    .1 Hi There
    ....2 Hi There
    ........3 Hi There
    ..........4 Hi There
    .....5 Hi There
    .......6 Hi There
    ....7 Hi There
    ..........8 Hi There
    ....9 Hi There
    .....10 Hi There
    .end

\<h4\>Код для клиента\</h4\>

    # Ожидаем ввода сообщения от пользователя и посылаем его на сервер
    input "enter message?", m$
    netconnect "127.0.0.1", 9997
    for t = 1 to 10
      pause rand
      netwrite t + " " + m$
      print netread
    next t
    netwrite "end"
    print netread
    netclose

Будет напечатано

    enter message?Hi There
    I got &#039;1 Hi There&#039;.
    I got &#039;2 Hi There&#039;.
    I got &#039;3 Hi There&#039;.
    I got &#039;4 Hi There&#039;.
    I got &#039;5 Hi There&#039;.
    I got &#039;6 Hi There&#039;.
    I got &#039;7 Hi There&#039;.
    I got &#039;8 Hi There&#039;.
    I got &#039;9 Hi There&#039;.
    I got &#039;10 Hi There&#039;.
    I got &#039;end&#039;.

#### Впервые в версии:

0.9.6.31
