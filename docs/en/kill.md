---
title: "Kill"
sidebar_label: "Kill"
---

## Kill (Statement)

### Format

**kill** [file_name](./stringexpressions.md)\
**kill** ( [file_name](./stringexpressions.md) )\

### Description

Delete the specified [file_name](./stringexpressions.md) from the system.

### Permissions

The file being deleted is checked. A file in the program's own folder, or below
it, is deleted with no question asked; a file elsewhere on the computer asks the
user's permission, and the statement fails with `ERROR_PERMISSION` if that is
refused. See [File and Folder Permissions](./filepermissions.md).

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History
