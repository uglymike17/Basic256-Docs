---
title: "ImageNew"
sidebar_label: "ImageNew"
---

## ImageNew (Function)

### Format

**imagenew** ( [width](../en/integerexpressions.md), [height](../en/integerexpressions.md) )\
**imagenew** ( [width](../en/integerexpressions.md), [height](../en/integerexpressions.md), [color](../en/integerexpressions.md) )

returns [internal_image_identifier](../en/stringexpressions.md)

### Description

Creates a new, empty image in memory of the given *width* and *height* (in pixels) and returns a string identifier for it, for use with the other Image\* functions and statements.

The image is filled with *color* (see [Rgb](../en/rgb.md)). If *color* is omitted it defaults to fully transparent, so you can draw onto the image and later stamp it over a background without a solid rectangle behind it.

Free the image with [Unload](../en/unload.md) when you are done with it.

### Example

    a = imagenew(100, 100)          # transparent 100x100 image
    b = imagenew(64, 64, rgb(255,0,0))  # solid red 64x64 image
    imagedraw a, 10, 10
    imagedraw b, 120, 10

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
