---
title: "Openserial"
sidebar_label: "Openserial"
---

## OpenSerial (Statement)

### Format

**openserial** [open_file_number](../en/integerexpressions.md), *port_name*\
**openserial** [open_file_number](../en/integerexpressions.md), *port_name*, *baud_rate*\
**openserial** [open_file_number](../en/integerexpressions.md), *port_name*, *baud_rate*, *data_bits*\
**openserial** [open_file_number](../en/integerexpressions.md), *port_name*, *baud_rate*, *data_bits*, *stop_bits*\
**openserial** [open_file_number](../en/integerexpressions.md), *port_name*, *baud_rate*, *data_bits*, *stop_bits*, *parity*\
**openserial** [open_file_number](../en/integerexpressions.md), *port_name*, *baud_rate*, *data_bits*, *stop_bits*, *parity*, *flow_control*\

### Description

This statement opens a serial port on your computer for inoput and output. It uses the same file numbering as [open](../en/open.md) and [openb](../en/open.md) and most of the file control statements can be used to get and send data to a serial port.

#### Baud Rates

|                     |         |
|---------------------|---------|
| 300                 |         |
| 1200                |         |
| 9600                | DEFAULT |
| 19200               |         |
| 38400               |         |
| Others are possible |         |

#### Data Bits

|     |         |
|-----|---------|
| 5   |         |
| 6   |         |
| 7   |         |
| 8   | DEFAULT |

#### Stop Bits

|     |         |
|-----|---------|
| 1   | DEFAULT |
| 2   |         |

#### Parity

|     |       |         |
|-----|-------|---------|
| 0   | None  | DEFAULT |
| 1   | Odd   |         |
| 2   | Even  |         |
| 3   | Space |         |
| 4   | Mark  |         |

#### Flow Control

|     |          |         |
|-----|----------|---------|
| 0   | None     | DEFAULT |
| 1   | Hardware |         |
| 2   | Software |         |

### Note

BASIC256 may have up to 8 files open at a single time. The files are numbered from 0 to 7. Opening a file to a number while another is already open to that number will close the open file.

### See Also

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|         |     |
|---------|-----|
| 1.1.4.0 | New |
