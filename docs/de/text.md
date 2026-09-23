---
title: "Text"
sidebar_label: "Text"
---

## Text (Statement)

### Format

**text** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [string_expression](../en/stringexpressions.md)\
**text** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [string_expression](../en/stringexpressions.md) )

### Description

Paints a text string on the Graphics Output Window at [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md) using the current color and font.

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines.

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

[Font](../en/font.md), [Text](../en/text.md), [TextHeight](../en/textheight.md), [TextWidth](../en/textwidth.md), [Window](../en/window.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
