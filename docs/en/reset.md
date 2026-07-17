---
title: "Reset"
sidebar_label: "Reset"
---

## Reset (Statement)

### Format

**reset**\
**reset()**\
**reset**([open_file_number](./integerexpressions.md))

### Description

Clears an open file. All data stored in the file is lost. If the file number is not specified file number zero (0) will be used.

For serial ports the reset statement has not been implemented.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|         |                   |
|---------|-------------------|
| 1.1.4.0 | Added Serial Port |
