---
title: "Error Codes"
sidebar_label: "Error Codes"
---

Errors with a number \< 0 are not trappable by the try/catch statement.

|  |  |  |
|----|----|----|
| Error | Number | Text |
| ERROR_ARGUMENTCOUNT | -5 | Number of arguments passed does not match FUNCTION/SUBROUTINE definition |
| ERROR_ARRAYELEMENT | 106 | Element of array %VARNAME% has not been assigned a value |
| ERROR_ARRAYEVEN | 12 | Array data must be one dimensional with an even number of elements or two dimemsional with two elements in each row |
| ERROR_ARRAYEXPR | 120 | Array Expression Expected. |
| ERROR_ARRAYINDEX | 15 | Array %VARNAME% index out of bounds |
| ERROR_ARRAYINDEXMISSING | 62 | Array variable %VARNAME% has no value without an index |
| ERROR_ARRAYLENGTH2D | 83 | Can not get a single length of a two dimensional array |
| ERROR_ARRAYNITEMS | 14 | Array %VARNAME% rows must have the same number of items |
| ERROR_ARRAYSIZELARGE | 10 | Array %VARNAME% dimension too large |
| ERROR_ARRAYSIZESMALL | 11 | Array %VARNAME% dimension too small |
| ERROR_ASINACOSRANGE | 117 | Unable to calculate the arc-sine or arc-cosine of a value outside the interval \[-1.0, +1.0\] |
| ERROR_BOOLEANCONV | 119 | Unable to convert to a Boolean |
| ERROR_DBCOLNO | 33 | Column number out of range or column name not in data set |
| ERROR_DBCONNNUMBER | 56 | Invalid Database Connection Number |
| ERROR_DBNOTOPEN | 32 | Database must be opened first |
| ERROR_DBNOTSET | 34 | Record set must be opened first |
| ERROR_DBNOTSETROW | 59 | You must advance the data set using DBROW before you can read data from it |
| ERROR_DBOPEN | 30 | Unable to open SQLITE database |
| ERROR_DBQUERY | 31 | Database query error (message follows) |
| ERROR_DBSETNUMBER | 58 | Invalid data set number |
| ERROR_DIVZERO | 50 | Division by zero |
| ERROR_DOWNLOAD | 93 | Error downloading file |
| ERROR_ENVELOPEMAX | 97 | It was exceeded the maximum length of an envelope, which is 20 seconds |
| ERROR_ENVELOPEODD | 96 | Envelope data must contain at least 4 elements and an odd number of elements |
| ERROR_EXPECTEDARRAY | 84 | Expected array |
| ERROR_EXPECTEDSOUND | 94 | Expected sound |
| ERROR_FILENOTOPEN | 7 | File not open |
| ERROR_FILENUMBER | 5 | Invalid File Number |
| ERROR_FILEOPEN | 6 | Unable to open file |
| ERROR_FILEOPERATION | 78 | Can not perform that operation on a Serial Port |
| ERROR_FILERESET | 9 | Unable to reset file |
| ERROR_FILEWRITE | 8 | Unable to write to file |
| ERROR_FOLDER | 28 | Invalid directory name |
| ERROR_FREEDB | 55 | There are no free database connections to allocate |
| ERROR_FREEDBSET | 57 | There are no free data sets to allocate for that database connection |
| ERROR_FREEFILE | 53 | There are no free file numbers to allocate |
| ERROR_FREENET | 54 | There are no free network connections to allocate |
| ERROR_HARMONICLIST | 99 | Harmonics list must be one dimensional array with an even number of elements or two dimemsional array with two elements in each row |
| ERROR_HARMONICNUMBER | 98 | Harmonic number must be an integer greater than zero |
| ERROR_IMAGEFILE | 24 | Unable to load image file |
| ERROR_IMAGERESOURCE | 87 | Specified image resource not found |
| ERROR_IMAGESAVETYPE | 47 | Invalid image save type |
| ERROR_IMAGESCALE | 63 | Image scale must be greater than or equal to zero |
| ERROR_INFINITY | 29 | Operation returned infinity |
| ERROR_INTEGERRANGE | 81 | Number exceeds integer range ( |
| ERROR_INVALIDKEYNAME | 110 | Invalid key name |
| ERROR_INVALIDPROGNAME | 109 | Invalid program name |
| ERROR_INVALIDRESOURCE | 89 | Specified resource not found |
| ERROR_LOGRANGE | 68 | Unable to calculate the logarithm of a number less than or equal to 0 |
| ERROR_LONGRANGE | 80 | Number exceeds long integer range ( |
| ERROR_MAXRECURSE | -6 | Maximum levels of recursion exceeded |
| ERROR_NETACCEPT | 44 | Unable to accept network connection |
| ERROR_NETBIND | 43 | Unable to bind network socket |
| ERROR_NETCONN | 38 | Unable to connect to network host |
| ERROR_NETHOST | 37 | Error finding network host |
| ERROR_NETNONE | 40 | Network connection has not been opened |
| ERROR_NETREAD | 39 | Unable to read from network connection |
| ERROR_NETSOCK | 36 | Error opening network socket |
| ERROR_NETSOCKNUMBER | 45 | Invalid Socket Number |
| ERROR_NETSOCKOPT | 42 | Unable to set network socket options |
| ERROR_NETWRITE | 41 | Unable to write to network connection |
| ERROR_NEXTNOFOR | 115 | Next without FOR |
| ERROR_NONE | 0 |  |
| ERROR_NOSUCHFUNCTION | -13 | No such FUNCTION %VARNAME% |
| ERROR_NOSUCHLABEL | -1 | No such label %VARNAME% |
| ERROR_NOSUCHSUBROUTINE | -12 | No such SUBROUTINE %VARNAME% |
| ERROR_NOTARRAY | -3 | Variable %VARNAME% is not an array |
| ERROR_NOTIMPLEMENTED | 65535 | Feature not implemented in this environment |
| ERROR_NUMBERCONV | 35 | Unable to convert to number |
| ERROR_NUMBEREXPR | 121 | Numeric Expression Expected. |
| ERROR_ONEDIMENSIONAL | 103 | Expects one dimensional array or one dimensional list of elements |
| ERROR_ONERRORSUB | -14 | SUBROUTINE %VARNAME% expects arguments and therefore can not be used by ONERROR statement |
| ERROR_PENWIDTH | 60 | Drawing pen width must be a non-negative number |
| ERROR_PERMISSION | 46 | You do not have permission to use this statement/function |
| ERROR_POLYPOINTS | 23 | Not enough points in array for poly()/stamp() |
| ERROR_PRINTERNOTOFF | 72 | Printing is already on |
| ERROR_PRINTERNOTON | 71 | Printer is not on |
| ERROR_PRINTEROPEN | 73 | Unable to open printer |
| ERROR_RADIX | 67 | Unable to convert radix string back to a decimal number |
| ERROR_RADIXSTRING | 66 | Unable to convert radix string back to a decimal number |
| ERROR_REFNOTASSIGNED | 113 | Variable %VARNAME% refers to an unassigned variable |
| ERROR_REFNOTASSIGNED | 113 | Variable %VARNAME% refers to an unassigned variable |
| ERROR_RGB | 20 | RGB Color values must be in the range of 0 to 255 |
| ERROR_SERIALPARAMETER | 79 | Invalid serial port parameter |
| ERROR_SETTINGMAXKEYS | 112 | The maximum number of keys for this program has been exceeded |
| ERROR_SETTINGMAXLEN | 111 | Setting string exceeds maximum length of 16,383 characters |
| ERROR_SETTINGSGETACCESS | 107 | The program does not have permission to read settings from other program. Check access level from ‘Preferences’ panel |
| ERROR_SETTINGSSETACCESS | 108 | The program does not have permission to write settings for other program. Check access level from ‘Preferences’ panel |
| ERROR_SLICESIZE | 82 | Invalid Slice dimensions |
| ERROR_SOUNDERROR | 102 |  |
| ERROR_SOUNDFILE | 90 | Unable to load sound file |
| ERROR_SOUNDFILEFORMAT | 101 |  |
| ERROR_SOUNDLENGTH | 92 |  |
| ERROR_SOUNDNOTSEEKABLE | 91 |  |
| ERROR_SOUNDRESOURCE | 88 | Specified sound resource not found |
| ERROR_SPRITENA | 26 | Sprite has not been assigned |
| ERROR_SPRITENUMBER | 25 | Sprite number out of range |
| ERROR_SPRITESLICE | 27 | Unable to slice image |
| ERROR_SQRRANGE | 116 | Unable to calculate the root of a negative number |
| ERROR_STACKUNDERFLOW | -7 | Stack Underflow Error |
| ERROR_STRING2NOTE | 105 | Unable to convert string to musical note |
| ERROR_STRINGCONV | 118 | Unable to convert to a string |
| ERROR_STRINGEXPR | 122 | String Expression Expected. |
| ERROR_STRINGMAXLEN | 69 | String exceeds maximum length of 16,777,216 characters |
| ERROR_STRSTART | 17 | Starting position less than zero |
| ERROR_TOOMANYSOUNDS | 95 | Too many sound instances |
| ERROR_UNEXPECTEDRETURN | 114 | Unexpected RETURN |
| ERROR_UNSERIALIZEFORMAT | -11 | Unable to UnSerialize string |
| ERROR_VARCIRCULAR | 86 | Circular reference in variable %VARNAME% |
| ERROR_VARNOTASSIGNED | 13 | Variable %VARNAME% has not been assigned a value |
| ERROR_VARNULL | 85 | Variable %VARNAME% refers to a non-existent variable |
| ERROR_WAVEFORMLOGICAL | 104 | Creating custom waveform using logical coordinates it request at least 3 elements |
| ERROR_WAVOBSOLETE | 100 |  |

Warnings are not trappable but you may go to “preferences” to change the run-time behavior of many of these.

|  |  |  |
|----|----|----|
| Warning | Number | Text |
| WARNING_ARRAYELEMENT | 0 | Element of array %VARNAME% has not been assigned a value |
| WARNING_BOOLEANCONV | 0 | Unable to convert to a Boolean, false used |
| WARNING_INTEGERRANGE | 0 | Number exceeds integer range ( |
| WARNING_LONGRANGE | 0 | Number exceeds long integer range ( |
| WARNING_NUMBERCONV | 0 | Unable to convert string to number, zero used |
| WARNING_REFNOTASSIGNED | 0 | Variable %VARNAME% refers to an unassigned variable |
| WARNING_SOUNDERROR | 0 | Unable to play the sound |
| WARNING_SOUNDFILEFORMAT | 0 | Unable to play the selected file |
| WARNING_SOUNDLENGTH | 0 | Duration is not available for media file |
| WARNING_SOUNDNOTSEEKABLE | 0 | Media file is not seekable |
| WARNING_START | 65536 |  |
| WARNING_STRING2NOTE | 0 |  |
| WARNING_STRINGCONV | 0 | Unable to convert to a string, ’’ used |
| WARNING_VARNOTASSIGNED | 0 | Variable %VARNAME% has not been assigned a value |
| WARNING_WAVOBSOLETE | 0 | WAVPLAY suite is obsolete. Use SOUND/SOUNDPLAY/SOUNDPLAYER instead |

### History

|         |                        |
|---------|------------------------|
| 2.0.0.0 | Added to Documentation |
