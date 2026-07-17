---
title: "Eof"
sidebar_label: "Eof"
---

## Eof (Function)

### Format

eof\
eof()\
eof([open_file_number](./integerexpressions.md))

returns [boolean_expression](./booleanexpressions.md)

### Description

Returns a binary flag (true/false) that will signal if we have read to the End Of File (EOF). If file number is not specified then file number zero (0) will be used.

If the open file number is a serial port (opened with [OpenSerial](./openserial.md)) then EOF returns a true value when there is pending data to receive. EOF that we are at the end of data but with this type of data source, new data may be received at any time. This behaviour is different than with a file.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|         |                         |
|---------|-------------------------|
| 0.9.4   | New To Version          |
| 1.1.4.0 | Added serial port logic |
