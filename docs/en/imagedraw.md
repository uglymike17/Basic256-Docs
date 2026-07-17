---
title: "ImageDraw"
sidebar_label: "ImageDraw"
---

## ImageDraw (statement)

### Format

**imagedraw** [internal_image_identifier](./stringexpressions.md), [x](./integerexpressions.md), [y](./integerexpressions.md)\

### Description

Draws an image in memory to the graphics output window, at a specific location.

### Example

    f = openfiledialog("","","Image Files (*.png *.jpg *.bmp)")
    a = imageload(f)

    ## show half size
    imageresize a, .5
    imagedraw a,100,100

    # show 127x72 thumbnail
    imageresize a, 128, 72
    imagedraw a, 10,10

### See Also

[ImageAutoCrop](./imageautocrop.md), [ImageCentered](./imagecentered.md), [ImageCopy](./imagecopy.md), [ImageCrop](./imagecrop.md), [ImageDraw](./imagedraw.md), [ImageFlip](./imageflip.md), [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), [ImageNew](./imagenew.md), [ImagePixel](./imagepixel.md), [ImageResize](./imageresize.md), [ImageRotate](./imagerotate.md), [ImageSetPixel](./imagesetpixel.md), [ImageSmooth](./imagesmooth.md), [ImageTransformed](./imagetransformed.md), [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### History

|      |                |
|------|----------------|
| 1.99 | New to Version |
