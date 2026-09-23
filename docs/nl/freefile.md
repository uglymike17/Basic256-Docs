---
title: "Freefile"
sidebar_label: "Freefile"
---

## Freefile (Function)

### Format

**freefile**\
**freefile** ( )

returns [integer_expression](../en/integerexpressions.md)

### Description

BASIC256 allows for multiple files to be opened at a single time. The **freefile** function returns a free [open_file_number](../en/integerexpressions.md) that you can use in your next [Open](../en/open.md) or [Openb](../en/open.md). Once a file is closed, **freefile** will return that [open_file_number](../en/integerexpressions.md) to the list of available file numbers and may reissue that number.

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

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.17 | New to Version |
