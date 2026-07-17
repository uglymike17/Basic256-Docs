---
title: "ImageSmooth"
sidebar_label: "ImageSmooth"
---

## ImageSmooth (Statement)

### Format

**imagesmooth** [on](./booleanexpressions.md)

### Description

Turns smoothing on or off for image transformations performed afterwards. When *on* is true, operations that scale or rotate an image use smooth (anti-aliased, bilinear) sampling; when false, they use fast nearest-neighbor sampling, which is quicker and keeps hard pixel edges.

This one setting affects [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageCentered](./imagecentered.md), [ImageTransformed](./imagetransformed.md), and the scaled form of [ImageDraw](./imagedraw.md). It stays in effect until changed again.

### Example

    imagesmooth false        # keep pixel art crisp when scaling
    a = imageload("pixels.png")
    imageresize a, 4.0
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
