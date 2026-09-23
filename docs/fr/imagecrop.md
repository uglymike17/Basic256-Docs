---
title: "ImageCrop"
sidebar_label: "ImageCrop"
---

## ImageCrop (Statement)

### Format

**imagecrop** [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md), [width](../en/integerexpressions.md), [height](../en/integerexpressions.md)

### Description

Crops an image held in memory down to the rectangle starting at (*x*, *y*) with the given *width* and *height*, in pixels. The change is made to the image in place — *image* is the identifier returned by [ImageNew](../en/imagenew.md), [ImageLoad](../en/imageload.md), or [ImageCopy](../en/imagecopy.md).

To trim a uniform border automatically instead of specifying exact bounds, see [ImageAutoCrop](../en/imageautocrop.md).

### Example

    a = imageload("photo.png")
    imagecrop a, 10, 10, 100, 100   # keep a 100x100 region
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
