---
title: "Referenz auf einer Seite"
sidebar_label: "Referenz auf einer Seite"
---

\~~ODT\~~

### BASIC-256 Syntax Reference









### Statements and Functions - Alphabetic

## Abs

### Format

**abs** ( *Ausdruck* )

### Beschreibung

Gibt den absoluten Wert von *Ausdruck* zurück.

### Beispiel

    c = abs(a-b)
## Acos

### Format

**acos** ( *expression* )

### Description

Computes the arc-cosine of *expression*. Angles are expressed in radians (0 to 2pi).

### See Also

[Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Asc

### Format

**asc** ( *expression* )

### Description

Converts the first character in a string *expression* to an integer representing it‘s ASCII value.
^Asc^Chr^Asc^Chr^Asc^Chr^Asc^Chr^Asc^Chr^Asc^Chr^
\|32\|SPACE\|48\|0\|64\|@\|80\|P\|96\|\`\|112\|p\|
\|33\|!\|49\|1\|65\|A\|81\|Q\|97\|a\|113\|q\|
\|34\|“\|50\|2\|66\|B\|82\|R\|98\|b\|114\|r\|
\|35\|#\|51\|3\|67\|C\|83\|S\|99\|c\|115\|s\|
\|36\|\$\|52\|4\|68\|D\|84\|T\|100\|d\|116\|t\|
\|37\|%\|53\|5\|69\|E\|85\|U\|101\|e\|117\|u\|
\|38\|&\|54\|6\|70\|F\|86\|V\|102\|f\|118\|v\|
\|39\|’\|55\|7\|71\|G\|87\|W\|103\|g\|119\|w\|

|     |     |     |     |     |     |     |     |     |     |     |     |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 40  | (   | 56  | 8   | 72  | H   | 88  | X   | 104 | h   | 120 | x   |
| 41  | )   | 57  | 9   | 73  | I   | 89  | Y   | 105 | i   | 121 | y   |
| 42  | \*  | 58  | :   | 74  | J   | 90  | Z   | 106 | j   | 122 | z   |
| 43  | \+  | 59  | ;   | 75  | K   | 91  | \[  | 107 | k   | 123 | {   |
| 44  | ,   | 60  | \<  | 76  | L   | 92  | \\  | 108 | l   | 124 | \|  |
| 45  | \-  | 61  | =   | 77  | M   | 93  | \]  | 109 | m   | 125 | }   |
| 46  | .   | 62  | \>  | 78  | N   | 94  | ^   | 110 | n   | 126 | ~   |
| 47  | /   | 63  | ?   | 79  | O   | 95  | \_  | 111 | o   | 127 |     |

### See Also

[Chr](./chr.md)

### Example

    print asc("A")
    print asc("blue")

will print

    65
    98

### New To Version

0.9.4
## Asin

### Format

**asin** ( *expression* )

### Description

Computes the arc-sine of *expression*. Angles are expressed in radians (0 to 2pi).

### See Also

[Acos](./acos.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Atan

### Format

**atan** ( *expression* )

### Description

Computes the arc-tangent of *expression*. Angles are expressed in radians (0 to 2pi).

### See Also

[Acos](./acos.md), [Asin](./asin.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Ceil

### Format

**ceil** ( *Ausdruck* )

### Beschreibung

Gibt die kleinste ganze Zahl zurück, die größer oder gleich *Ausdruck* ist.

### Siehe auch

[Floor](./floor.md)

### Beispiel

    i = floor(-1.25)
    rem i ist -1
## Changedir

### Format

**changedir** *expression*\
**changedir** ( *expression* )

### Description

Change the current working directory to the path specified in *expression*. For all systems (including Windows) a forward slash (/) will be used to separate folders in a full path.

### See Also

[Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### New To Version

0.9.6r
## Chr

### Format

**chr** ( *expression* )

### Description

Converts the integer *expression* into a single character string expression with the ASCII value of the number. See asc for a complete ASCII character conversion chart.

### See Also

[Asc](./asc.md)

### Example

    print chr(66)+chr(111)+chr(111)+chr(33)

will print

    Boo!

### New To Version

0.9.4
## Circle

### Format

**circle** *x*,*y*,*r*\
**circle** ( *x*,*y*,*r* )

### Beschreibung

Zeichnet einen mit der aktuellen Farbe ausgefüllten Kreis mit Mittelpunkt x,y und Radius r.

### Beispiel

    color yellow
    circle 20,20,10
## Clickb

### Format

**clickb**\
**clickb** ( )

### Description

Returns the buttons that the user last clicked on the mouse (if over the graphic output). Returns 0 if no click has been recorded. If multiple buttons have been pressed the value is the sum of the values for all pressed buttons.

| Return Values |                      |
|---------------|----------------------|
| Value         | Mouse Button Pressed |
| 0             | None                 |
| 1             | Left                 |
| 2             | Right                |
| 4             | Center               |

### See Also

[Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Example

    # clear any prior mouse click
    clickclear
    # wait for the user to click the mouse
    print "click mouse on the graphics output"
    while clickb = 0
      pause .01
    endwhile
    # show where the user clicked
    print "The user clicked at (" + clickx + "," + clicky + ")"

### New To Version

0.9.4d
## Clickclear

### Format

**clickclear**\
**clickclear** ( )

### Description

Sets ClickB, Clickx, and Clicky to zero so that we can easily tell when the next mouse click is recorded.

### See Also

[Clickb](./clickb.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Example

See sample program on [Clickb](./clickb.md).

### New To Version

0.9.4d
## Clickx

### Format

**clickx**\
**clickx** ( )

### Description

Returns the mouse x location of the mouse pointer over the graphic output last time the user clicked a mouse button.

### See Also

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Example

See sample program on [Clickb](./clickb.md).

### New To Version

0.9.4d
## Clicky

### Format

**clicky**\
**clicky** ( )

### Description

Returns the mouse y location of the mouse pointer over the graphic output last time the user clicked a mouse button.

### See Also

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clickx](./clickx.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Example

See sample program on [Clickb](./clickb.md).

### New To Version

0.9.4d
## Clg

### Format

clg

### Beschreibung

Löscht den Inhalt des Grafikfensters.
## Close

### Format

**close**\
**close** *filenumber*\
**close** ( *filenumber* )

### Beschreibung

Schließt die aktuell geöffnete Datei. Wenn gerade keine Datei offen ist, hat der Befehl keine Wirkung.

### Siehe auch

[Open](./open.md), [Read](./read.md), [Write](./write.md), [Reset](./reset.md)
## Cls

### Format

**cls**

### Beschreibung

Löscht den Inhalt des Textfensters.
## Color

### Format

**color** *Farbname*\
**color** ( *Farbname* )\
**color** *r*, *g*, *b*\
**color** ( *r*, *g*, *b* )\
**color** *rgb*\
**color** ( *rgb* )

### Beschreibung

Setzt die aktuelle Farbe auf *Farbname*.

### Beispiel

    color blue
## Cos

### Format

**cos** ( *Ausdruck* )

### Beschreibung

Berechnet den Kosinus von *Ausdruck*. *Ausdruck* muss ein Bogenmaß sein.

### Note

Die cos-Funktion liefert kein besonders genaues Ergebnis.

### Siehe auch

[Sin](./sin.md), [Tan](./tan.md)

### Beispiel

    c = cos( 2*PI*deg/360)
## Currentdir

### Format

**currentdir**\
**currentdir** ( )

### Description

Returns the fully qualified path name to BASIC-256’s current directory. For all systems (including Windows) a forward slash (/) will be used to separate folders in a full path.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### New To Version

0.9.6r
## Day

### Format

**day**\
**day** ( )

### Description

Returns the current system clock’s day of the month (1-31).

### See Also

[Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

### Example

    print "today's date is ";
    print (month + 1) + "/" + day + "/" + year

will print\|

    today's date is 11/30/2009

### New To Version

0.9.4
## DBClose

### Format

**dbclose**\
**dbclose** ( )

### Description

Close the currently open SQLite database file.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBCloseSet

### Format

**dbcloseset**\
**dbcloseset** ( )

### Description

Close the currently open record set opened by [DBOpenSet](./dbopenset.md).

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBClose](./dbclose.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBExecute

### Format

**dbexecute** *SqlStatement*\
**dbexecute** ( *SqlStatement* )

### Description

Execute an SQL statement on the open SQLite database file. This statement does not create a record set.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBFloat

### Format

**dbfloat** ( *ColumnNumber* )

### Description

Return a floating point (decimal value) from the specified column of the current row of the open recordset.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBInt

### Format

**dbint** ( *ColumnNumber* )

### Description

Return an integer value from the specified column of the current row of the open recordset.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBOpen

### Format

**dbopen** *SQLiteFile*\
**dbopen** ( *SQLiteFile* )

### Description

Open an SQLite database file. If the file does not exist then create it.

### Example

    #database foo - create a database, populate a table, open a recordset and read data from table.

    # create a new database file or open it
    dbopen "dbtest.sqlite3"

    # delete old foo table - trap error if new database
    onerror errortrap
    dbexecute "drop table foo;"
    offerror
    # create and populate
    dbexecute "create table foo (id integer, words text, value decimal);"
    dbexecute "insert into foo values (1,'one',3.14);"
    dbexecute "insert into foo values (2,'two',6.28);"
    dbexecute "insert into foo values (3,'three',9.43);"

    # open a recordset and loop through the rows of data
    dbopenset "select * from foo order by words;"
    while dbrow()
        print dbint(0) + dbstring(1) + dbfloat(2)
    end while
    dbcloseset

    # wrap everything up
    dbclose
    end

    errortrap:
    # accept error - display nothing - return to next statement
    return

will display

    1one3.14
    3three9.43
    2two6.28

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBClose

### Format

**dbopenset** *SqlStatement*\
**dbopenset** ( *SqlStatement* )

### Description

Perform an SQL statement and create a record set so that the program may loop through and use the results.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBRow

### Format

**dbrow**\
**dbrow** ( )

### Description

Function that advances the record set to the next row. Returns a true value if there is a row or false if we are at the end of the record set.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBString](./dbstring.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## DBString

### Format

**dbstring** ( *ColumnNumber* )

### Description

Return a string from the specified column of the current row of the open recordset.

### Example

See example of usage on [DBOpen](./dbopen.md) page.

### See Also

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md)

### External Links

More information about databases in general and SQLite specifically can be found at [SQLite Home Page](http://sqlite.org) and [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### New To Version

0.9.6y
## Degrees

### Format

**degrees** ( *expression* )

### Description

<img src="/en/radians.png" class="align-right" alt="radians.png" />
Converts an angle in radians to degrees.\

### See Also

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Dim

### Format

**dim** *numericvariable*( *AnzahlElemente* )\
**dim** *stringvariable\$*( *AnzahlElemente* )\
**dim** *numericvariable*( *rows* , *columns* )\
**dim** *stringvariable\$*( *rows* , *columns* )==== Beschreibung ====
Liefert ein neu erzeugtes Feld der Länge *AnzahlElemente* zurück. Der Typ des erzeugten Feldes (Zeichenkettenfeld oder numerisches Feld) wird durch den Typ von *Variable* bestimmt.

### Note

Auf Elemente des Feldes wird via *Variable*\[*Index*\] zugegriffen. *Index* läuft von 0 bis (AnzahlElemente - 1)

### Beispiel

    dim f(100)
    f[0] = 1
    dim c$(5)
    c$[4] = "Hi!"
## Do / Until

### Format

**do**\
*statement(s)*\
**until** *booleanexpression*

### Description

Execute the *statement(s)* inside the do loop whil the *booleanexpression* evaluates to false. Do / Until executes the statements one or more times. The test is done after each time the code in the loop is executed.

### See Also

[For / Next](./fornext.md), [While / End While](./whileendwhile.md)

### Example

    t = 1
    do
      print t
      t = t + 1
    until t > 5

will print

    1
    2
    3
    4
    5

### New To Version

0.9.4g
## End

### Format

end

### Beschreibung

Beendet die Ausführung des Programmes.
## Eof

### Format

eof\
eof()\
eof(*filenumber*)

### Description

Returns a binary flag (true/false) that will signal if we have read to the End Of File (EOF). If file number is not specified then file number zero (0) will be used.

### See Also

[Close](./close.md), [Exists](./exists.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### New To Version

0.9.4
## Exists

### Format

exists ( *expression* )

### Description

Returns a binary flag (true/false) that will signal if the file path specified by the expression exists.

### See Also

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### New To Version

0.9.4
## FastGraphics

### Format

fastgraphics

### Beschreibung

Schaltet in den FastGraphics-Modus, bis das Programm beendet wird. Der FastGraphics-Modus bedeutet, dass der Inhalt des Grafikfensters erst beim nächsten REFRESH-Befehl aktualisiert wird. Dadurch können komplexe Animationen deutlich beschleunigt und Flimmern vermieden werden.

### Note

Bei Animationen wird empfohlen, alle Grafikbefehle in Unterprogramme auszulagern und einen einziges REFRESH-Befehl zu benutzen, sobald das Einzelbild fertig ist.
## Float

### Format

float ( *expression* )

### Description

Convert *expression* to a floating point (decimal) number. Float will convert a string or an integer to a decimal value. If the expression can not be converted then a zero will be returned.

### See Also

[Int](./int.md)

### New To Version

0.9.4
## Floor

### Format

floor ( *Ausdruck* )

### Beschreibung

Gibt die größte ganze Zahl zurück, die kleiner oder gleich *Ausdruck* ist.

### Siehe auch

Ceil

### Beispiel

’ ’ i = floor(-1.25) rem i ist -2’ ’
## Font

### Format

font *fontname*, *point*, *weight*

### Description

Sets the font used by the text command to *fontname*. Size is defined in points (1/72“) Weight represents a number from 1 to 100 that defines how dark the letters will be drawn. Light=25, Normal=50, and Bold=75.

### Example

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"
    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Will draw.\
![fonttext.png](@site/static/img/wiki/en/fonttext.png)

### See Also

[Text](./text.md)

### New To Version

0.9.4
## For/Next

### Format

for *Variable* = *Ausdruck1* to *Ausdruck2* \[ step *Ausdruck3* \] \<br\>…\<br\> next *Variable*

### Beschreibung

Die Befehle FOR und NEXT werden zusammen benutzt, um einen Befehl oder eine Gruppe von Befehlen eine bestimmte Anzahl mal hintereinander auszuführen. Beim Betreten der FOR-Schleife wird *Variable* auf das Ergebnis von *Ausdruck1* gesetzt.\
Nach jedem NEXT Kommando wird *Variable* entweder um 1 erhöht (Standard), oder, bei Benutzung des optionalen STEP Befehls, um den Wert von *Ausdruck3* erhöht. Für Werte von STEP größer null wird die Schleife so oft durchlaufen, bis *Variable* größer oder gleich *Ausdruck2* ist. Bei negativen STEP-Werten ist die Abbruchbedingung erreicht, wenn *Variable* kleiner oder gleich *Ausdruck2* ist

### Beispiel

’ ’ for i = 1 to 10\<br\> print i\<br\>next i’ ’
## GetColor

### Format

getcolor\
getcolor()

### Description

Returns the RGB value of the current drawing color (last set by color statement). RGB is calculated by taking ((red \* 256) + green \* 256) + blue where red, green, and blue are between 0 and 255. If the drawing color has been set to CLEAR a -1 will be returned.

### See Also

[Color](./color.md), [Rgb](./rgb.md)

### Example

    color red
    print getcolor

will print

    16711680

### New To Version

0.9.5m
## GetSlice

### Format

getslice(*x*, *y*, *width*, *height*)

### Description

Return a string that contains a Hexadecimal representation of the rectangle defined by the parameters. String is formatted as first 4 bytes - width, next 4 bytes - height, 6 bytes for each pixel (width \* height).

### See Also

[PutSlice](./putslice.md)

### New To Version

0.9.6b
## Goto

### Format

goto *Sprungmarke*

### Beschreibung

Springt zu *Sprungmarke*.

### Note

Eine Sprungmarke wird mit *Bezeichner\>:* erzeugt, z.B. **nochmal:**. Basic-Befehle sind als *Bezeichner* nicht zulässig.

### Beispiel

’ ’ goto nochmal’ ’
## Gosub / Return

### Format

gosub *Spungmarke* \<br\>…\<br\>return

### Beschreibung

Springt zu Sprungmarke *Marke*. Beim nächsten auf *Marke* folgenden RETURN-Befehl wird die Programmausführung in der unmittelbar auf das GOSUB folgenden Zeile fortgesetzt. GOSUB-Befehle können geschachtelt werden.
## Graphheight

### Format

graphheight\
graphheight()

### Description

Returns the height (y dimension) of the current graphics display window.

### See Also

[Graphsize](./graphsize.md), [Graphwidth](./graphwidth.md)

### New To Version

0.9.3
## Graphsize

### Format

graphsize *x_expression*, *y_expression*

### Description

Changes the size of the graphics display window and redraws the BASIC256 application.

### See Also

[Graphheight](./graphheight.md), [Graphwidth](./graphwidth.md)

### New To Version

0.9.3
## Graphwidth

### Format

graphwidth\
graphwidth()

### Description

Returns the width (x dimension) of the current graphics display window.

### See Also

[Graphheight](./graphheight.md), [Graphsize](./graphsize.md)

### New To Version

0.9.3
## Hour

### Format

hour\
hour()

### Description

Returns the current system clock’s hour of the day (0-23).

### Example

    # display nice date
    dim months$(12)
    months$ = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
    print year + "-" + months$[month] + "-" + right("0" + day, 2)
    # display pretty time
    h = hour
    if h > 12 then
    h = h - 12
    ampm$ = "PM"
    else
    ampm$ = "AM"
    end if
    if h = 0 then h = 12
    print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$

Will print something like.\

    2010-July-15
    10-00-02 PM

### See Also

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

### New To Version

0.9.4
## Instr

### Format

instr *Zeichenkette1*, *Zeichenkette2*

### Beschreibung

Prüft, ob *Zeichenkette2* in *Zeichenkette1* enthalten ist. Wenn ja, wird der Index des Anfangszeichens des ersten Vorkommens von *Zeichenkette2* zurückgeliefert. Anderenfalls gibt der Befehl 0 zurück.

### Note

Alle Indexe/Positionen innerhalb von Zeichenketten beginnen mit 1.

### Beispiel

’ ’ Die Zeile

    print instr("Hallo", "lo")

gibt

    4

im Textfenster aus.’ ’
## Int

### Format

int ( *Ausdruck* )

int ( *Zeichenkettenausdruck* )

### Beschreibung

Umwandlung in eine ganze Zahl (Integer). Int() schneidet die Dezimalstellen einer Fließkommazahl ab oder wandelt eine Zeichenkette (String) in eine ganze Zahl um.

### Beispiel

    c$ = "12a" : i = int(c$)

    print c$
    print i

### Ausgabe

    12a
    12
## If / Then

### Format

if *LogischerAusdruck* then *Befehl*

### Beschreibung

Wertet *Log. Ausdruck* aus. Wenn der Ausdruck **wahr** ist (true), dann wird *Befehl* ausgeführt. Wenn er **falsch** (false) ist, wird *Befehl* ignoriert und die Programmauführung bei der nächsten Zeile fortgesetzt.

### Note

Vergleichsoperatoren sind =,\<\>,\<,\>,\<=,\>=. Logische Verknüpfungen sind mittels AND und OR möglich.

### Beispiel

’ ’ if a \<\> b then goto ende’ ’
## Imgload

### Format

**imgload** *x*, *y*, *filename*\
**imgload** *x*, *y*, *scale*, *filename*\
**imgload** *x*, *y*, *scale*, *rotation*, *filename*\

### Description

Load an image or picture from a file and paint it on the Graphics Output Window.\
The parameters *x* and *y* represent the location on the screen for the CENTER of the loaded image. This behaviour is different than all of the other graphics statements. The axis of rotation will also be this CENTER point.\\The Imgload starement will read in most common image file formats including: BMP (Windows Bitmap), GIF (Graphic Interchange Format),JPG/JPEG (Joint Photographic Experts Group), and PNG (Portable Network Graphics).\
Optionally scales size of the loaded image by the defined scale (1=normal size). Also optionally rotates the image by a specified angle around the images center (clockwise in radians).

### New To Version

0.9.6l## Input

### Format

input *Zeichenkette*, *Stringvariable*

### Beschreibung

Gibt *Zeichenkette* aus und erwartet eine Texteingabe im Textfenster. Die Eingabe muß mit der Eingabe-Taste abgeschlossen werden. Die eingelesene Zeile wird in Variable *Stringvariable* gespeichert.

### Beispiel

’ ’ input “Bitte gib Deinen Namen ein: ”, name\$’ ’
## Key

### Format

key

### Beschreibung

Liefert sofort den zur gerade gedrückten Taste gehörenden ganzzahligen Wert zurück. Wenn keine Taste gedrückt ist, wird der Wert 0 zurückgeliefert

### Note

Dieses Programmstück \\

    if key = 47 then print key

tut nicht das gewünschte, denn der KEY-Befehl wird 2 Mal hintereinander aufgerufen, liefert im allgemeinen also 2 verschiedene Werte zurück. Richtig müßte der Quelltext so aussehen: \\

    a = key
    if a = 47 then print a
## LastError

### Format

**lasterror**\
**lasterror** ( )

### Description

Returns the last runtime error number.

### Example

See example of usage on [Error Codes](./errorcodes.md) page.

### See Also

[Error Codes](./errorcodes.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### New To Version

0.9.6z
## LastErrorExtra

### Format

**lasterrorextra**\
**lasterrorextra** ( )

### Description

Returns statement specific “extra” information about the error.

### Example

See example of usage on [Error Codes](./errorcodes.md) page.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### New To Version

0.9.6z
## LastErrorLine

### Format

**lasterrorline**\
**lasterrorline** ( )

### Description

Returns the line number in the program where the runtime error happened.

### Example

See example of usage on [Error Codes](./errorcodes.md) page.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### New To Version

0.9.6z
## LastErrorMessage

### Format

**lasterrormessage**\
**lasterrormessage** ( )

### Description

Returns a string representing the last runtime error.

### Example

See example of usage on [Error Codes](./errorcodes.md) page.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### New To Version

0.9.6z
## Left

### Format

left( *string*, *length*)

### Description

Returns a portion of the specified *string*, starting from the first character on the left and continuing for *length* characters.

### See Also

[Mid](./mid.md), [Right](./right.md)

### Example

    print left("Hello", 2)

will display

    He

### New To Version

0.9.5b
## Length

### Format

length ( *Zeichenkette* )

### Beschreibung

Liefert die Anzahl von Zeichen in *Zeichenkette* zurück.

### Beispiel

’ ’ i = length( “Hallo” ) rem i ist 5’ ’
## Line

### Format

line *x0*, *y0*, *x1*, *y1*

### Beschreibung

Zeichnet eine Linie von Punkt x0,y0 zu Punkt x1, y1.

### Beispiel

’ ’ line 0,0,299,299’ ’
## Log

### Format

log ( *expression* )

### Description

Return the base *e* lograthim of *expression*.

### See Also

[Log10](./log10.md)

### New To Version

0.9.5w
## Log10

### Format

log10 ( *expression* )

### Description

Return the base *10* lograthim of *expression*.

### See Also

[Log](./log.md)

### New To Version

0.9.5w
## Lower

### Format

**lower**( *string*)

### Beschreibung

Wandelt die Buchstaben eines *string* in Kleinbuchstaben um.

### Siehe auch

[Upper](./upper.md)

    print lower("BlaU!")

Ausgabe

    blau!

### Neu ab Version

0.9.5e
## Mid

### Format

mid ( *Zeichenkette*, *Startindex*, *Länge* )

### Beschreibung

Gibt ein *Länge* Zeichen langes Teilstück der *Zeichenkette* zurück, startend bei*Startindex*.

### Beispiel

’ ’ Die Zeile

    print mid("Hello", 2, 3)

gibt im Textfenster

    ell

aus.’ ’
## Minute

### Format

**minute**\
**minute**()

### Description

Returns the current system clock’s minute of the hour (0-59).

### Example

    # display nice date
    dim months$(12)
    months$ = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
    print year + "-" + months$[month] + "-" + right("0" + day, 2)
    # display pretty time
    h = hour
    if h > 12 then
    h = h - 12
    ampm$ = "PM"
    else
    ampm$ = "AM"
    end if
    if h = 0 then h = 12
    print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$

Will print something like.\

    2010-July-15
    10-00-02 PM

### See Also

[Day](./day.md), [Hour](./hour.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

### New To Version

0.9.4
## Month

### Format

**month**\
**month**()

### Description

Returns the current system clock’s month. January is 0, February is 1… December is 11.

### See Also

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Second](./second.md), [Year](./year.md)

### Example

    cls
    dim n$(12)
    n$ = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
    print day + "-" + n$[month] + "-" + year

on New Years will display

    1-Jan-2010

### New To Version

0.9.4
## Mouseb

### Format

**mouseb**\
**mouseb**()

### Description

Returns the buttons that currently pressed on the mouse (if over the graphic output). Returns 0 if no click has been recorded. If multiple buttons have been pressed the value is the sum of the values for all pressed buttons.

| Return Values |                      |
|---------------|----------------------|
| Value         | Mouse Button Pressed |
| 0             | None                 |
| 1             | Left                 |
| 2             | Right                |
| 4             | Center               |

### See Also

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### New To Version

0.9.4d
## Mousex

### Format

**mousex**\
**mousex**()

### Description

Returns the current or last mouse x location of the mouse pointer over the graphic output.

### See Also

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousey](./mousey.md)

### New To Version

0.9.4d
## Mousey

### Format

**mousey**\
**mousey**()

### Description

Returns the current or last mouse y location of the mouse pointer over the graphic output.

### See Also

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md)

### New To Version

0.9.4d
## NetClose

### Format

**netclose**\
**netclose** ( )\
**netclose** *socket_number*\
**netclose** ( *socket_number* )

### Description

Close the specified network connection (socket). If *socket_number* is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31
## NetConnect

### Format

**netconnect** *server_name*, *port_number*\
**netconnect** ( *server_name*, *port_number* )\
**netconnect** *socket_number*, *server_name*, *port_number*\
**netconnect** ( *socket_number*, *server_name*, *port_number* )

### Description

Open a network connection (client) to a server. The IP address or host name of a server are specified in the *server_name* argument, and the specific network port number in the *port_number* argument. If *socket_number* is not specified socket number zero (0) will be used.

### Example

Open two instances of BASIC-256 on a single computer. Paste the “server” code into one and the “client” code into the other. Run the server first and the client second. You can see how the messages are sent back and forth between the two different processes.

#### Server Code

    # get a message and send back success
    print "wait for connection"
    netlisten 9997
    print "got connection"
    do
       while not netdata
          pause .1
          print ".";
       end while
       n$ = netread
       print n$
       netwrite "I got '" + n$ + "'."
    until n$ = "end"
    netclose

will display

    wait for connection
    got connection
    .1 Hi There
    ....2 Hi There
    ........3 Hi There
    ..........4 Hi There
    .....5 Hi There
    .......6 Hi There
    ....7 Hi There
    ..........8 Hi There
    ....9 Hi There
    .....10 Hi There
    .end

#### Client Code

    # have the user enter a message and send it to the server
    input "enter message?", m$
    netconnect "127.0.0.1", 9997
    for t = 1 to 10
       pause rand
       netwrite t + " " + m$
       print netread
    next t
    netwrite "end"
    print netread
    netclose

will display

    enter message?Hi There
    I got '1 Hi There'.
    I got '2 Hi There'.
    I got '3 Hi There'.
    I got '4 Hi There'.
    I got '5 Hi There'.
    I got '6 Hi There'.
    I got '7 Hi There'.
    I got '8 Hi There'.
    I got '9 Hi There'.
    I got '10 Hi There'.
    I got 'end'.

### See Also

[NetClose](./netclose.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31
## NetData

### Format

**netdata**\
**netdata** ( )\
**netdata** *socket_number*\
**netdata** ( *socket_number* )

### Description

Returns a true value (1) of there is data waiting to be read in using the [NetRead](./netread.md) function, else returns false (0). If *socket_number* is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31
## NetListen

### Format

**netlisten** *port_number*\
**netlisten** ( *port_number*)\
**netlisten** *socket_number*, *port_number*\
**netlisten** ( *socket_number*, *port_number*)

### Description

Open up a network connection (server) on a specific port address and wait for another program to connect. If *socket_number* is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31
## NetRead

### Format

**netread**\
**netread** ( )\
**netread** ( *socket_number* )

### Description

Read data from the specified network connection and return it as a string. This function will wait until data is received. If *socket_number* is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31
## NetWrite

### Format

**netwrite** *string*\
**netwrite** ( *string* )\
**netwrite** *socket_number*, *string*\
**netwrite** ( *socket_number*, *string* )

### Description

Send a string to the specified open network connection. If *socket_number* is not specified socket number zero (0) will be used.

### Example

See example of usage on [NetConnect](./netconnect.md) page.

### See Also

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md)

### New To Version

0.9.6.31
## Open

### Format

open *Dateiname*

### Beschreibung

Öffnet eine Datei zum Lesen und Schreiben. Der *Dateiname* muß als Zeichenkette angegeben werden

              und kann eine absolute oder relative Pfadangabe enthalten.

### Note

Zu einem gegebenen Zeitpunkt kann nur eine Datei geöffnet sein. Wenn eine neue Datei geöffnet wird, während eine andere Datei bereits offen ist, wird diese andere Datei geschlossen.

### Siehe auch

Close, Read, Write, Reset
## OffError

### Format

**offerror**

### Description

Turns off error trapping and restores the default error behavior.

### Example

See example of usage on [Error Codes](./errorcodes.md) page.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Onerror](./onerror.md)

### New To Version

0.9.6z
## OnError

### Format

**onerror** *label*

### Description

Causes the subroutine at *label* to be executed when an runtime error occurs. Program control may be resumed at the next statement with a [Return](./gosubreturn.md) statement in the subroutine.

### Example

See example of usage on [Error Codes](./errorcodes.md) page.

### See Also

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md)

### New To Version

0.9.6z
## Pause

### Format

pause *Sekunden*

### Beschreibung

Hält die Programmausführung für die angegebene Anzahl Sekunden an. Der *Sekunden*-Wert kann eine Fließkommazahl sein, damit sind auch Pausen kleiner als eine Sekunde möglich.

### Beispiel

’ ’ pause 0.1’ ’
## Pixel

### Format

**pixel** (*x*, *y* )

### Description

Returns the RGB value of the pixel at the *x* and *y* coordinate. If the pixels has not been set since the last [Clg](./clg.md) command or was drawn with the color CLEAR a -1 will be returned.

### See Also

[Rgb](./rgb.md)

### New To Version

0.9.5m
## Plot

### Format

plot *x*, *y*

### Beschreibung

Gibt dem Pixel an der Koordinatenposition *x*,*y* im Grafikfenster die aktuelle Farbe.

### Beispiel

’ ’ plot 10,10’ ’
## Poly

### Format

poly *Feld*

### Beschreibung

Zeichnet ein Polygon. Die Seiten des Polygons werden durch die Werte im Feld bestimmt, welche immer abwechselnd x-Werte und y-Werte sein sollten.

### Beispiel

’ ’ dim a(6)\<br\> …\<br\>poly a’ ’
## Print

### Format

print *Ausdruck* \[ ; \]

### Beschreibung

Gibt einen Text im Textfenster aus, gefolgt von einem Zeilenumbruch. Wenn das optionale Semikolon am Ende vorhanden ist, erfolgt kein Zeilenumbruch.

### Beispiel

’ ’ print “Hallo ”; : print“Du !”’ ’
## PutSlice

### Format

**putslice** *x*, *y*, *slice\$*\
**putslice** *x*, *y*, *slice\$*, *transparent color*

### Description

Put the graphics stored in the slice string on the screen at x,y. If a transparent color is specified then do not plot points of that color in the slice.

### See Also

[GetSlice](./getslice.md)

### New To Version

0.9.6b
## Radians

### Format

**radians** ( *expression* )

### Description

<img src="/en/radians.png" class="align-right" alt="radians.png" />
Converts an angle in degrees to radians.\

### See Also

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Sin](./sin.md), [Tan](./tan.md)
## Rand

### Format

rand

### Beschreibung

Liefert eine Zufallszahl zwischen 0 und 1 zurück. Die Werteverteilung ist gleichförmig.

### Note

Um Zufallszahlem mit einem anderen Wertebereich zu erzeugen, können die notwendigen Zahlen zum RAND-Ergebnis addiert oder damit multipliziert werden. Um zum Beispiel eine ganzahlige Zufallszahl zwischen 0 und 10 (einschließlich) zu erzeugen, kann int(rand \* 10) benutzt werden.
## Read

### Format

read

### Beschreibung

Liest einen Token von der gerade geöffneten Datei ein und gibt ihn zurück. Ein Token ist jegliche Zeichenkette, die mit einem Leerzeichen, einem Tabulator oder dem Zeilenende endet.

### Siehe auch

Open, Close, Write, Reset
## Readline

### Format

**readline**\
**readline**()\
**readline**(*filenumber*)

### Description

Reads and returns an entire line from an open file. If the file number is not specified file number zero (0) will be used.

### See Also

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)
## Rect

### Format

rect *x*,*y*,*b*,*h*

### Beschreibung

Zeichnet ein mit der aktuellen Farbe ausgefülltes Rechteck mit der Höhe *h* Pixel und der Breite *b* Pixel. Die obere linke Ecke hat die Koodinaten *x*,*y*.
## Redim

### Format

**redim** *numericvariable*( *integer* )\
**redim** *stringvariable\$*( *integer* )\
**redim** *numericvariable*( *rows* , *columns* )\
**redim** *stringvariable\$*( *rows* , *columns* )

### Description

Re-sizes a previously created array, preserving data. If an array is enlarged then the new elements will be initialized with zero or the empty string. If an array is reduced in size the elements trimmed from the end are lost.

### See Also

[Dim](./dim.md)

### New To Version

0.9.5t
## Refresh

### Format

refresh

### Beschreibung

Aktualisiert das Grafikfenster mit allen Grafikbefehlen, die seit dem vorherigen REFRESH abgesetzt wurden. REFRESH funktioniert nur im FastGraphics-Modus.
## Rem

### Format

rem //Kommentar

### Beschreibung

Steht am Anfang einer Kommentarzeile. Zeilen, die mit REM beginnen, werden bei der Programmausführung ignoriert.
## Reset

### Format

reset

### Beschreibung

Löscht den Inhalt der aktuell geöffneten Datei. Der Inhalt der Datei geht verloren.

### Siehe auch

Open, Read, Close, Write
## Rgb

### Format

**rgb**(*red*, *green*, *blue* )

### Description

Returns the RGB value of the color made up of the red, green, and blue components. Legal values for red, greem, and blue are 0 to 255.

### See Also

[Color](./color.md), [GetColor](./getcolor.md), [Pixel](./pixel.md)

### New To Version

0.9.5m
## Right

### Format

**right**( *string*, *length*)

### Description

Returns a portion of the specified *string*, starting from the last *length* characters from the right end of the of the string.

### See Also

[Mid](./mid.md), [Left](./left.md)

### Example

    print right("Hello", 2)

will display

    lo

### New To Version

0.9.5b
## Say

### Format

**say** *expression*
**say** ( *expression* )

### Description

Uses the the system Text to Speech (TTS) engine to say the *expression*. In LINUX the FLite or eSpeak libraries are required. In Windows the current default SAPI voice will be used.

### New To Version

0.9.4
## Second

### Format

**second**\
**second**()

### Description

Returns the current system clock’s second of the current minute (0-59).

### Example

    # display nice date
    dim months$(12)
    months$ = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
    print year + "-" + months$[month] + "-" + right("0" + day, 2)
    # display pretty time
    h = hour
    if h > 12 then
    h = h - 12
    ampm$ = "PM"
    else
    ampm$ = "AM"
    end if
    if h = 0 then h = 12
    print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$

Will print something like.\

    2010-July-15
    10-00-02 PM

### See Also

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Year](./year.md)

### New To Version

0.9.4
## Seek

### Format

**seek** *location*\
**seek** ( *location* )\
**seek** *filenumber*, *location*\
**seek** ( *filenumber*, *location* )

### Description

Moves the read/write location to a specific location (offset in bytes from the start of the file) within an open file. If the file number is not specified file number zero (0) will be used.

### See Also

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Size](./size.md)

### New To Version

0.9.4
## Sin

### Format

sin ( *Ausdruck* )

### Beschreibung

Berechnet den Sinus von *Ausdruck*. *Ausdruck* muss ein Bogenmaß sein.

### Note

Die sin-Funktion liefert kein besonders genaues Ergebnis.

### Siehe auch

Cos, Tan

### Beispiel

’ ’ s = sin( 2\*PI\*deg/360)’ ’
## Size

### Format

**size**\
**size()**\
**size**(*filenumber*)

### Description

Returns the length, in bytes, of an opened file. If the file number is not specified file number zero (0) will be used.

### See Also

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md)

### New To Version

0.9.4
## Sound

### Format

**sound** *frequency*, *duration*\
**sound** ( *frequency*, *duration* )\
**sound** ( *array* )\
**sound** *array*\
**sound** {frequency1, duration1, frequency2, duration2, …}

### Description

Play a sound from the computer’s speakers.Frequency is expressed in Hz and duration is expressed in milliseconds (1000 in a second). An array or list containing frequency and durations may also be passed. This eliminates any clicking between sounds when more than one is being output sequentially.
Sound support for LINUX systems was added in version 0.9.5g. Sound was changed to use the default sound device in Windows in version 0.9.5h

### See Also

[Volume](./volume.md)
## Spritecollide

### Format

**spritecollide** ( *sprite1*, *sprite2*)

### Description

Function returns true if the two sprites are colliding. The Spritecollide function assumes that the sprites are bounded by a rectangle the size of the loaded image. Collision is calculated by using these rectangles. For round or oddly shaped sprites this function may over detect collision.

### See Also

[Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spritedim

### Format

**spritedim** *n*\
**spritedim** ( *n* )

### Description

Create *n* sprite placeholders in memory. Sprites are accessed in your program by a sprite number from 0 to n-1.

### See Also

[Spritecollide](./spritecollide.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spriteh

### Format

**spriteh** ( *spritenumber* )

### Description

Returns the height, in pixels, of a loaded sprite.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spritehide

### Format

**spritehide** *spritenumber*
**spritehide** ( *spritenumber* )

### Description

Hides a sprite. All image and position information is retained.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spriteload

### Format

**spriteload** *spritenumber*, *filename*\
**spriteload** ( *spritenumber*, *filename* )

### Description

Load an image or picture from a file and save it as a sprite. The sprite will be active and movable but will not display on the screen until the Spriteshow statement is executed for that sprite.\\The Spriteload statement will read in most common image file formats including: BMP (Windows Bitmap), GIF (Graphic Interchange Format),JPG/JPEG (Joint Photographic Experts Group), and PNG (Portable Network Graphics).

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spritemove

### Format

**spritemove** *spritenumber*, *dx*, *dy*\
**spritemove** ( *spritenumber*, *dx*, *dy* )

### Description

Move a sprite from its current position by the specified number of pixels. Motion will be limited to the current screen.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spriteplace

### Format

**spriteplace** *spritenumber*, *x*, *y*\
**spriteplace** ( *spritenumber*, *x*, *y* )

### Description

Place the center of a sprite at a specific location on the screen. Like [Imgload](./imgload.md) sprite positioning is relative to the center of the sprite and not the top left corner as with most other graphical statements.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spriteshow

### Format

**spriteshow** *spritenumber*\
**spriteshow** ( *spritenumber* )

### Description

Show a hidden sprite.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spriteslice

### Format

**spriteslice** *spritenumber*, *x*, *y*, *width*, *height*\
**spriteslice** ( *spritenumber*, *x*, *y*, *width*, *height* )

### Description

Copy the rectangular region of the screen with it’s top left corner represented by *x* and *y* of the specified *height* and *width* and create a sprite. The sprite will be active and movable but will not be visible until the Spriteshow statement is executed. It is recommended that you execute the [Clg](./clg.md) command before drawing and slicing the sprite. All unpainted pixels will be transparent when the sprite is drawn on the screen. Transparent pixels may also be set by drawing with the color CLEAR.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6o
## Spritev

### Format

**spritev** ( *spritenumber* )

### Description

Returns true if the sprite is visible.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6o
## Spritew

### Format

**spritew** ( *spritenumber* )

### Description

Returns the width, in pixels, of a loaded sprite.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spritex

### Format

**spritex** ( *spritenumber* )

### Description

Returns the x coordinate of the center of a loaded sprite.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spritey

### Format

**spritey** ( *spritenumber* )

### Description

Returns the y coordinate of the center of a loaded sprite.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md)

### New To Version

0.9.6n
## Stamp

### Format

**stamp** *x*, *y*, *array*\
**stamp** *x*, *y*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *scale*, *array*\
**stamp** *x*, *y*, *scale*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *scale*, *rotation*, *array*\
**stamp** *x*, *y*, *scale*, *rotation*, {x1, y1, x2, y2, x3, y3 …}

### Description

Draws a polygon with top left corner (origin) at x, y. Optionally scales size of polygon by the defined scale (1=normal size). Also optionally rotates the polygon by a specified angle around the origin (clockwise in radians). The sides of the polygon are defined by the values in an array, which should be stored as x,y pairs, sequentially. The length of the array/2 will define the number of points. A stamped polygon can also be specified using a list of x,y pairs enclosed in curly braces {}.

### See Also

[Poly](./poly.md)

### Example

Both of the code blocks below will draw a pair of green triangles on the graphics window:

    clg
    color blue
    rect 0,0,300,300
    color green
    dim tri(6)
    tri = {0, 0, 100, 100, 0, 100}
    # stamp the triangle at 0,0 (full size)
    stamp 100, 100, tri
    # stamp the triangle at 200,100 (half size)
    stamp 200, 100, .5, tri

    clg
    color blue
    rect 0,0,300,300
    color green
    # stamp the triangle at 0,0 (full size)
    stamp 100, 100, {0, 0, 100, 100, 0, 100}
    # stamp the triangle at 200,100 (half size)
    stamp 200, 100, .5, {0, 0, 100, 100, 0, 100}

Both programs will draw:\
![stamp.png](@site/static/img/wiki/en/stamp.png)

### New To Version

0.9.4
## String

### Format

string ( *Ausdruck* )

### Beschreibung

Liefert die Zahl *Ausdruck* als Zeichenkette zurück.

### Beispiel

’ ’ s\$ = string(12\*13) rem s\$ ist “156”’ ’
## System

### Format

**system** *expression*\
**system** ( *expression* )

### Description

Execute a system command in a terminal window. WARNING: This can be a very dangerous statement. Only use it if you know what you are doing.

### New To Version

0.9.5h
## Tan

### Format

tan ( *Ausdruck* )

### Beschreibung

Berechnet den Tangens von *Ausdruck*. *Ausdruck* muss ein Bogenmaß sein.

### Note

Die tan()-Funktion liefert kein besonders genaues Ergebnis.

### Siehe auch

Sin, Cos

### Beispiel

’ ’ t = tan( 2\*PI\*deg/360 )’ ’
## Text

### Format

**text** *x*, *y*, *string*\
**text** ( *x*, *y*, *string* )

### Description

Paints a text string on the Graphics Output Window at *x*, *y* using the current color and font.

### Example

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"
    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Will draw.\
![fonttext.png](@site/static/img/wiki/en/fonttext.png)

### See Also

[Color](./color.md), [Font](./font.md)

### New To Version

0.9.4
## Upper

### Format

**upper** ( *string* )

### Beschreibung

Wandelt die Buchstaben eines *string* in Großbuchstaben um.

### Siehe auch

[Lower](./lower.md)

### Beispiel

    print upper("BlaU!")

Ausgabe

    BLAU!

### Neu ab Version

0.9.5e
## Volume

### Format

**volume** *level*\
**volume** ( *level* )

### Description

Adjust the volume of the notes played with the [Sound](./sound.md) command. Volume *levels* must be numeric values from 0 to 10. The default volume is 5.

### See Also

[Sound](./sound.md)

### New To Version

0.9.5i
## WAVplay

### Format

**wavplay** *filename*\
**wavplay** ( *filename* )

### Description

Play WAV audio file asynchronously (in the background).

### See Also

[WAVstop](./wavstop.md) [WAVwait](./wavwait.md)

### New To Version

0.9.4
## WAVstop

### Format

**wavstop**

### Description

Stop playing the current asynchronous (background) WAV audio file.

### See Also

[WAVplay](./wavplay.md) [WAVwait](./wavwait.md)

### New To Version

0.9.4
## While / End While

### Format

**while** *booleanexpression*\
*statement(s)*\
**end while**

### Description

Execute the *statement(s)* inside the while loop until the *booleanexpression* evaluates to false. While / End While executes the statements zero or more times. The test is done before the code in the loop is executed.

### See Also

[Do / Until](./dountil.md), [For / Next](./fornext.md)

### Example

    r = 1
    while r < 6
      print r
      r = r + 1
    end while

will display

    1
    2
    3
    4
    5

### New To Version

0.9.4g
## Write

### Format

write *Zeichenkette*

### Beschreibung

Schreibt die *Zeichenkette* an das Ende der aktuell geöffneten Datei.

### Siehe auch

Open, Read, Close, Reset## Writeline

### Format

**writeline** *string*\
**writeline** ( *string* )\
**writeline** *filenumber*, *string*\
**writeline** ( *filenumber*, *string* )

### Description

Writes *string* append with a newline character to the end of an open file. If the file number is not specified file number zero (0) will be used.

### See Also

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### New To Version

0.9.4
## Year

### Format

**year**\
**year** ( )

### Description

Returns the current system clock’s 4 digit year.

### See Also

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md)

### Example

    print "today's date is ";
    print (month + 1) + "/" + day + "/" + year

will display

    today's date is 11/30/2009

### New To Version

0.9.4
