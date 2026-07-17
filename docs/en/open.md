---
title: "Open"
sidebar_label: "Open"
---

## Open and Openb (Statement)

### Format

**open** [file_name](./stringexpressions.md)\
**open**([file_name](./stringexpressions.md))\
**open** [open_file_number](./integerexpressions.md), [file_name](./stringexpressions.md)\
**open**([open_file_number](./integerexpressions.md), [file_name](./stringexpressions.md))\
**openb** [file_name](./stringexpressions.md)\
**openb**([file_name](./stringexpressions.md))\
**openb** [open_file_number](./integerexpressions.md), [file_name](./stringexpressions.md)\
**openb**([open_file_number](./integerexpressions.md), [file_name](./stringexpressions.md))

### Description

Opens a file for reading and writing. The [file_name](./stringexpressions.md) is specified as a string, and may be an absolute or relative path. If the file number is not specified file number zero (0) will be used.\
Openb opens the file in a “binary safe” mode. This type of file open is recommended for files where the [Readbyte](./readbyte.md) and [Writebyte](./writebyte.md) statements are used for input/output.

### Note

BASIC256 may have up to 8 files open at a single time. The files are numbered from 0 to 7. Opening a file to a number while another is already open to that number will close the open file.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|       |                                      |
|-------|--------------------------------------|
| 0.9.? | openb was added to open binary files |
