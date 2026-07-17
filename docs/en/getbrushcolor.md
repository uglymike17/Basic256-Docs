---
title: "Getbrushcolor"
sidebar_label: "Getbrushcolor"
---

## GetBrushColor (Function)

### Format

getbrushcolor\
getbrushcolor()

returns [rgb_expression](./rgb.md)

### Description

Returns the ARGB value of the current drawing brush color (last set by color statement). ARGB is calculated by the formula ( (a \* 256 + r) \* 256 + b) \* 256 + g where alpha, red, green, and blue are between 0 and 255. If the drawing color has been set to CLEAR a 0 will be returned.

### Example

    color red, blue
    print getcolor

will print

    -16776961

### See Also

[Color](./color.md), [GetBrushColor](./getbrushcolor.md), [GetColor](./getcolor.md), [Rgb](./rgb.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.28 | New to version |
