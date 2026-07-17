---
title: "ImageSetPixel"
sidebar_label: "ImageSetPixel"
---

## ImageSetPixel (Statement)

### Format

**imagesetpixel** [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md), [color](./integerexpressions.md)\
**imagesetpixel** [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md)

### Description

Sets the single pixel at (*x*, *y*) in an image held in memory to *color* (see [Rgb](./rgb.md)). *image* is the identifier returned by [ImageNew](./imagenew.md), [ImageLoad](./imageload.md), or [ImageCopy](./imagecopy.md).

If *color* is omitted, the current pen color (as set by [Color](./color.md)) is used.

Read a pixel back with [ImagePixel](./imagepixel.md).

### Example

    a = imagenew(50, 50, rgb(0,0,0))
    for x = 0 to 49
        imagesetpixel a, x, x, rgb(255,255,0)   # yellow diagonal
    next x
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
