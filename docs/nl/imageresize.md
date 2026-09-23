---
title: "ImageResize"
sidebar_label: "ImageResize"
---

## ImageResize (statement)

### Format

**imageresize** [internal_image_identifier](../en/stringexpressions.md), [scale](../en/floatexpressions.md)\
**imageresize** [internal_image_identifier](../en/stringexpressions.md), [width](../en/integerexpressions.md), [height](../en/integerexpressions.md)\

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

[ImageAutoCrop](../en/imageautocrop.md), [ImageCentered](../en/imagecentered.md), [ImageCopy](../en/imagecopy.md), [ImageCrop](../en/imagecrop.md), [ImageDraw](../en/imagedraw.md), [ImageFlip](../en/imageflip.md), [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImagePixel](../en/imagepixel.md), [ImageResize](../en/imageresize.md), [ImageRotate](../en/imagerotate.md), [ImageSetPixel](../en/imagesetpixel.md), [ImageSmooth](../en/imagesmooth.md), [ImageTransformed](../en/imagetransformed.md), [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### History

|      |                |
|------|----------------|
| 1.99 | New to Version |
