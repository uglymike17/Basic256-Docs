---
title: "Mkdir"
sidebar_label: "Mkdir"
---

## MkDir (Statement)

### Format

**mkdir** [string_expression](./stringexpressions.md)\
**mkdir** ( [string_expression](./stringexpressions.md) )

### Description

Create a directory/folder in the current working directory. If the directory already exists, no error will be displayed.

### Permissions

The folder being created is checked. A folder inside the program's own folder
is created with no question asked; a folder elsewhere on the computer asks the
user's permission, and the statement fails with `ERROR_PERMISSION` if that is
refused. See [File and Folder Permissions](./filepermissions.md).

There is no matching `rmdir` statement to remove a folder again; use
[System](./system.md).

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|          |                |
|----------|----------------|
| 2.0.0.12 | New To Version |
