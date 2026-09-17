---
title: "Changedir"
sidebar_label: "Changedir"
---

## Changedir (Statement)

### Format

**changedir** [string_expression](./stringexpressions.md)\
**changedir** ( [string_expression](./stringexpressions.md) )

### Description

Change the current working directory to the path specified in [expression](./expressions.md). For all systems (including Windows) a forward slash (/) will be used to separate folders in a full path.

### Permissions

Changedir is not itself checked, and it does **not** widen what a program may
use. The folder a program is allowed to read and write is fixed when the program
starts and does not follow the working directory. After a `changedir` out of the
program's own folder, a plain file name will be looked for in the new working
directory, and using it will ask the user's permission like any other file
outside the program's folder. See [File and Folder Permissions](./filepermissions.md).

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|        |                |
|--------|----------------|
| 0.9.6r | New To Version |
