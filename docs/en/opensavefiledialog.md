---
title: "Opensavefiledialog"
sidebar_label: "Opensavefiledialog"
---

## OpenFialDialog (Function) and SaveFileDialog (Function)

### Format

**openfiledialog** ( [prompt](./stringexpressions.md), [path](./stringexpressions.md), [filter](./stringexpressions.md) )\
**savefiledialog** ( [prompt](./stringexpressions.md), [path](./stringexpressions.md), [filter](./stringexpressions.md) )\
returns [file_name](./stringexpressions.md) or “” if no file was selected.

### Description

Displays a system dialog that allows a user to select an existing file (open/save) or a new file name (save). The function has three parameters: 1) a prompt message that will be displayed in the top of the dialog window, 2) the path or filename where the dialog box opens to, and 3) a string containing filters for specific file types.

If the path is the empty string ’’ then the current folder will be opened. Filters may be specified in the format “name (\*.ext \*.ext…)” if multiple filters are desired you must use two semicolons to separate them.

#### - Example

    f = openfiledialog("",".","Images (*.png *.xpm *.jpg);;Text files (*.txt);;XML files (*.xml)")
    print f

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### New To Version

2.0.0.6
