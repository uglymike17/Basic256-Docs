---
title: "Getcolor"
sidebar_label: "Getcolor"
---

### GetColor

#### Формат:

**getcolor**\
**getcolor**()

#### Описание:

Возвращает RGB значение текущего установленного цвета (того, который был последний раз установлен командой [color](./color.md)). RGB вычисляется как ((red \* 256) + green \* 256) + blue где red, green, и blue целые числа в диапазоне от 0 до 255.

#### Смотри также:

[Color](./color.md), [Rgb](./rgb.md)

#### Пример:

    color red
    print getcolor

Будет напечатано

    16711680

#### Впервые в версии:

0.9.5m
