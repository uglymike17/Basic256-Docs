---
title: "ImageCentered"
sidebar_label: "ImageCentered"
---

## ImageCentered (Statement)

### Format

**imagecentered** [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md)\
**imagecentered** [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md), [scale](./floatexpressions.md)\
**imagecentered** [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md), [scale](./floatexpressions.md), [radians](./floatexpressions.md)\
**imagecentered** [image](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md), [scale](./floatexpressions.md), [radians](./floatexpressions.md), [opacity](./floatexpressions.md)

### Description

Draws an image held in memory onto the graphics output so that its center is at (*x*, *y*), optionally scaled, rotated, and made partly transparent. Unlike [ImageDraw](./imagedraw.md) (which positions by the top-left corner and alters nothing), this centers the picture on the point — convenient for sprites, dials, and anything you rotate about its middle. The stored image is not changed.

- *scale* — size multiplier (1.0 = original size). Defaults to 1.0.
- *radians* — rotation about the center, in radians (see [Radians](./radians.md)). Defaults to 0.
- *opacity* — 0.0 (invisible) to 1.0 (opaque). Defaults to 1.0.

Smoothing of the scaled/rotated result follows [ImageSmooth](./imagesmooth.md).

### Example

    a = imageload("wheel.png")
    for angle = 0 to 350 step 10
        clg
        imagecentered a, 150, 150, 1.0, radians(angle)
        refresh
        pause 0.05
    next angle

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
