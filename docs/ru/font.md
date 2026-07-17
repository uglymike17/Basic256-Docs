---
title: "Font"
sidebar_label: "Font"
---

### Font

#### Формат:

**font** имя\_шрифта, размер, вес

#### Описание:

Устанавливает шрифт используемый командой [text](./text.md) в значение *имя\_шрифта*. Размер определяется параметром\
размер// в пойнтах (1/72” - 1/72 дюйма), *вес* является числом от 1 до 100 и определяет жирность начертания. Light=25 (тонкое начертание), Normal=50 (стандартное начертание), и Bold=75 (жирное, привычнее полужирное, начертание).

#### Смотри также:

[Text](./text.md)

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
