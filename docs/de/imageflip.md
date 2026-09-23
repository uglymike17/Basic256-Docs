---
title: "ImageFlip"
sidebar_label: "ImageFlip"
---

## ImageFlip (Statement)

### Format

**imageflip** [image](../en/stringexpressions.md), [horizontal](../en/booleanexpressions.md)\
**imageflip** [image](../en/stringexpressions.md), [horizontal](../en/booleanexpressions.md), [vertical](../en/booleanexpressions.md)

### Description

Mirrors an image held in memory, in place. *image* is the identifier returned by [ImageNew](../en/imagenew.md), [ImageLoad](../en/imageload.md), or [ImageCopy](../en/imagecopy.md).

- *horizontal* — if true, the image is mirrored left-to-right.
- *vertical* — if true, the image is mirrored top-to-bottom. If omitted, no vertical flip is applied.

### Example

    a = imageload("arrow.png")
    imageflip a, true        # point the other way
    imagedraw a, 0, 0

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
