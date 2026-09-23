---
title: "Getclipboardimage"
sidebar_label: "Getclipboardimage"
---

## GetClipboardImage (Function)

### Format

**GetClipboardImage** ( )

returns [internal_image_identifier](../en/stringexpressions.md)

### Description

Gets the image data on the system clipboard and creates a new memory image. Returns a string with an identifier for use with the other Image\* functions and statements.

### Example

    clg
    color blue
    rect 10,10,10,10

    a = imagecopy(0,0,100,100)
    setclipboardimage a

    clg

    b = getclipboardimage
    imagedraw b, 0,0
    imagedraw b, 100,100

### See Also

[GetClipboardImage](../en/getclipboardimage.md), [GetClipboardString](../en/getclipboardstring.md), [SetClipboardImage](../en/setclipboardimage.md), [SetClipboardString](../en/setclipboardstring.md)
ImageAutoCrop, ImageCentered, [ImageCopy](../en/imagecopy.md), ImageCrop, [ImageDraw](../en/imagedraw.md), ImageFlip, [ImageHeight](../en/imageheight.md), [ImageLoad](../en/imageload.md), ImageNew, ImagePixel, [ImageResize](../en/imageresize.md), ImageRotate, ImageSetPixel, ImageSmooth, ImageTransformed, [ImageWidth](../en/imagewidth.md), [Unload](../en/unload.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.8 | New to Version |
