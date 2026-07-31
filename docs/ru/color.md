---
title: "Color"
sidebar_label: "Color"
---

### Color

#### Формат:

**color** имя\_цвета\
**color**( имя\_цвета )\
**color** rgb_значение\
**color**( rgb_значение )

#### Описание:

Устанавливает текущий цвет для операций рисования в значение *имя\_цвета*; или в RGB цвет из компонент *красный*, *синий*, *зеленый*; или в *rgb_значение*. Есть специальный цвет с именем CLEAR и значением 0. Если текущий цвет установлен в это значение, то пикселы или фигуры, рисуемые этим цветом будут стирать пикселы окна графического вывода делая их прозрачными. Это особенно удобно при создании спрайтов через команду Spriteslice.

#### Название цвета и их RGB значения

|  |  |  |
|----|----|----|
| Название цвета | Вид цвета | RGB значение |
| black | ![black](@site/static/img/wiki/color_black.png) | 0, 0, 0 |
| white | ![white](@site/static/img/wiki/color_white.png) | 255, 255, 255 |
| red | ![red](@site/static/img/wiki/color_red.png) | 255, 0, 0 |
| darkred | ![darkred](@site/static/img/wiki/color_darkred.png) | 128, 0, 0 |
| green | ![green](@site/static/img/wiki/color_green.png) | 0, 255, 0 |
| darkgreen | ![darkgreen](@site/static/img/wiki/color_darkgreen.png) | 0, 128, 0 |
| blue | ![blue](@site/static/img/wiki/color_blue.png) | 0, 0, 255 |
| darkblue | ![darkblue](@site/static/img/wiki/color_darkblue.png) | 0, 0, 128 |
| cyan | ![cyan](@site/static/img/wiki/color_cyan.png) | 0, 255, 255 |
| darkcyan | ![darkcyan](@site/static/img/wiki/color_darkcyan.png) | 0, 128, 128 |
| purple | ![purple](@site/static/img/wiki/color_purple.png) | 255, 0, 255 |
| darkpurple | ![darkpurple](@site/static/img/wiki/color_darkpurple.png) | 128, 0, 128 |
| yellow | ![yellow](@site/static/img/wiki/color_yellow.png) | 255, 255, 0 |
| darkyellow | ![darkyellow](@site/static/img/wiki/color_darkyellow.png) | 128, 128, 0 |
| orange | ![orange](@site/static/img/wiki/color_orange.png) | 255, 102, 0 |
| darkorange | ![darkorange](@site/static/img/wiki/color_darkorange.png) | 176, 61, 0 |
| grey / gray | ![grey](@site/static/img/wiki/color_grey.png) | 164, 164, 164 |
| darkgrey / darkgray | ![darkgrey](@site/static/img/wiki/color_darkgrey.png) | 128, 128, 128 |
| clear |  | 0 (прозрачный) |

Обе формы написания серого цвета допустимы: **grey** и **gray** — это один и тот же цвет, так же как **darkgrey** и **darkgray**. Регистр букв значения не имеет.

#### Смотри также:

[Rgb](./rgb.md), [GetColor](./getcolor.md)

#### Пример:

    clg
    color rgb(128,128,128)
    rect 0,0,graphwidth, graphheight
    color red
    circle 100,100,50
    color rgb(255,160,160)
    circle 100,100,25

Будет изображено\
![Color](@site/static/img/wiki/ru/color.png)
