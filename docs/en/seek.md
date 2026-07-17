---
title: "Seek"
sidebar_label: "Seek"
---

## Seek (Statement)

### Format

**seek** *location*\
**seek** ( *location* )\
**seek** [open_file_number](./integerexpressions.md), *location*\
**seek** ( [open_file_number](./integerexpressions.md), *location* )

### Description

Moves the read/write location to a specific location (offset in bytes from the start of the file) within an open file. If the file number is not specified file number zero (0) will be used.

For serial ports, the seek statement is not implemented.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|         |                   |
|---------|-------------------|
| 0.9.4   | New To Version    |
| 1.1.4.0 | Added Serial Port |
