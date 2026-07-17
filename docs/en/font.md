---
title: "Font"
sidebar_label: "Font"
---

## Font (Statement)

### Format

font [font_name](./stringexpressions.md), [font_size_in_point](./floatexpressions.md), [font_weight](./floatexpressions.md)\
font ( [font_name](./stringexpressions.md), [font_size_in_point](./floatexpressions.md), [font_weight](./floatexpressions.md) )

### Description

Sets the font used by the text command to [font_name](./stringexpressions.md). The size that the font will be draw on on the screen is defined in points (1/72“). The third value represents the line weight (from 1 to 100) used in drawing the text on the screen. Typical weights are: Light=25, Normal=50, and Bold=75.

|                                                  |
|--------------------------------------------------|
| ![Common Windows Fonts](@site/static/img/wiki/commonwindowsfonts.png) |
| Common Windows Fonts                             |

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

### New To Version

0.9.4
