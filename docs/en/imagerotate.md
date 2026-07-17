---
title: "ImageRotate"
sidebar_label: "ImageRotate"
---

## ImageRotate (Statement)

### Format

**imagerotate** [image](./stringexpressions.md), [radians](./floatexpressions.md)

### Description

Rotates an image held in memory by *radians* (see [Radians](./radians.md) to convert from degrees), in place. *image* is the identifier returned by [ImageNew](./imagenew.md), [ImageLoad](./imageload.md), or [ImageCopy](./imagecopy.md).

The image is enlarged as needed so the rotated picture fits; the newly exposed corners are transparent. Whether the rotation is smoothed or hard-edged is controlled by [ImageSmooth](./imagesmooth.md).

To draw a rotated copy without altering the stored image, use [ImageCentered](./imagecentered.md) or [ImageTransformed](./imagetransformed.md).

### Example

    a = imageload("sprite.png")
    imagerotate a, radians(45)
    imagedraw a, 100, 100

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
