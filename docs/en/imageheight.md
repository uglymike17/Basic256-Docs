---
title: "ImageHeight"
sidebar_label: "ImageHeight"
---

## ImageHeight (Function)

### Format

**imageheight** ( [internal_image_identifier](./stringexpressions.md))

returns [height](./integerexpressions.md)

### Description

Returns the height of an image in memory.

### Example

    # shows the size of a selected image file (does not display)
    f = openfiledialog("","","Image Files (*.png *.jpg *.bmp)")
    a = imageload(f)
    print imagewidth(a), imageheight(a)

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### History

|      |                |
|------|----------------|
| 1.99 | New to Version |
