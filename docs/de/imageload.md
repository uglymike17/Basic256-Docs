---
title: "ImageLoad"
sidebar_label: "ImageLoad"
---

## ImageLoad (Function)

### Format

**imageload** ( [file_name](../en/stringexpressions.md))

returns [internal_image_identifier](../en/stringexpressions.md)

### Description

Load an image file into memory and returns a string with an identifier for use with the other Image\* functions and statements.

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
