---
title: "Freefile"
sidebar_label: "Freefile"
---

## Freefile (Function)

### Format

**freefile**\
**freefile** ( )

returns [integer_expression](./integerexpressions.md)

### Description

BASIC256 allows for multiple files to be opened at a single time. The **freefile** function returns a free [open_file_number](./integerexpressions.md) that you can use in your next [Open](./open.md) or [Openb](./open.md). Once a file is closed, **freefile** will return that [open_file_number](./integerexpressions.md) to the list of available file numbers and may reissue that number.

### Example

    # copy one binary file to another
    k = 0
    source = freefile
    openb source,"file.pdf"
    dest = freefile
    openb dest,"file_copy.pdf"
    reset dest
    while not eof(source)
       writebyte dest, readbyte(source)
       k++
    end while
    close dest
    close source
    print k + " bytes copied."

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.17 | New to Version |
