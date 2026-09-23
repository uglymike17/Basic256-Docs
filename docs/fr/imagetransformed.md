---
title: "ImageTransformed"
sidebar_label: "ImageTransformed"
---

## ImageTransformed (Statement)

### Format

**imagetransformed** [image](../en/stringexpressions.md), [x1](../en/integerexpressions.md), [y1](../en/integerexpressions.md), [x2](../en/integerexpressions.md), [y2](../en/integerexpressions.md), [x3](../en/integerexpressions.md), [y3](../en/integerexpressions.md), [x4](../en/integerexpressions.md), [y4](../en/integerexpressions.md)\
**imagetransformed** [image](../en/stringexpressions.md), [x1](../en/integerexpressions.md), [y1](../en/integerexpressions.md), [x2](../en/integerexpressions.md), [y2](../en/integerexpressions.md), [x3](../en/integerexpressions.md), [y3](../en/integerexpressions.md), [x4](../en/integerexpressions.md), [y4](../en/integerexpressions.md), [opacity](../en/floatexpressions.md)

### Description

Draws an image held in memory onto the graphics output, warped so that its four corners are mapped to the four points you supply. This lets you skew an image into any quadrilateral — for perspective effects, projected walls, and so on. The stored image is not changed.

The corner points are given in this order:

1. (*x1*, *y1*) — top-left corner of the image
2. (*x2*, *y2*) — top-right corner
3. (*x3*, *y3*) — bottom-right corner
4. (*x4*, *y4*) — bottom-left corner

*opacity* ranges from 0.0 (invisible) to 1.0 (opaque) and defaults to 1.0. Smoothing follows [ImageSmooth](../en/imagesmooth.md).

### Example

    a = imageload("poster.png")
    # lean the poster into the distance
    imagetransformed a, 50, 20, 250, 60, 260, 220, 40, 200

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
