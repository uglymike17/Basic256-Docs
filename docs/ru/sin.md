---
title: "Sin"
sidebar_label: "Sin"
---

### Sin

#### Формат:

**sin**( выражение )

#### Описание:

Вычисляет синус выражения. *Выражение* должно быть числом в радианах. Функция синус не дает точного результата.

#### Смотри также:

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Tan](./tan.md)

#### Пример:

    clg
    color black
    # Рисует ось поперек окна графического вывода
    line 0,150,300,150
    # Начало графика
    lastx = 0
    lasty = sin(0) * 50 + 150
    # Идем вдоль оси заданным шагом и рисуем график
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = sin(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

Будет изображено\
![Sin](/img/wiki/ru/sin.png)
