---
title: "Getclipboardimage"
sidebar_label: "Getclipboardimage"
---

## GetClipboardImage (Function)

### Format

**GetClipboardImage** ( )

returns [internal_image_identifier](./stringexpressions.md)

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

[GetClipboardImage](./getclipboardimage.md), [GetClipboardString](./getclipboardstring.md), [SetClipboardImage](./setclipboardimage.md), [SetClipboardString](./setclipboardstring.md)
ImageAutoCrop, ImageCentered, [ImageCopy](./imagecopy.md), ImageCrop, [ImageDraw](./imagedraw.md), ImageFlip, [ImageHeight](./imageheight.md), [ImageLoad](./imageload.md), ImageNew, ImagePixel, [ImageResize](./imageresize.md), ImageRotate, ImageSetPixel, ImageSmooth, ImageTransformed, [ImageWidth](./imagewidth.md), [Unload](./unload.md)

### History

|         |                |
|---------|----------------|
| 2.0.0.8 | New to Version |
