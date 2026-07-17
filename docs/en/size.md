---
title: "Size"
sidebar_label: "Size"
---

## Size (Function)

### Format

**size**\
**size ( )**\
**size** ( [open_file_number](./integerexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the length, in bytes, of an opened file. If the file number is not specified file number zero (0) will be used.

For a serial port, size returns the number of bytes that has been received but not read. This can be used to dimension an array to hold data being received or to make sure a certian number of bytes have been received.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|         |                   |
|---------|-------------------|
| 0.9.4   | New To Version    |
| 1.1.4.0 | Added Serial Port |
