---
title: "Kill"
sidebar_label: "Kill"
---

## Kill (Statement)

### Format

**kill** [file_name](../en/stringexpressions.md)\
**kill** ( [file_name](../en/stringexpressions.md) )\

### Description

Delete the specified [file_name](../en/stringexpressions.md) from the system.

### Permissions

The file being deleted is checked. A file in the program's own folder, or below
it, is deleted with no question asked; a file elsewhere on the computer asks the
user's permission, and the statement fails with `ERROR_PERMISSION` if that is
refused. See [File and Folder Permissions](../en/filepermissions.md).

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History
