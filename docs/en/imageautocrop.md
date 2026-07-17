---
title: "ImageAutoCrop"
sidebar_label: "ImageAutoCrop"
---

## ImageAutoCrop (Statement)

### Format

**imageautocrop** [image](./stringexpressions.md)\
**imageautocrop** [image](./stringexpressions.md), [color](./integerexpressions.md)

### Description

Trims a uniform border away from an image held in memory, shrinking it to the smallest rectangle that contains the interesting content. The change is made to the image in place — *image* is the identifier returned by [ImageNew](./imagenew.md), [ImageLoad](./imageload.md), or [ImageCopy](./imagecopy.md).

- With no *color*, the fully transparent edges of the image are removed.
- With a *color* (see [Rgb](./rgb.md)), edges made entirely of that color are removed instead.

To crop to an exact rectangle rather than by content, use [ImageCrop](./imagecrop.md).

### Example

    a = imageload("scan.png")
    imageautocrop a, rgb(255,255,255)   # trim the white margins
    print imagewidth(a) + " x " + imageheight(a)

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
