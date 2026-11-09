---
title: "Getbrushcolor"
sidebar_label: "Getbrushcolor"
---

## GetBrushColor (Function)

### Format

getbrushcolor\
getbrushcolor()

returns [rgb_expression](../en/rgb.md)

### Description

Returns the ARGB value of the current drawing brush color (last set by color statement). ARGB is calculated by the formula ( (a \* 256 + r) \* 256 + g) \* 256 + b where alpha, red, green, and blue are between 0 and 255. A colour with an alpha of 128 or more, which includes every solid colour, comes out as a negative number, as it does from [Rgb](../en/rgb.md), so the value can be given straight back to [Color](../en/color.md). If the brush has been set to CLEAR, 0 is returned. A program starts with a black brush, -16777216.

### Example

    color red, blue
    print getbrushcolor

will print

    -16776961

### See Also

[Color](../en/color.md), [GetBrushColor](../en/getbrushcolor.md), [GetColor](../en/getcolor.md), [Rgb](../en/rgb.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.28 | New to version |
