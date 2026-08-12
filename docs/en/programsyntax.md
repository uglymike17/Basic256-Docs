---
title: "Program Syntax"
sidebar_label: "Program Syntax"
---

## Program Syntax

A BASIC256 program is a list of statements, normally one per line, run from top to bottom until the program reaches [end](./end.md) or runs off the last line. Blank lines are allowed and ignored.

This page covers the punctuation and line rules of the language, and — most usefully if you already know another BASIC — the handful of places where BASIC256 does things differently. Comments, [maps](#maps-associative-arrays), and [color](#color-pen-and-brush) are the ones most likely to surprise you. Where a topic has its own reference page it is linked.

## Comments

A comment is text the interpreter ignores. Start one with `#` or with [rem](./rem.md); it runs to the end of the line.

    # this whole line is a comment
    rem so is this one
    print "hello"      # a comment may follow a statement
    print "world"      : rem  ...or after a ":" like this

Two things trip up people coming from other BASIC dialects:

- **The apostrophe `'` is *not* a comment.** In BASIC256 it is a second way to write a string, so `'abc'` is exactly the same value as `"abc"`. If you type `x = 5  ' set x` expecting a comment, the `' set x '`-style text is parsed as a string, not ignored. Use `#` instead.
- **`//` is not a comment either.** BASIC256 only recognises `#` and `rem`.

## Statements, lines, and compound statements

Normally each statement sits on its own line. You can, however, put several statements on one line by separating them with a `:` (colon). This is called a *compound statement*.

    total = 0 : for t = 1 to 10 : total = total + t : next t : print total

`?` is a shorthand for [print](./print.md), which is handy on compound lines and in quick tests:

    ? "x is " ; x        # same as: print "x is " ; x

Take care mixing a single-line [if](./if.md) into a compound line. The one-line form `if condition then statement` treats the rest of the line as the *then* part, so statements you meant to run unconditionally after a `:` can get pulled inside the `if`. When in doubt use the block form on its own lines:

    if score > 100 then
        print "you win"
    end if

## Labels

A line may begin with a *label*: a name followed immediately (no space) by a colon. Labels are the destination for [goto](./goto.md), [gosub](./gosub.md), and [onerror](./onerror.md). Unlike classic BASICs, BASIC256 has **no line numbers** — you name the places you want to jump to. Label names are case sensitive.

    print "before"
    gosub display
    print "after"
    end

    display:  print "in the subroutine"
    return

## Maps (associative arrays)

This is the difference most likely to catch out programmers arriving from other languages. In many languages `map` means "apply a function to every element of a list." In BASIC256 [map](./map.md) is a **statement that declares an associative array** — a dictionary/hash whose elements are looked up by a *string* key instead of a numeric index.

Declare the variable with `map`, then assign and read elements with a string subscript:

    map ages
    ages["alice"] = 30
    ages["bob"]   = 42

    print ages["alice"]        # 30
    print length(ages)         # number of keys -> 2

Iterate with [for each](./foreach.md). The loop variable receives each **key**, and keys are visited in sorted order:

    for each name in ages
        print name + " is " + ages[name]
    next name

Reading a key that was never set is *unassigned*; test for it with [assigned](./assigned.md) or [typeof](./typeof.md), and remove a key with `unassign`:

    if assigned(ages["carol"]) then print ages["carol"]
    unassign ages["bob"]

Keep the two kinds of collection straight: a plain array made with [dim](./dim.md) is indexed by integers starting at 0, while a `map` is indexed by strings. (Both accept `[?]` to ask for their size — see [below](#other-differences-at-a-glance).)

## Color (pen and brush)

BASIC256's [color](./color.md) statement is richer than the text-mode `COLOR foreground, background` of older BASICs, which chose from a small fixed palette. Here `color` sets the graphics **pen** (the outline of shapes and the color of points and lines) and the **brush** (the fill of closed shapes) from the full 32-bit ARGB range.

- **One value sets both** the pen and the brush to that color.
- **Two values set them separately**: `color pen, brush`.

A color may be given five ways:

1. a built-in constant such as `RED`, `DARKBLUE`, `WHITE`, or `CLEAR`, written bare (no quotes);
2. an integer ARGB value, where the packed value is `((a * 256 + r) * 256 + g) * 256 + b` and each component runs 0–255 (`a` = 0 transparent … 255 opaque);
3. the [rgb](./rgb.md) function with 3 or 4 numbers, e.g. `rgb(255, 160, 160)`;
4. an SVG color-name string such as `"firebrick"` or `"papayawhip"`;
5. a hex string, `"#rrggbb"` or `"#aarrggbb"`, e.g. `"#fab856"`.

**Constants are bare, SVG names are strings.** Only the built-in constants of
point 1 are written as plain words. An SVG color name is a *string* and must be
in double quotes:

    color red            # built-in constant -- no quotes
    color "firebrick"    # SVG color name -- quotes required

Leaving the quotes off is not a syntax error, which is what makes the mistake
easy to miss: `color firebrick` reads `firebrick` as a *variable* name rather
than a color, so the program runs on without setting the color you intended.

    clg
    color rgb(128, 128, 128)
    rect 0, 0, graphwidth, graphheight

    penwidth 5
    color green, red             # green outline, red fill
    circle 100, 100, 50

    color "firebrick", "#fab856" # SVG name + hex string
    rect 150, 150, 100, 100

    color "papayawhip", "clear"  # brush CLEAR -> not filled
    rect 175, 175, 100, 100

`CLEAR` is special: a `CLEAR` brush draws an unfilled shape, and setting **both** pen and brush to `CLEAR` erases pixels back to transparent — useful when building sprites. Use [getcolor](./getcolor.md) and [getbrushcolor](./getbrushcolor.md) to read the current values back.

**Deprecated form.** The old three-number statement `color r, g, b` is deprecated and raises a compiler warning. Write `color rgb(r, g, b)` instead.

## Other differences at a glance

For readers coming from another BASIC, the remaining points worth knowing:

- **No line numbers.** Flow control uses labels with [goto](./goto.md)/[gosub](./gosub.md), and structured statements like [for](./for.md) and [if](./if.md).
- **String variables end in `$`** (`name$`), and variable names are **case sensitive**.
- **String literals** may be written with double *or* single quotes: `"text"` and `'text'` are the same.
- **Integer literals** may be written in binary (`0b1110`), octal (`0o177`), or hexadecimal (`0xff`) as well as decimal.
- **`?` means `print`**, and **`array[?]`** gives the number of elements in an array or map — with `array[?,]` for the row count and `array[,?]` for the column count of a two-dimensional array.

## See Also

[Rem](./rem.md), [Print](./print.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [Map](./map.md), [Dim](./dim.md), [Color](./color.md), [Rgb](./rgb.md), [Variables](./variables.md)
