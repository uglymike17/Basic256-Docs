---
title: "ImageSmooth"
sidebar_label: "ImageSmooth"
---

## ImageSmooth (Statement)

### Format

**imagesmooth** [on](../en/booleanexpressions.md)

### Description

Turns smoothing on or off for image transformations performed afterwards. When *on* is true, operations that scale or rotate an image use smooth (anti-aliased, bilinear) sampling; when false, they use fast nearest-neighbor sampling, which is quicker and keeps hard pixel edges.

This one setting affects [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageCentered](../en/imagecentered.md), [ImageTransformed](../en/imagetransformed.md), and the scaled form of [ImageDraw](../en/imagedraw.md). It stays in effect until changed again.

### Example

    imagesmooth false        # keep pixel art crisp when scaling
    a = imageload("pixels.png")
    imageresize a, 4.0
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
