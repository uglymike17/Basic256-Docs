---
title: "ImagePixel"
sidebar_label: "ImagePixel"
---

## ImagePixel (Function)

### Format

**imagepixel** ( [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the color of the pixel at (*x*, *y*) in an image held in memory, as an integer that includes the alpha (transparency) channel. *image* is the identifier returned by [ImageNew](./imagenew.md), [ImageLoad](./imageload.md), or [ImageCopy](./imagecopy.md).

Set a pixel with [ImageSetPixel](./imagesetpixel.md).

### Example

    a = imageload("photo.png")
    c = imagepixel(a, 0, 0)
    print "top-left pixel color value: " + c

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
