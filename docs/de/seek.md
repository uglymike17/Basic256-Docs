---
title: "Seek"
sidebar_label: "Seek"
---

## Seek (Statement)

### Format

**seek** *location*\
**seek** ( *location* )\
**seek** [open_file_number](../en/integerexpressions.md), *location*\
**seek** ( [open_file_number](../en/integerexpressions.md), *location* )

### Description

Moves the read/write location to a specific location (offset in bytes from the start of the file) within an open file. If the file number is not specified file number zero (0) will be used.

For serial ports, the seek statement is not implemented.

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|         |                   |
|---------|-------------------|
| 0.9.4   | New To Version    |
| 1.1.4.0 | Added Serial Port |
