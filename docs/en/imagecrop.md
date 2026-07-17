---
title: "ImageCrop"
sidebar_label: "ImageCrop"
---

## ImageCrop (Statement)

### Format

**imagecrop** [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md), [width](./integerexpressions.md), [height](./integerexpressions.md)

### Description

Crops an image held in memory down to the rectangle starting at (*x*, *y*) with the given *width* and *height*, in pixels. The change is made to the image in place — *image* is the identifier returned by [ImageNew](./imagenew.md), [ImageLoad](./imageload.md), or [ImageCopy](./imagecopy.md).

To trim a uniform border automatically instead of specifying exact bounds, see [ImageAutoCrop](./imageautocrop.md).

### Example

    a = imageload("photo.png")
    imagecrop a, 10, 10, 100, 100   # keep a 100x100 region
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
