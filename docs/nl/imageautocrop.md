---
title: "ImageAutoCrop"
sidebar_label: "ImageAutoCrop"
---

## ImageAutoCrop (Statement)

### Format

**imageautocrop** [image](../en/stringexpressions.md)\
**imageautocrop** [image](../en/stringexpressions.md), [color](../en/integerexpressions.md)

### Description

Trims a uniform border away from an image held in memory, shrinking it to the smallest rectangle that contains the interesting content. The change is made to the image in place — *image* is the identifier returned by [ImageNew](../en/imagenew.md), [ImageLoad](../en/imageload.md), or [ImageCopy](../en/imagecopy.md).

- With no *color*, the fully transparent edges of the image are removed.
- With a *color* (see [Rgb](../en/rgb.md)), edges made entirely of that color are removed instead.

To crop to an exact rectangle rather than by content, use [ImageCrop](../en/imagecrop.md).

### Example

    a = imageload("scan.png")
    imageautocrop a, rgb(255,255,255)   # trim the white margins
    print imagewidth(a) + " x " + imageheight(a)

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
