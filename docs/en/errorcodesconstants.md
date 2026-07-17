---
title: "Error Code Constants"
sidebar_label: "Error Code Constants"
---

##### Non Trappable Errors

|  |  |  |
|----|----|----|
| Error \# |  | Error Description |
| -1 | ERROR_NOSUCHLABEL | No such label %VARNAME% |
| -2 | ERROR_NEXTNOFOR | Next without FOR |
| -3 | ERROR_NOTARRAY | Variable %VARNAME% is not an array |
| -5 | ERROR_ARGUMENTCOUNT | Number of arguments passed does not match FUNCTION/SUBROUTINE definition |
| -6 | ERROR_MAXRECURSE | Maximum levels of recursion exceeded |
| -7 | ERROR_STACKUNDERFLOW | Stack Underflow Error |
| -8 | ERROR_BADCALLFUNCTION | Function was not called correctly |
| -9 | ERROR_BADCALLSUBROUTINE | Subroutine was not called correctly |

##### Trappable Errors

|  |  |  |
|----|----|----|
| Error \# |  | Error Description |
| 5 | ERROR_FILENUMBER | Invalid File Number |
| 6 | ERROR_FILEOPEN | Unable to open file |
| 7 | ERROR_FILENOTOPEN | File not open |
| 8 | ERROR_FILEWRITE | Unable to write to file |
| 9 | ERROR_FILERESET | Unable to reset file |
| 10 | ERROR_ARRAYSIZELARGE | Array %VARNAME% dimension too large |
| 11 | ERROR_ARRAYSIZESMALL | Array %VARNAME% dimension too small |
| 13 | ERROR_VARNOTASSIGNED | Variable %VARNAME% has not been assigned a value |
| 14 | ERROR_ARRAYNITEMS | Array %VARNAME% rows must have the same number of items |
| 15 | ERROR_ARRAYINDEX | Array %VARNAME% index out of bounds |
| 17 | ERROR_STRSTART | Starting position less than zero |
| 20 | ERROR_RGB | RGB Color values must be in the range of 0 to 255 |
| 21 | ERROR_PUTBITFORMAT | String input to putbit incorrect |
| 23 | ERROR_POLYPOINTS | Not enough points in array for poly()/stamp() |
| 24 | ERROR_IMAGEFILE | Unable to load image file |
| 25 | ERROR_SPRITENUMBER | Sprite number out of range |
| 26 | ERROR_SPRITENA | Sprite has not been assigned |
| 27 | ERROR_SPRITESLICE | Unable to slice image |
| 28 | ERROR_FOLDER | Invalid directory name |
| 29 | ERROR_INFINITY | Operation returned infinity |
| 30 | ERROR_DBOPEN | Unable to open SQLITE database |
| 31 | ERROR_DBQUERY | Database query error (message follows) |
| 32 | ERROR_DBNOTOPEN | Database must be opened first |
| 33 | ERROR_DBCOLNO | Column number out of range or column name not in data set |
| 34 | ERROR_DBNOTSET | Record set must be opened first |
| 35 | ERROR_TYPECONV | Unable to convert string to number |
| 36 | ERROR_NETSOCK | Error opening network socket |
| 37 | ERROR_NETHOST | Error finding network host |
| 38 | ERROR_NETCONN | Unable to connect to network host |
| 39 | ERROR_NETREAD | Unable to read from network connection |
| 40 | ERROR_NETNONE | Network connection has not been opened |
| 41 | ERROR_NETWRITE | Unable to write to network connection |
| 42 | ERROR_NETSOCKOPT | Unable to set network socket options |
| 43 | ERROR_NETBIND | Unable to bind network socket |
| 44 | ERROR_NETACCEPT | Unable to accept network connection |
| 45 | ERROR_NETSOCKNUMBER | Invalid Socket Number |
| 46 | ERROR_PERMISSION | You do not have permission to use this statement/function |
| 47 | ERROR_IMAGESAVETYPE | Invalid image save type |
| 50 | ERROR_DIVZERO | Division by zero |
| 51 | ERROR_BYREF | Function/Subroutine expecting variable reference in call |
| 53 | ERROR_FREEFILE | There are no free file numbers to allocate |
| 54 | ERROR_FREENET | There are no free network connections to allocate |
| 55 | ERROR_FREEDB | There are no free database connections to allocate |
| 56 | ERROR_DBCONNNUMBER | Invalid Database Connection Number |
| 57 | ERROR_FREEDBSET | There are no free data sets to allocate for that database connection |
| 58 | ERROR_DBSETNUMBER | Invalid data set number |
| 59 | ERROR_DBNOTSETROW | You must advance the data set using DBROW before you can read data from it |
| 60 | ERROR_PENWIDTH | Drawing pen width must be a non-negative number |
| 62 | ERROR_ARRAYINDEXMISSING | Array variable %VARNAME% has no value without an index |
| 63 | ERROR_IMAGESCALE | Image scale must be greater than or equal to zero |
| 64 | ERROR_FONTSIZE | Font size, in points, must be greater than or equal to zero |
| 65 | ERROR_FONTWEIGHT | Font weight must be greater than or equal to zero |
| 66 | ERROR_RADIXSTRING | Unable to convert radix string back to a decimal number |
| 67 | ERROR_RADIX | Radix conversion base muse be between 2 and 36 |
| 68 | ERROR_LOGRANGE | Unable to calculate the logarithm or root of a negative number |
| 69 | ERROR_STRINGMAXLEN | String exceeds maximum length of 16,777,216 characters |
| 71 | ERROR_PRINTERNOTON | Printer is not on |
| 72 | ERROR_PRINTERNOTOFF | Printing is already on |
| 73 | ERROR_PRINTEROPEN | Unable to open printer |
| 74 | ERROR_WAVFILEFORMAT | Media file does not exist or in an unsupported format |
| 75 | ERROR_WAVNOTOPEN | Media file not open |
| 76 | ERROR_WAVNOTSEEKABLE |  |
| 77 | ERROR_WAVNODURATION |  |
| 78 | ERROR_FILEOPERATION | Can not perform that operation on a Serial Port |
| 79 | ERROR_SERIALPARAMETER | Invalid serial port parameter |
| 80 | ERROR_LONGRANGE | Number exceeds long integer range () |
| 81 | ERROR_INTEGERRANGE | Number exceeds integer range () |
| 65535 | ERROR_NOTIMPLEMENTED | “Feature not implemented in this environment.” |

##### Warnings

|  |  |  |
|----|----|----|
| Error \# |  | Error Description |
| 65536+ERROR_TYPECONV | WARNING_TYPECONV | Unable to convert string to number, zero used |
| 65536+ERROR_WAVNOTSEEKABLE | WARNING_WAVNOTSEEKABLE | Media file is not seekable |
| 65536+ERROR_WAVNODURATION | WARNING_WAVNODURATION | Duration is not available for media file |
| 65536+ERROR_VARNOTASSIGNED | WARNING_VARNOTASSIGNED | Variable %VARNAME% has not been assigned a value |
| 65536+ERROR_LONGRANGE | WARNING_LONGRANGE | Number exceeds long integer range () |
| 65536+ERROR_INTEGERRANGE | WARNING_INTEGERRANGE | Number exceeds integer range () |
