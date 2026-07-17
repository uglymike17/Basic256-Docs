---
title: "Imgsave"
sidebar_label: "Imgsave"
---

### Imgsave

#### Формат:

**imgsave** имя\_файла\
**imgsave** имя\_файла, тип\_файла\
**imgsave**( имя\_файла )\
**imgsave** ( имя\_файла, тип\_файла )

#### Описание:

Сохраняет текущее состояние окна вывода графики в графический файл. По умолчанию сохранение происходит в формате Portable Networks Graphics (PNG). Вы можете дополнительно указать *тип\_файла* как “BMP”, “JPG”, “JPEG” или “PNG”. Иногда в сохраненном изображении “неиспользованные” области могут быть заполнены черным цветом. Это вызвано использованием оператора [Clg](./clg.md) с указанием цвета -1 (прозрачный). Когда изображение сохраняется “прозрачность” меняется на черный цвет. Используйте следующий фрагмент:

    color white
    rect 0, 0, graphwidth, graphheight

#### Смотри также:

[ImgLoad](./imgload.md)

#### Пример:

    color white
    rect 0, 0, graphwidth, graphheight
    for t = 0 to 100
      color rand()*256, rand()* 256, rand()*256
      rect rand()*graphwidth, rand()*graphheight, rand()*graphwidth, rand()*graphheight
    next t
    imgsave "testimgsave1.png"
    imgsave "testimgsave2.jpg", "jpg"

#### Впервые в версии:

0.9.6.45
