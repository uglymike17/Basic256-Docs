---
title: "Ostype"
sidebar_label: "Ostype"
---

### OsType

#### Формат:

**ostype**()

#### Описание:

Возвращает число, представляющую операционную систему, в которой запущен BASIC-256.\

|                    |           |
|--------------------|-----------|
| Результат |           |
| Число          | ОС      |
| 0                  | Windows   |
| 1                  | Linux     |
| 2                  | Macintosh |

#### Пример:

    print "Вы используете ";
    if ostype() = 0 then
       print "windows";
    else
       print "unix/linux";
    end if
    print " операционную систему."

Will display something like

    Вы используете unix/linux операционную систему.

#### Впервые в версии:

0.9.6.58
