---
title: "ImageHeight"
sidebar_label: "ImageHeight"
---

## ImageHeight (Function)

### Format

**imageheight** ( [internal_image_identifier](../en/stringexpressions.md))

returns [height](../en/integerexpressions.md)

### Description

Returns the height of an image in memory.

### Example

    # shows the size of a selected image file (does not display)
    f = openfiledialog("","","Image Files (*.png *.jpg *.bmp)")
    a = imageload(f)
    print imagewidth(a), imageheight(a)

### See Also

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### History

|      |                |
|------|----------------|
| 1.99 | New to Version |
