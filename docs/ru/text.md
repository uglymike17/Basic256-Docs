---
title: "Text"
sidebar_label: "Text"
---

### Text

#### Формат:

**text** x, y, строка

#### Описание:

Рисует текстовую строку в окне графического вывода от точки x,y используя текущий цвет и шрифт.

#### Смотри также:

[Color](./color.md), [Font](./font.md)

#### Пример:

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"

    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Будет изображено\
![fonttext](@site/static/img/wiki/ru/fonttext.png)

#### Впервые в версии:

0.9.4
