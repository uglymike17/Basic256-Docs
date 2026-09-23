---
title: "Eof"
sidebar_label: "Eof"
---

## Eof (Function)

### Format

eof\
eof()\
eof([open_file_number](../en/integerexpressions.md))

returns [boolean_expression](../en/booleanexpressions.md)

### Description

Returns a binary flag (true/false) that will signal if we have read to the End Of File (EOF). If file number is not specified then file number zero (0) will be used.

If the open file number is a serial port (opened with [OpenSerial](../en/openserial.md)) then EOF returns a true value when there is pending data to receive. EOF that we are at the end of data but with this type of data source, new data may be received at any time. This behaviour is different than with a file.

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|         |                         |
|---------|-------------------------|
| 0.9.4   | New To Version          |
| 1.1.4.0 | Added serial port logic |
