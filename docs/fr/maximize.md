---
title: "Maximize"
sidebar_label: "Maximize"
---

## Maximize (Statement)

### Format

**maximize** ( [boolean_expression](../en/booleanexpressions.md) )\
**maximize** [boolean_expression](../en/booleanexpressions.md)

### Description

Maximizes or restores the main BASIC-256 window — the one that holds the Edit, Text Output and Graphics Output windows — from inside a program.

**maximize 1** does exactly what the window's own maximize button does, and **maximize 0** does what the restore button does, putting the window back to the size and position it had before it was maximized.

The windows inside share the extra room the same way they do when you maximize by hand: the Edit window keeps at most two thirds of the width and the Graphics and Text Output windows share the rest.

Because this is the ordinary window state and not a setting of its own, it is remembered with the rest of the window geometry when BASIC-256 closes, just as it is when you press those buttons yourself. A program that maximizes the window therefore leaves it maximized the next time BASIC-256 starts. Add a **maximize 0** at the end of the program if that is not what you want.

Unlike [EditVisible](../en/editvisible.md), [GraphVisible](../en/graphvisible.md) and [OutputVisible](../en/outputvisible.md), which show and hide the panes inside the main window, **maximize** changes the main window itself. The two can be combined — hide the panes you do not need, then maximize what is left.

Two cases where the statement does nothing:

- A program started with the **-f** (**--full**) [command line option](../en/commandline.md) is resized to fill the available screen without ever being maximized, so **maximize 0** finds nothing to restore there. **maximize 1** still works.
- A program started with **-s** (**--silent**) has no window on the screen at all, so neither value has anything to act on.

### Example

    print "filling the screen"
    editvisible 0
    maximize 1
    pause 2

    print "and back the way it was found"
    maximize 0
    editvisible 1

### See Also

[Command Line Options](../en/commandline.md), [EditVisible](../en/editvisible.md), [Graphsize](../en/graphsize.md), [GraphToolBarVisible](../en/graphtoolbarvisible.md), [GraphVisible](../en/graphvisible.md), [Include](../en/include.md), [MainToolbarVisible](../en/maintoolbarvisible.md), [Ostype](../en/ostype.md), [OutputToolBarVisible](../en/outputtoolbarvisible.md), [OutputVisible](../en/outputvisible.md), [RegexMinimal](../en/regexminimal.md), [System](../en/system.md), [Version](../en/version.md)

### New To Version

2.1.0.0
