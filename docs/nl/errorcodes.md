---
title: "Error Codes"
sidebar_label: "Error Codes"
---

## Error Codes

When something goes wrong while a program runs, BASIC-256 raises a runtime **error** or a **warning**, each with its own number. [LastError](../en/lasterror.md) returns the number of the last one that was trapped, and [LastErrorMessage](../en/lasterrormessage.md) its message. Errors and warnings can both be trapped with [Try / Catch / EndTry](../en/try.md) or [OnError](../en/onerror.md).

- **Errors from 1 to 65535** stop the program, unless they are trapped.
- **Warnings, from 65536 up,** show a WARNING message and let the program carry on. A warning's number is 65536 plus the number of the matching error: WARNING_VARNOTASSIGNED is 65536 + 13 = 65549. On the User tab of Preferences you choose whether bad type conversions and unassigned variables are ignored, give a warning, or give an error.
- **Errors below 0** are mistakes in the program itself, such as a missing label or subroutine, or recursion that goes too deep. They can be trapped too, but they are best fixed in the program.
- [ThrowError](../en/throwerror.md) raises an error with a number of your own. A number that is not in these tables, for example 1000 or more, has the message "User thrown error number".

In a message, %VARNAME% is replaced by the name of the variable. Each name in the tables is also a constant that a program can use, for example `if lasterror = error_divzero then`, except the names marked †, which have only a number.

### Example

    onerror nicetrap
    print 10 / 0
    open 99, "bogus.file"
    print "Runs Anyway"
    end

    nicetrap:
    print "error " + lasterror + " on line " + lasterrorline + ": " + lasterrormessage
    if lasterror = error_divzero then print "(that was a division by zero)"
    return

will display

    error 50 on line 2: Division by zero
    (that was a division by zero)
    0.0
    error 5 on line 3: Invalid File Number
    Runs Anyway

### Errors in the program itself

| Number | Name | Message |
|----|----|----|
| -1 | ERROR_NOSUCHLABEL | No such label %VARNAME% |
| -3 | ERROR_NOTARRAY | Variable %VARNAME% is not an array |
| -5 | ERROR_ARGUMENTCOUNT | Number of arguments passed does not match FUNCTION/SUBROUTINE definition |
| -6 | ERROR_MAXRECURSE | Maximum levels of recursion exceeded |
| -7 | ERROR_STACKUNDERFLOW | Stack Underflow Error |
| -11 | ERROR_UNSERIALIZEFORMAT | Unable to UnSerialize string |
| -12 | ERROR_NOSUCHSUBROUTINE | No such SUBROUTINE %VARNAME% |
| -13 | ERROR_NOSUCHFUNCTION | No such FUNCTION %VARNAME% |
| -14 | ERROR_ONERRORSUB | SUBROUTINE %VARNAME% expects arguments and therefore can not be used by ONERROR statement |

### Errors

| Number | Name | Message |
|----|----|----|
| 5 | ERROR_FILENUMBER | Invalid File Number |
| 6 | ERROR_FILEOPEN | Unable to open file |
| 7 | ERROR_FILENOTOPEN | File not open |
| 8 | ERROR_FILEWRITE | Unable to write to file |
| 9 | ERROR_FILERESET | Unable to reset file |
| 10 | ERROR_ARRAYSIZELARGE | Array %VARNAME% dimension too large |
| 11 | ERROR_ARRAYSIZESMALL | Array %VARNAME% dimension too small |
| 12 | ERROR_ARRAYEVEN | Array data must be one dimensional with an even number of elements or two dimemsional with two elements in each row |
| 13 | ERROR_VARNOTASSIGNED | Variable %VARNAME% has not been assigned a value |
| 14 | ERROR_ARRAYNITEMS | Array %VARNAME% rows must have the same number of items |
| 15 | ERROR_ARRAYINDEX | Array %VARNAME% index out of bounds |
| 17 | ERROR_STRSTART | Starting position less than zero |
| 20 | ERROR_RGB | RGB Color values must be in the range of 0 to 255 |
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
| 35 | ERROR_NUMBERCONV | Unable to convert to number |
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
| 66 | ERROR_RADIXSTRING | Unable to convert radix string back to a decimal number |
| 67 | ERROR_RADIX | Radix conversion base muse be between 2 and 36 |
| 68 | ERROR_LOGRANGE | Unable to calculate the logarithm of a number less than or equal to 0 |
| 69 | ERROR_STRINGMAXLEN | String exceeds maximum length of 16,777,216 characters |
| 71 | ERROR_PRINTERNOTON | Printer is not on |
| 72 | ERROR_PRINTERNOTOFF | Printing is already on |
| 73 | ERROR_PRINTEROPEN | Unable to open printer |
| 78 | ERROR_FILEOPERATION | Can not perform that operation on a Serial Port |
| 79 | ERROR_SERIALPARAMETER | Invalid serial port parameter |
| 80 | ERROR_LONGRANGE | Number exceeds long integer range (minimum to maximum) |
| 81 | ERROR_INTEGERRANGE | Number exceeds integer range (minimum to maximum) |
| 82 | ERROR_SLICESIZE | Invalid Slice dimensions |
| 83 | ERROR_ARRAYLENGTH2D | Can not get a single length of a two dimensional array |
| 84 | ERROR_EXPECTEDARRAY | Expected array |
| 85 | ERROR_VARNULL | Variable %VARNAME% refers to a non-existent variable |
| 86 | ERROR_VARCIRCULAR | Circular reference in variable %VARNAME% |
| 87 | ERROR_IMAGERESOURCE | Specified image resource not found |
| 88 | ERROR_SOUNDRESOURCE | Specified sound resource not found |
| 89 | ERROR_INVALIDRESOURCE | Specified resource not found |
| 90 | ERROR_SOUNDFILE | Unable to load sound file |
| 91 | ERROR_SOUNDNOTSEEKABLE | *(only used as a warning)* |
| 92 | ERROR_SOUNDLENGTH | *(only used as a warning)* |
| 93 | ERROR_DOWNLOAD | Error downloading file |
| 94 | ERROR_EXPECTEDSOUND | Expected sound |
| 95 | ERROR_TOOMANYSOUNDS | Too many sound instances |
| 96 | ERROR_ENVELOPEODD | Envelope data must contain at least 4 elements and an even number of elements |
| 97 | ERROR_ENVELOPEMAX | It was exceeded the maximum length of an envelope, which is 20 seconds |
| 98 | ERROR_HARMONICNUMBER | Harmonic number must be an integer greater than zero |
| 99 | ERROR_HARMONICLIST | Harmonics list must be one dimensional array with an even number of elements or two dimemsional array with two elements in each row |
| 100 | ERROR_WAVOBSOLETE | *(only used as a warning)* |
| 101 | ERROR_SOUNDFILEFORMAT | *(only used as a warning)* |
| 102 | ERROR_SOUNDERROR | *(only used as a warning)* |
| 103 | ERROR_ONEDIMENSIONAL | Expects one dimensional array or one dimensional list of elements |
| 104 | ERROR_WAVEFORMLOGICAL | Creating custom waveform using logical coordinates it request at least 3 elements |
| 105 | ERROR_STRING2NOTE | Unable to convert string to musical note |
| 106 | ERROR_ARRAYELEMENT | Element of array %VARNAME% has not been assigned a value |
| 107 | ERROR_SETTINGSGETACCESS | The program does not have permission to read settings from other program. Check access level from 'Preferences' panel |
| 108 | ERROR_SETTINGSSETACCESS | The program does not have permission to write settings for other program. Check access level from 'Preferences' panel |
| 109 | ERROR_INVALIDPROGNAME | Invalid program name |
| 110 | ERROR_INVALIDKEYNAME | Invalid key name |
| 111 | ERROR_SETTINGMAXLEN | Setting string exceeds maximum length of 16,383 characters |
| 112 | ERROR_SETTINGMAXKEYS | The maximum number of keys for this program has been exceeded |
| 113 | ERROR_REFNOTASSIGNED | Variable %VARNAME% refers to an unassigned variable |
| 114 | ERROR_UNEXPECTEDRETURN | Unexpected RETURN |
| 115 | ERROR_NEXTNOFOR | Next without FOR |
| 116 | ERROR_SQRRANGE | Unable to calculate the root of a negative number |
| 117 | ERROR_ASINACOSRANGE | Unable to calculate the arc-sine or arc-cosine of a value outside the interval [-1.0, +1.0] |
| 118 | ERROR_STRINGCONV | Unable to convert to a string |
| 119 | ERROR_BOOLEANCONV | Unable to convert to a Boolean |
| 120 | ERROR_ARRAYEXPR | Array Expression Expected. |
| 121 | ERROR_NUMBEREXPR | Numeric Expression Expected. |
| 122 | ERROR_STRINGEXPR | String Expression Expected. |
| 123 | ERROR_ZEROORONE † | Zero or one expected. |
| 124 | ERROR_NOTMAP † | Variable %VARNAME% is not a map |
| 125 | ERROR_ARRAYORMAPEXPR † | Array or Map Expression Expected. |
| 126 | ERROR_MAPKEY † | Map key does not exist |
| 128 | ERROR_MKDIR † | Unable to create new folder |
| 129 | ERROR_NOTAVAILABLE † | Feature not available on this platform |
| 130 | ERROR_WINDOWSIZE † | WINDOW needs a width and a height that are not zero |
| 131 | ERROR_MATNOTMATRIX † | MAT needs an array for %VARNAME%, not a single value |
| 132 | ERROR_MATDIM † | MAT needs both matrices to have the same number of rows and the same number of columns |
| 133 | ERROR_MATMULDIM † | MAT MUL needs the first matrix to have as many columns as the second has rows |
| 134 | ERROR_MATNOTSQUARE † | MAT INV needs a square matrix |
| 135 | ERROR_MATSINGULAR † | MAT INV can not invert a singular matrix |
| 136 | ERROR_VECNOTVECTOR † | DOT, CROSS, NORM and UNIT need an array, not a single value |
| 137 | ERROR_VECDIM † | DOT and CROSS need both vectors to have the same number of elements |
| 138 | ERROR_CROSSDIM † | CROSS needs vectors of two or three elements |
| 139 | ERROR_VECELEMENT † | the vector has an element that has not been given a value |
| 140 | ERROR_VECZERO † | UNIT can not make a unit vector from a vector of length zero |
| 141 | ERROR_HSV † | HSV needs a hue from 0 to 360, and saturation, value and alpha from 0 to 100 |
| 65535 | ERROR_NOTIMPLEMENTED | Feature not implemented in this environment |

### Warnings

| Number | Name | Message |
|----|----|----|
| 65549 | WARNING_VARNOTASSIGNED | Variable %VARNAME% has not been assigned a value |
| 65571 | WARNING_NUMBERCONV | Unable to convert string to number, zero used |
| 65616 | WARNING_LONGRANGE | Number exceeds long integer range (minimum to maximum), zero used |
| 65617 | WARNING_INTEGERRANGE | Number exceeds integer range (minimum to maximum), zero used |
| 65627 | WARNING_SOUNDNOTSEEKABLE | Media file is not seekable |
| 65628 | WARNING_SOUNDLENGTH | Duration is not available for media file |
| 65636 | WARNING_WAVOBSOLETE | WAVPLAY suite is obsolete. Use SOUND/SOUNDPLAY/SOUNDPLAYER instead |
| 65637 | WARNING_SOUNDFILEFORMAT | Unable to play the selected file |
| 65638 | WARNING_SOUNDERROR | Unable to play the sound |
| 65641 | WARNING_STRING2NOTE | *(no message of its own)* |
| 65642 | WARNING_ARRAYELEMENT | Element of array %VARNAME% has not been assigned a value |
| 65649 | WARNING_REFNOTASSIGNED | Variable %VARNAME% refers to an unassigned variable |
| 65654 | WARNING_STRINGCONV | Unable to convert to a string, '' used |
| 65655 | WARNING_BOOLEANCONV | Unable to convert to a Boolean, false used |
| 65662 | WARNING_MAPKEY † | Map key has not been assigned a value |

### See Also

[Error Codes](../en/errorcodes.md), [Lasterror](../en/lasterror.md), [Lasterrorextra](../en/lasterrorextra.md), [Lasterrorline](../en/lasterrorline.md), [Lasterrormessage](../en/lasterrormessage.md), [Offerror](../en/offerror.md), [Onerror](../en/onerror.md), [ThrowError](../en/throwerror.md), [Try / Catch / EndTry](../en/try.md)

### History

|         |                        |
|---------|------------------------|
| 2.0.0.0 | Added to Documentation |
