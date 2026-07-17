---
title: "Text"
sidebar_label: "Text"
---

## Text (Statement)

### Format

**text** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [string_expression](./stringexpressions.md)\
**text** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [string_expression](./stringexpressions.md) )

### Description

Paints a text string on the Graphics Output Window at [x_position](./numericexpressions.md), [y_position](./numericexpressions.md) using the current color and font.

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

[Font](./font.md), [Text](./text.md), [TextHeight](./textheight.md), [TextWidth](./textwidth.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
