---
title: "Size"
sidebar_label: "Size"
---

## Size (Function)

### Format

**size**\
**size ( )**\
**size** ( [open_file_number](../en/integerexpressions.md) )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the length, in bytes, of an opened file. If the file number is not specified file number zero (0) will be used.

For a serial port, size returns the number of bytes that has been received but not read. This can be used to dimension an array to hold data being received or to make sure a certian number of bytes have been received.

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|         |                   |
|---------|-------------------|
| 0.9.4   | New To Version    |
| 1.1.4.0 | Added Serial Port |
