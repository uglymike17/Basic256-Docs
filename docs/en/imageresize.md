---
title: "ImageResize"
sidebar_label: "ImageResize"
---

## ImageResize (statement)

### Format

**imageresize** [internal_image_identifier](./stringexpressions.md), [scale](./floatexpressions.md)\
**imageresize** [internal_image_identifier](./stringexpressions.md), [width](./integerexpressions.md), [height](./integerexpressions.md)\

### Description

Resize an image in memory.

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
