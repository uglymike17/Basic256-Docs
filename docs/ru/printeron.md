---
title: "Printeron"
sidebar_label: "Printeron"
---

## PrinterOn (Statement)

### Format

**printeron**\
**printer on**

### Description

Turns printing on. Once printing is on the graphics commands [Arc](../en/arc.md), [Chord](../en/chord.md), [Circle](../en/circle.md), [Color](../en/color.md), [Imgload](../en/imgload.md), [Line](../en/line.md), [PenWidth](../en/penwidth.md), [Pie](../en/pie.md), [Plot](../en/plot.md), [Poly](../en/poly.md), [Rect](../en/rect.md), [Stamp](../en/stamp.md), and [Text](../en/text.md) will draw on the printer page and not the graphics area of the screen. [Graphheight](../en/graphheight.md), [Graphwidth](../en/graphwidth.md), [TextHeight](../en/textheight.md), and [TextWidth](../en/textwidth.md) also reports information about the printer graphical page.

Once the printer pages are rendered the [printeroff](../en/printeroff.md) statement sends the print document to the selected printer or to a PDF file. The device and device options can be setup from the Edit/Printer Preferences menu option.

### Example

    printer on
    font "Arial", 20, 50
    for l = 0 to 10
       text 0,l*textheight(), "line " + l
    next l
    printer off

### See Also

[Printercancel](../en/printercancel.md), [Printeroff](../en/printeroff.md), [Printeron](../en/printeron.md), [Printerpage](../en/printerpage.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.70 | New To Version |
