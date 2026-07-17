---
title: "Read"
sidebar_label: "Read"
---

## Read

### Formaat

**read**\
**read**()\
**read**(*bestandsnr*)

### Beschrijving

Deze functie leest het bestand en geeft een token terug. Een token is een string van karakters die opgeslplitst zijn door een spatie, tab of nieuwe lijn opdracht, je krijgt dus alles in stukjes binnen. Telkens je dus een *spatie*,*tab* of *nieuwe lijn* tegenkomt.

Specifieer je geen bestandnummer dan gebruikt de functie bestandnr 0.

### Voorbeeld

``` basic4gl
((prorgamma gevonden in /home/.../basic/Examples/testing))  
# testlineio.kbs - test readline, writeline, and eof
# 2008-08-29 jmr

open "foo.txt"
reset
for l = 1 to 8
    writeline "Data file line " + l + "."
next l


l = 0
donext:
if eof then goto done
l = l + 1
a$ = read
print "line " + l + "=" + a$
goto donext

done:
print "total of " + l + " lines."
close
end
```

Dir programma opent eerst Foo.txt, maakt het leeg en schrijft er dan 8 regels in. VErvolgens wordt elke lijn uitgelezen als token in variable a\$ en uitgeschreven op het scherm. Dit ziet er dan zo uit:
++++Resultaat\|

    line 1=Data
    line 2=file
    line 3=line
    line 4=1.
    line 5=Data
    line 6=file
    line 7=line
    line 8=2.
    line 9=Data
    line 10=file
    line 11=line
    line 12=3.
    line 13=Data
    line 14=file
    line 15=line
    line 16=4.
    line 17=Data
    line 18=file
    line 19=line
    line 20=5.
    line 21=Data
    line 22=file
    line 23=line
    line 24=6.
    line 25=Data
    line 26=file
    line 27=line
    line 28=7.
    line 29=Data
    line 30=file
    line 31=line
    line 32=8.
    total of 32 lines.

++++

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./open.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./readline.md)
