---
title: "Writebyte"
sidebar_label: "Writebyte"
---

## Writebyte (Statement)

### Format

**writebyte** *byte*\
**writebyte** ( *byte* )\
**writebyte** [open_file_number](../en/integerexpressions.md), *byte*\
**writebyte** ( [open_file_number](../en/integerexpressions.md), *byte* )

### Description

Writes an byte (8 bit number) to the end of an open file. If the file number is not specified file number zero (0) will be used.\
File should be opened with the [Openb](../en/open.md) statement so that ASCII CR/LF translation does not happen.

### Example

See example on [readbyte](../en/readbyte.md)

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|     |     |
|-----|-----|
|     |     |
