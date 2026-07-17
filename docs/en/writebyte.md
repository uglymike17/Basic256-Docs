---
title: "Writebyte"
sidebar_label: "Writebyte"
---

## Writebyte (Statement)

### Format

**writebyte** *byte*\
**writebyte** ( *byte* )\
**writebyte** [open_file_number](./integerexpressions.md), *byte*\
**writebyte** ( [open_file_number](./integerexpressions.md), *byte* )

### Description

Writes an byte (8 bit number) to the end of an open file. If the file number is not specified file number zero (0) will be used.\
File should be opened with the [Openb](./open.md) statement so that ASCII CR/LF translation does not happen.

### Example

See example on [readbyte](./readbyte.md)

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|     |     |
|-----|-----|
|     |     |
