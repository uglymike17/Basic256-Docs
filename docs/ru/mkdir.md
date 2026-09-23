---
title: "Mkdir"
sidebar_label: "Mkdir"
---

## MkDir (Statement)

### Format

**mkdir** [string_expression](../en/stringexpressions.md)\
**mkdir** ( [string_expression](../en/stringexpressions.md) )

### Description

Create a directory/folder in the current working directory. If the directory already exists, no error will be displayed.

### Permissions

The folder being created is checked. A folder inside the program's own folder
is created with no question asked; a folder elsewhere on the computer asks the
user's permission, and the statement fails with `ERROR_PERMISSION` if that is
refused. See [File and Folder Permissions](../en/filepermissions.md).

There is no matching `rmdir` statement to remove a folder again; use
[System](../en/system.md).

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|          |                |
|----------|----------------|
| 2.0.0.12 | New To Version |
