---
title: "SetGraph"
sidebar_label: "SetGraph"
---

## SetGraph (Statement)

### Format

**setgraph** [internal_image_identifier](../en/stringexpressions.md)\
**setgraph** ( [internal_image_identifier](../en/stringexpressions.md) )\
**setgraph**\
**setgraph** ( )

### Description

Redirects all graphics output to an image held in memory, or sends it back to the graphics output window.

Given an identifier returned by [ImageNew](../en/imagenew.md), [ImageLoad](../en/imageload.md), or [ImageCopy](../en/imagecopy.md), every drawing statement that follows — [Plot](../en/plot.md), [Line](../en/line.md), [Rect](../en/rect.md), [Circle](../en/circle.md), [Ellipse](../en/ellipse.md), [Arc](../en/arc.md), [Chord](../en/chord.md), [Pie](../en/pie.md), [Poly](../en/poly.md), [Text](../en/text.md), [Stamp](../en/stamp.md), [ImageDraw](../en/imagedraw.md), and so on — paints onto that image instead of onto the screen.

Used with no argument, or with an empty string, drawing returns to the graphics output window.

While drawing is redirected to an image:

- [GraphWidth](../en/graphwidth.md) and [GraphHeight](../en/graphheight.md) return the size of the image, not the size of the graphics window.
- [Clg](../en/clg.md) clears the image.
- [Pixel](../en/pixel.md) reads from the image, and [ImgSave](../en/imgsave.md) saves the image.
- [GetSlice](../en/getslice.md) and [SpriteDim](../en/spritedim.md) take their pixels from the image.
- [Refresh](../en/refresh.md) and [FastGraphics](../en/fastgraphics.md) have no effect, since nothing is being drawn on the screen.

[Unload](../en/unload.md)ing the image that is currently being drawn on returns drawing to the graphics output window automatically.

### Errors

If the value is an image identifier but no such image is loaded, ERROR_IMAGERESOURCE is raised and drawing returns to the graphics output window. If the value is not an image identifier at all, ERROR_INVALIDRESOURCE is raised and the current drawing target is left unchanged. See [Error Codes](../en/errorcodes.md).

### Example

    graphsize 300,300
    clg

    color blue
    circle 50,50,50

    # copy the top left corner of the window into memory
    i = imagecopy(0,0,100,100)

    # draw on the copy, not on the screen
    setgraph i
    color red
    rect 0,0,20,20

    # send drawing back to the screen
    setgraph
    color green
    rect 0,150,150,150

    # place the modified copy over the green square
    imagedraw i, 0, 150
    refresh
    unload i

### See Also

[Clg](../en/clg.md), [GraphHeight](../en/graphheight.md), [GraphWidth](../en/graphwidth.md), [ImageCopy](../en/imagecopy.md), [ImageDraw](../en/imagedraw.md), [ImageLoad](../en/imageload.md), [ImageNew](../en/imagenew.md), [ImgSave](../en/imgsave.md), [Pixel](../en/pixel.md), [Unload](../en/unload.md)

### Availability

Present in BASIC-256 2.0 alongside the Image\* statements, but not previously documented. Described here from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256) source.
