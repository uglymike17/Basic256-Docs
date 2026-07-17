---
title: "ImageFlip"
sidebar_label: "ImageFlip"
---

## ImageFlip (Statement)

### Format

**imageflip** [image](./stringexpressions.md), [horizontal](./booleanexpressions.md)\
**imageflip** [image](./stringexpressions.md), [horizontal](./booleanexpressions.md), [vertical](./booleanexpressions.md)

### Description

Mirrors an image held in memory, in place. *image* is the identifier returned by [ImageNew](./imagenew.md), [ImageLoad](./imageload.md), or [ImageCopy](./imagecopy.md).

- *horizontal* — if true, the image is mirrored left-to-right.
- *vertical* — if true, the image is mirrored top-to-bottom. If omitted, no vertical flip is applied.

### Example

    a = imageload("arrow.png")
    imageflip a, true        # point the other way
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
