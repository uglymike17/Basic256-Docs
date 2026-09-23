---
title: "Imgload"
sidebar_label: "Imgload"
---

## Imgload (Statement)

### Format

**imgload** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [file_name](../en/stringexpressions.md)\
**imgload** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [file_name](../en/stringexpressions.md) )\
**imgload** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [file_name](../en/stringexpressions.md)\
**imgload** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [file_name](../en/stringexpressions.md) )\
**imgload** [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expression](../en/floatexpressions.md), [file_name](../en/stringexpressions.md)\
**imgload** ( [x_position](../en/numericexpressions.md), [y_position](../en/numericexpressions.md), [scale_expression](../en/floatexpressions.md), [rotation_expression](../en/floatexpressions.md), [file_name](../en/stringexpressions.md) )\

### Description

Load an image or picture from a file and paint it on the Graphics Output Window.\
The parameters [x_position](../en/numericexpressions.md) and [y_position](../en/numericexpressions.md) represent the location on the screen for the CENTER of the loaded image. This behaviour is different than all of the other graphics statements. The axis of rotation will also be this CENTER point.\
The Imgload starement will read in most common image file formats including: BMP (Windows Bitmap), GIF (Graphic Interchange Format),JPG/JPEG (Joint Photographic Experts Group), and PNG (Portable Network Graphics).\
Optionally scales size of the loaded image by the defined scale (1=normal size). Also optionally rotates the image by a specified angle around the images center (clockwise in radians).

The coordinates may be whole numbers or fractions. They are measured in pixels unless a [Window](../en/window.md) has been set, in which case they are in the units that window defines.

The picture itself is always measured in pixels. A window places its centre and does not make it any larger or smaller, in the same way that it leaves [PenWidth](../en/penwidth.md) and [Font](../en/font.md) alone. Use the scale argument above to change the size an image is painted at.

### See Also

[Font](../en/font.md), [Imgload](../en/imgload.md), [Imgsave](../en/imgsave.md), [PenWidth](../en/penwidth.md), [Window](../en/window.md)

### History

|        |                                                       |
|--------|-------------------------------------------------------|
| 0.9.6l | New to Version                                        |
| 2.3    | The centre may be given in [Window](../en/window.md) units |
