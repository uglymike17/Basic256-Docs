---
title: "ImageRotate"
sidebar_label: "ImageRotate"
---

## ImageRotate (Statement)

### Format

**imagerotate** [image](../en/stringexpressions.md), [radians](../en/floatexpressions.md)

### Description

Rotates an image held in memory by *radians* (see [Radians](../en/radians.md) to convert from degrees), in place. *image* is the identifier returned by [ImageNew](../en/imagenew.md), [ImageLoad](../en/imageload.md), or [ImageCopy](../en/imagecopy.md).

The image is enlarged as needed so the rotated picture fits; the newly exposed corners are transparent. Whether the rotation is smoothed or hard-edged is controlled by [ImageSmooth](../en/imagesmooth.md).

To draw a rotated copy without altering the stored image, use [ImageCentered](../en/imagecentered.md) or [ImageTransformed](../en/imagetransformed.md).

### Example

    a = imageload("sprite.png")
    imagerotate a, radians(45)
    imagedraw a, 100, 100

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
