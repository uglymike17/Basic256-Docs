---
title: "Hour"
sidebar_label: "Hour"
---

### Hour

#### Формат:

**hour**\
**hour**()

#### Описание:

Возвращает количество часов (0-23) текущей системной даты.

#### Смотри также:

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

#### Пример:

    # показать чудесную дату
    dim months$(12)
    months$ = {"Января", "Февраля", "Марта", "Апреля", "Мая", "Июня", "Июля", "Августа", "Сентября", "Октября", "Ноября", "Декабря"}
    print year + "-" + months$[month] + "-" + right("0" + day, 2)
    # display pretty time
    h = hour
    if h > 12 then
      h = h - 12
      ampm$ = "PM"
    else
      ampm$ = "AM"
    end if
    if h = 0 then h = 12
    print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$

Будет напечатано примерно так

    2010-Июля-15
    10-00-02 PM

#### Впервые в версии:

0.9.4
