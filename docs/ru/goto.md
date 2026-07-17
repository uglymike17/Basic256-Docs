---
title: "Goto"
sidebar_label: "Goto"
---

### Goto

#### Формат:

**goto** метка

#### Описание:

Выполнение программы переходит на точку, определенную параметром *метка*

#### Смотри также:

[Gosub / Return](./gosubreturn.md)

#### Пример:

    print "Я";
    goto skipit
    print " не";
    skipit: #
    print " хочу печенье."

Будет напечатано

    Я хочу печенье.
