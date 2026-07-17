---
title: "ImageNew"
sidebar_label: "ImageNew"
---

## ImageNew (Function)

### Format

**imagenew** ( [width](./integerexpressions.md), [height](./integerexpressions.md) )\
**imagenew** ( [width](./integerexpressions.md), [height](./integerexpressions.md), [color](./integerexpressions.md) )

returns [internal_image_identifier](./stringexpressions.md)

### Description

Creates a new, empty image in memory of the given *width* and *height* (in pixels) and returns a string identifier for it, for use with the other Image\* functions and statements.

The image is filled with *color* (see [Rgb](./rgb.md)). If *color* is omitted it defaults to fully transparent, so you can draw onto the image and later stamp it over a background without a solid rectangle behind it.

Free the image with [Unload](./unload.md) when you are done with it.

### Example

    a = imagenew(100, 100)          # transparent 100x100 image
    b = imagenew(64, 64, rgb(255,0,0))  # solid red 64x64 image
    imagedraw a, 10, 10
    imagedraw b, 120, 10

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
