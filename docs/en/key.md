---
title: "Key"
sidebar_label: "Key"
---

## Key (Function)

### Format

key\
key()\
key([getUnicode](./booleanexpressions.md))

returns [integer_expression](./integerexpressions.md)

### Description

Immediately returns an integer value corresponding to the currently pressed keyboard key (if the argument is omitted or false), returns the Unicode character number if the argument is true. If no key has been pressed since the last call to the **key** function then the number zero (0) will be returned.

In Unicoide mode the key function will not return keypresses like backspace, escape, arrows, shift, alt, or the control keys. It will return upper/lowercase letters.

### Note

    if key = 47 then print key

will not display the desired results, because it’s calling key twice in succession, and will return different values each time. This code will do what you want:

    a = key
    if a = 47 then print a

### Partial List of Keys

|  |  |  |  |  |  |  |  |
|----|----|----|----|----|----|----|----|
| ESC=16777216 | Space=32 |  |  |  |  |  |  |
| 0=48 | 1=49 | 2=50 | 3=51 | 4=52 | 5=53 | 6=54 | 7=55 |
| 8=56 | 9=57 |  |  |  |  |  |  |
| A=65 | B=66 | C=67 | D=68 | E=69 | F=70 | G=71 | H=72 |
| I=73 | J=74 | K=75 | L=76 | M=77 | N=78 | O=79 | P=80 |
| Q=81 | R=82 | S=83 | T=84 | U=85 | V=86 | W=87 | X=88 |
| Y=89 | Z=90 |  |  |  |  |  |  |
| Down Arrow=16777237 | Up Arrow=16777235 | Left Arrow=16777234 | Right Arrow=16777236 |  |  |  |  |

[Click here for a complete list of key values](http://qt-project.org/doc/qt-4.8/qt.html#Key-enum)

### Example

    #press any keys
    loop:
    pause 1
    a = key
    print a+"  "+chr(a)
    goto loop

### Example

    # get unicode letters until you press a control x
    while true
        k = key(true)
        if k <> 0 then
            print k, chr(k)
            if k = 24 then exit while
        endif
        pause .1
    end while

### See Also

[Alert](./alert.md), [Confirm](./confirm.md), [Input](./input.md), [Input Float](./input.md), [Input Integer](./input.md), [Input String](./input.md), [Key](./key.md), [Keypressed](./keypressed.md), [Prompt](./prompt.md)

### History

|          |                                           |
|----------|-------------------------------------------|
| 2.0.0.11 | added optional Unicode character argument |
