---
title: "ImageCentered"
sidebar_label: "ImageCentered"
---

## ImageCentered (Statement)

### Format

**imagecentered** [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md)\
**imagecentered** [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md), [scale](../en/floatexpressions.md)\
**imagecentered** [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md), [scale](../en/floatexpressions.md), [radians](../en/floatexpressions.md)\
**imagecentered** [image](../en/stringexpressions.md), [x](../en/integerexpressions.md), [y](../en/integerexpressions.md), [scale](../en/floatexpressions.md), [radians](../en/floatexpressions.md), [opacity](../en/floatexpressions.md)

### Description

Draws an image held in memory onto the graphics output so that its center is at (*x*, *y*), optionally scaled, rotated, and made partly transparent. Unlike [ImageDraw](../en/imagedraw.md) (which positions by the top-left corner and alters nothing), this centers the picture on the point — convenient for sprites, dials, and anything you rotate about its middle. The stored image is not changed.

- *scale* — size multiplier (1.0 = original size). Defaults to 1.0.
- *radians* — rotation about the center, in radians (see [Radians](../en/radians.md)). Defaults to 0.
- *opacity* — 0.0 (invisible) to 1.0 (opaque). Defaults to 1.0.

Smoothing of the scaled/rotated result follows [ImageSmooth](../en/imagesmooth.md).

### Example

    a = imageload("wheel.png")
    for angle = 0 to 350 step 10
        clg
        imagecentered a, 150, 150, 1.0, radians(angle)
        refresh
        pause 0.05
    next angle

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
