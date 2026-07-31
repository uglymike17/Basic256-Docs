---
title: "Constants"
sidebar_label: "Constants"
---

## Constants

## Numeric Constants

Numeric constants are any numeric characters, preceded by an optional minus sign to indicate negative numbers, and an optional decimal followed by more numeric characters to indicate floating point values. Numbers come in two types: 1) integers and 2) decimal numbers.

Examples include:

| Integer Numbers |
|-----------------|
| 10              |
| -2345           |
| 0               |

Positive integer values may also be expressed in binary (base 2), octal (base 8), and hexadecimal (base 16). Precede binary values with 0b (0b1110 = 14), octal with 0o (0o177 = 127), and hexadecimal with 0x (0xff = 255).

| Decimal Numbers |
|-----------------|
| -234.567        |
| 56.87           |
| 0.0123          |
| PI              |

Very large and small numbers may also be represented in scientific E notation (added in version 0.9.9.46). <http://en.wikipedia.org/wiki/Scientific_notation>

| Scientific E Notation |                |
|-----------------------|----------------|
| E Notation            | Decimal Number |
| 2e0                   | 2              |
| 3e2                   | 300            |
| 1.234e10              | 12340000000    |
| -5.3e4                | -53000         |
| 2e-1                  | 0.2            |
| 5.12e-9               | 0.00000000512  |
## String Constants

String constants are zero or more characters enclosed by either double quotation marks(“) or single quotation marks (’).

### Examples

|                   |
|-------------------|
| ‘I said “Hello.”’ |
| “Tuesday Rocks”   |
| ‘123’             |
| “it is Smith’s”   |
## Boolean Constants

Boolean values represent the two values of True and false. There are defined constants *true* and *false* that represent the value 1 and 0 respectively.

### Examples

| True Values | False Values  |
|-------------|---------------|
| TRUE        | FALSE         |
| 1           | 0             |
| -56         | 0.0           |
| 9.9         | ’“\|          
               \|”something“  |

#### Color Constants and RGB values

These values are used by the [Color](./color.md) statement, can be created with the [RGB](./rgb.md), and are returned by the [GetBrushColor](./getbrushcolor.md), [GetColor](./getcolor.md), and [pixel](./pixel.md) functions.

| Color Constant (Name) | ARGB Values | Integer |  |
|----|----|----|----|
| BLACK | 255, 0, 0, 0 | 4278190080 | ![Black](@site/static/img/wiki/color_black.png) |
| WHITE | 255, 255, 255, 255 | 4294506744 | ![White](@site/static/img/wiki/color_white.png) |
| RED | 255, 255, 0, 0 | 4294901760 | ![red](@site/static/img/wiki/color_red.png) |
| DARKRED | 255, 128, 0, 0 | 4286578688 | ![darkred](@site/static/img/wiki/color_darkred.png) |
| GREEN | 255, 0, 255, 0 | 4278255360 | ![green](@site/static/img/wiki/color_green.png) |
| DARKGREEN | 255, 0, 128, 0 | 4278222848 | ![darkgreen](@site/static/img/wiki/color_darkgreen.png) |
| BLUE | 255, 0, 0, 255 | 4278190335 | ![blue](@site/static/img/wiki/color_blue.png) |
| DARKBLUE | 255, 0, 0, 128 | 4278190208 | ![darkblue](@site/static/img/wiki/color_darkblue.png) |
| CYAN | 255, 0, 255, 255 | 4278255615 | ![cyan](@site/static/img/wiki/color_cyan.png) |
| DARKCYAN | 255, 0, 128, 128 | 4278222976 | ![darkcyan](@site/static/img/wiki/color_darkcyan.png) |
| PURPLE | 255, 255, 0, 255 | 4294902015 | ![purple](@site/static/img/wiki/color_purple.png) |
| DARKPURPLE | 255, 128, 0, 128 | 4286578816 | ![darkpurple](@site/static/img/wiki/color_darkpurple.png) |
| YELLOW | 255, 255, 255, 0 | 4294967040 | ![yellow](@site/static/img/wiki/color_yellow.png) |
| DARKYELLOW | 255, 128, 128 ,0 | 4286611456 | ![darkyellow](@site/static/img/wiki/color_darkyellow.png) |
| ORANGE | 255, 255, 102, 0 | 4294927872 | ![orange](@site/static/img/wiki/color_orange.png) |
| DARKORANGE | 255, 176, 61 ,0 | 4289344256 | ![darkorange](@site/static/img/wiki/color_darkorange.png) |
| GREY / GRAY | 255, 164, 164 ,164 | 4288980132 | ![grey](@site/static/img/wiki/color_grey.png) |
| DARKGREY / DARKGRAY | 255, 128, 128 ,128 | 4286611584 | ![darkgrey](@site/static/img/wiki/color_darkgrey.png) |
| CLEAR | 0, 0, 0, 0 | 0 |  |

#### Variable and Expression Types

These constants can be used to represent the numeric values returned by the [TypeOf](./typeof.md) function.

| Return Values   |       |                     |
|-----------------|-------|---------------------|
| Constant        | Value | Type                |
| TYPE_UNASSIGNED | 0     | Unassigned Variable |
| TYPE_INT        | 1     | Integer             |
| TYPE_FLOAT      | 2     | Decimal Number      |
| TYPE_STRING     | 3     | String              |
| TYPE_ARRAY      | 4     | Array Variable      |
| TYPE_REF        | 5     | Variable Reference  |
| TYPE_MAP        | 6     | Map                 |

#### Error Codes and Constants

This is a list of runtime error code numbers returned by the [LastError](./lasterror.md) function and text error messages returned by the [LastErrorMessage](./lasterrormessage.md) function.

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

#### Mouse Button Constants

These constants can be used to represent the numeric values returned by the [Clickb](./clickb.md) and [Mouseb](./mouseb.md) functions. If a user has pressed more than one button the values will be added together when returned.

| Return Values           |       |
|-------------------------|-------|
| Constant                | Value |
| MOUSEBUTTON_NONE        | 0     |
| MOUSEBUTTON_LEFT        | 1     |
| MOUSEBUTTON_RIGHT       | 2     |
| MOUSEBUTTON_CENTER      | 4     |
| MOUSEBUTTON_DOUBLECLICK | 32    |

#### Image Save Type Constants

These constants can be used to tell the [ImgSave](./imgsave.md) statement which format to save the graphics window into.

| Return Values |       |
|---------------|-------|
| Constant      | Value |
| IMAGETYPE_BMP | “BMP” |
| IMAGETYPE_JPG | “JPG” |
| IMAGETYPE_PNG | “BMP” |

#### Operating System Type Constants

These constants can be used to represent the numeric values returned by the [OsType](./ostype.md) function.

| Return Values    |       |
|------------------|-------|
| Constant         | Value |
| OSTYPE_WINDOWS   | 0     |
| OSTYPE_LINUX     | 1     |
| OSTYPE_MACINTOSH | 2     |
| OSTYPE_ANDROID   | 3     |

#### GetSlice Constants

These constants can be used to specify the action of the [GetSlice](./getslice.md) statement.

| Graphics Layers Values |       |
|------------------------|-------|
| Constant               | Value |
| SLICE_ALL              | 0     |
| SLICE_PAINT            | 1     |
| SLICE_SPRITE           | 2     |

#### Links to Separate Pages

- [Numeric Constants](./numericconstants.md)
- [String Constants](./stringconstants.md)
- [Boolean Constants](./booleanconstants.md)
- [Color Constants](./colorconstants.md)
- [Error Codes and Constants](./errorcodesconstants.md)
- [Variable and Expression Types](./typeofconstants.md)
- [Mouse Button Constants](./mousebuttonconstants.md)
- [Image Save Type Constants](./imagetypeconstants.md)
- [Operating System Type Constants](./ostypeconstants.md)
- [GetSlice Constants](./sliceconstants.md)
