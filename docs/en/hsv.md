---
title: "Hsv"
sidebar_label: "Hsv"
---

## Hsv (Function)

### Format

**hsv** ( [hue](./numericexpressions.md), [saturation](./numericexpressions.md), [value](./numericexpressions.md) )\
**hsv** ( [hue](./numericexpressions.md), [saturation](./numericexpressions.md), [value](./numericexpressions.md), [alpha](./numericexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the ARGB value of a colour described by its hue, saturation and value rather than by how much red, green and blue it holds. The number it gives back is the same kind of colour [Rgb](./rgb.md) gives, so it can be used anywhere a colour can: in [Color](./color.md), [Clg](./clg.md), [ImageNew](./imagenew.md) and the rest.

- **hue** is the position on the colour wheel, in degrees from 0 to 360: 0 is red, 60 yellow, 120 green, 180 cyan, 240 blue, 300 magenta, and 360 is red again.
- **saturation** is how strong the colour is, from 0 to 100: 0 is a grey and 100 is the pure colour.
- **value** is how bright it is, from 0 to 100: 0 is black whatever the hue and saturation, and 100 is as bright as the colour goes.
- **alpha** is how opaque it is, from 0 (fully transparent) to 100 (fully opaque). If it is left out, 100 is used.

All four may be fractions, so a hue can move round the wheel in small steps without jumping. A value outside its range raises error 141.

HSV is the easier of the two when a program wants to move through colours rather than name one: counting the hue from 0 to 360 walks through the whole rainbow with a single number, and lowering the value darkens a colour without changing what colour it is.

Note that alpha is a percentage here, like the other three, and not 0 to 255 as it is for [Rgb](./rgb.md): **hsv**(0, 100, 100, 50) is the same half-transparent red as **rgb**(255, 0, 0, 128).

### Example

    # a colour wheel: the hue goes round the circle and the
    # saturation grows from grey in the middle to full at the edge
    fastgraphics
    clg black
    for r = 0 to 240 step 3
       for a = 0 to 359
          color hsv(a, r / 240 * 100, 100)
          circle 250 + r * cos(radians(a)), 250 - r * sin(radians(a)), 3
       next a
    next r
    refresh

draws\
![Hsv](@site/static/img/wiki/hsv.png)

### See Also

[Color](./color.md), [GetBrushColor](./getbrushcolor.md), [GetColor](./getcolor.md), [Rgb](./rgb.md)

### History

|         |                |
|---------|----------------|
| 2.3.0   | New To Version |
