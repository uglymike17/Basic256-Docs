---
title: "Text"
sidebar_label: "Text"
---

## Text

### Format

**text** *x*, *y*, *string*\
**text** ( *x*, *y*, *string* )

### Description

Paints a text string on the Graphics Output Window at *x*, *y* using the current color and font.

### Example

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"
    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Will draw.\
![fonttext.png](@site/static/img/wiki/en/fonttext.png)

### See Also

[Color](./color.md), [Font](./font.md)

### New To Version

0.9.4
