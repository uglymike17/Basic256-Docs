---
title: "ImageSetPixel"
sidebar_label: "ImageSetPixel"
---

## ImageSetPixel (Statement)

### Format

**imagesetpixel** [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md), [color](../en/integerexpressions.md)\
**imagesetpixel** [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md)

### Description

Sets the single pixel at (*x*, *y*) in an image held in memory to *color* (see [Rgb](../en/rgb.md)). *image* is the identifier returned by [ImageNew](../en/imagenew.md), [ImageLoad](../en/imageload.md), or [ImageCopy](../en/imagecopy.md).

If *color* is omitted, the current pen color (as set by [Color](../en/color.md)) is used.

Read a pixel back with [ImagePixel](../en/imagepixel.md).

### Example

    a = imagenew(50, 50, rgb(0,0,0))
    for x = 0 to 49
        imagesetpixel a, x, x, rgb(255,255,0)   # yellow diagonal
    next x
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
