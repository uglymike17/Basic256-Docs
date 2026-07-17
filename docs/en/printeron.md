---
title: "Printeron"
sidebar_label: "Printeron"
---

## PrinterOn (Statement)

### Format

**printeron**\
**printer on**

### Description

Turns printing on. Once printing is on the graphics commands [Arc](./arc.md), [Chord](./chord.md), [Circle](./circle.md), [Color](./color.md), [Imgload](./imgload.md), [Line](./line.md), [PenWidth](./penwidth.md), [Pie](./pie.md), [Plot](./plot.md), [Poly](./poly.md), [Rect](./rect.md), [Stamp](./stamp.md), and [Text](./text.md) will draw on the printer page and not the graphics area of the screen. [Graphheight](./graphheight.md), [Graphwidth](./graphwidth.md), [TextHeight](./textheight.md), and [TextWidth](./textwidth.md) also reports information about the printer graphical page.

Once the printer pages are rendered the [printeroff](./printeroff.md) statement sends the print document to the selected printer or to a PDF file. The device and device options can be setup from the Edit/Printer Preferences menu option.

### Example

    printer on
    font "Arial", 20, 50
    for l = 0 to 10
       text 0,l*textheight(), "line " + l
    next l
    printer off

### See Also

[Printercancel](./printercancel.md), [Printeroff](./printeroff.md), [Printeron](./printeron.md), [Printerpage](./printerpage.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.70 | New To Version |
