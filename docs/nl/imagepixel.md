---
title: "ImagePixel"
sidebar_label: "ImagePixel"
---

## ImagePixel (Function)

### Format

**imagepixel** ( [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md) )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the color of the pixel at (*x*, *y*) in an image held in memory, as an integer that includes the alpha (transparency) channel. *image* is the identifier returned by [ImageNew](../en/imagenew.md), [ImageLoad](../en/imageload.md), or [ImageCopy](../en/imagecopy.md).

Set a pixel with [ImageSetPixel](../en/imagesetpixel.md).

### Example

    a = imageload("photo.png")
    c = imagepixel(a, 0, 0)
    print "top-left pixel color value: " + c

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
