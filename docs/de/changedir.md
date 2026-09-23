---
title: "Changedir"
sidebar_label: "Changedir"
---

## Changedir (Statement)

### Format

**changedir** [string_expression](../en/stringexpressions.md)\
**changedir** ( [string_expression](../en/stringexpressions.md) )

### Description

Change the current working directory to the path specified in [expression](../en/expressions.md). For all systems (including Windows) a forward slash (/) will be used to separate folders in a full path.

### Permissions

Changedir is not itself checked, and it does **not** widen what a program may
use. The folder a program is allowed to read and write is fixed when the program
starts and does not follow the working directory. After a `changedir` out of the
program's own folder, a plain file name will be looked for in the new working
directory, and using it will ask the user's permission like any other file
outside the program's folder. See [File and Folder Permissions](../en/filepermissions.md).

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|        |                |
|--------|----------------|
| 0.9.6r | New To Version |
