---
title: "Imgload"
sidebar_label: "Imgload"
---

## Imgload (Statement)

### Format

**imgload** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [file_name](./stringexpressions.md)\
**imgload** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [file_name](./stringexpressions.md) )\
**imgload** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [file_name](./stringexpressions.md)\
**imgload** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [file_name](./stringexpressions.md) )\
**imgload** [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expression](./floatexpressions.md), [file_name](./stringexpressions.md)\
**imgload** ( [x_position](./numericexpressions.md), [y_position](./numericexpressions.md), [scale_expression](./floatexpressions.md), [rotation_expression](./floatexpressions.md), [file_name](./stringexpressions.md) )\

### Description

Load an image or picture from a file and paint it on the Graphics Output Window.\
The parameters [x_position](./numericexpressions.md) and [y_position](./numericexpressions.md) represent the location on the screen for the CENTER of the loaded image. This behaviour is different than all of the other graphics statements. The axis of rotation will also be this CENTER point.\
The Imgload starement will read in most common image file formats including: BMP (Windows Bitmap), GIF (Graphic Interchange Format),JPG/JPEG (Joint Photographic Experts Group), and PNG (Portable Network Graphics).\
Optionally scales size of the loaded image by the defined scale (1=normal size). Also optionally rotates the image by a specified angle around the images center (clockwise in radians).

### See Also

[Imgload](./imgload.md), [Imgsave](./imgsave.md)

### History

|        |                |
|--------|----------------|
| 0.9.6l | New to Version |
