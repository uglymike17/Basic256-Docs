---
title: "Opensavefiledialog"
sidebar_label: "Opensavefiledialog"
---

## OpenFialDialog (Function) and SaveFileDialog (Function)

### Format

**openfiledialog** ( [prompt](../en/stringexpressions.md), [path](../en/stringexpressions.md), [filter](../en/stringexpressions.md) )\
**savefiledialog** ( [prompt](../en/stringexpressions.md), [path](../en/stringexpressions.md), [filter](../en/stringexpressions.md) )\
returns [file_name](../en/stringexpressions.md) or “” if no file was selected.

### Description

Displays a system dialog that allows a user to select an existing file (open/save) or a new file name (save). The function has three parameters: 1) a prompt message that will be displayed in the top of the dialog window, 2) the path or filename where the dialog box opens to, and 3) a string containing filters for specific file types.

If the path is the empty string ’’ then the current folder will be opened. Filters may be specified in the format “name (\*.ext \*.ext…)” if multiple filters are desired you must use two semicolons to separate them.

#### - Example

    f = openfiledialog("",".","Images (*.png *.xpm *.jpg);;Text files (*.txt);;XML files (*.xml)")
    print f

### Permissions

A path returned by either of these functions was chosen by the user, and may
afterwards be opened without a further question even when it lies outside the
program's own folder. This is the tidy way for a program to work on a file
somewhere else on the computer. See [File and Folder Permissions](../en/filepermissions.md).

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### New To Version

2.0.0.6
