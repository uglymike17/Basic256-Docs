---
title: "ImageTransformed"
sidebar_label: "ImageTransformed"
---

## ImageTransformed (Statement)

### Format

**imagetransformed** [image](./stringexpressions.md), [x1](./integerexpressions.md), [y1](./integerexpressions.md), [x2](./integerexpressions.md), [y2](./integerexpressions.md), [x3](./integerexpressions.md), [y3](./integerexpressions.md), [x4](./integerexpressions.md), [y4](./integerexpressions.md)\
**imagetransformed** [image](./stringexpressions.md), [x1](./integerexpressions.md), [y1](./integerexpressions.md), [x2](./integerexpressions.md), [y2](./integerexpressions.md), [x3](./integerexpressions.md), [y3](./integerexpressions.md), [x4](./integerexpressions.md), [y4](./integerexpressions.md), [opacity](./floatexpressions.md)

### Description

Draws an image held in memory onto the graphics output, warped so that its four corners are mapped to the four points you supply. This lets you skew an image into any quadrilateral — for perspective effects, projected walls, and so on. The stored image is not changed.

The corner points are given in this order:

1. (*x1*, *y1*) — top-left corner of the image
2. (*x2*, *y2*) — top-right corner
3. (*x3*, *y3*) — bottom-right corner
4. (*x4*, *y4*) — bottom-left corner

*opacity* ranges from 0.0 (invisible) to 1.0 (opaque) and defaults to 1.0. Smoothing follows [ImageSmooth](./imagesmooth.md).

### Example

    a = imageload("poster.png")
    # lean the poster into the distance
    imagetransformed a, 50, 20, 250, 60, 260, 220, 40, 200

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
