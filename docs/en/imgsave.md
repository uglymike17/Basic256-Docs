---
title: "Imgsave"
sidebar_label: "Imgsave"
---

## ImgSave

### Format

**imgsave** [file_name](./stringexpressions.md)\
**imgsave** ( [file_name](./stringexpressions.md) )\
**imgsave** [file_name](./stringexpressions.md), [image_type](./stringexpressions.md)\
**imgsave** ( [file_name](./stringexpressions.md), [image_type](./stringexpressions.md) )

### Description

Save the current Graphics Output Window to an image file.\
By default the image is saved as a Portable Networks Graphics (PNG) file. You may optionally specify the image type as a “BMP”, “JPG”, “JPEG”, or “PNG”.

| Return Values |       |
|---------------|-------|
| Constant      | Value |
| IMAGETYPE_BMP | “BMP” |
| IMAGETYPE_JPG | “JPG” |
| IMAGETYPE_PNG | “BMP” |

Sometimes images will be saved with “black” filling where the screen was undrawn. This is caused by the [CLG](./clg.md) statement setting the background to the color “clear” (transparent). When the image is saved the transparency is changed to black. Change your CLG statement to the following:

    clg white

### Example

    clg white
    for t = 0 to 100
       color rand()*256, rand()* 256, rand()*256
       rect rand()*graphwidth, rand()*graphheight,rand()*graphwidth, rand()*graphheight
    next t
    imgsave "testimgsave1.png"
    imgsave "testimgsave2.jpg", "jpg"

### See Also

[Imgload](./imgload.md), [Imgsave](./imgsave.md)

### History

|            |                       |
|------------|-----------------------|
| 0.9.6.45   | New To Version        |
| 1.99.99.58 | Added Named Constants |
