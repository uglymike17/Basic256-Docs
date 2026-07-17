---
title: "Modules"
sidebar_label: "Modules"
---

## Modules

A **module** is an ordinary BASIC-256 source file (`.kbs`) containing functions and subroutines that you pull into a program with the [Include](./include.md) statement. Instead of copying the same helper routines into every program, you keep them in one file and include it:

    include "math.kbs"

The `include` happens at **compile time** — when you press Run, the module's text is inserted into your program before it executes, exactly as if you had typed it yourself. Everything the module defines (functions, subroutines, and any variables it sets) becomes available to the rest of your program.

### Where modules are found

When you write `include "math.kbs"`, BASIC-256 looks for the file in three places, in order:

1. The path exactly as written (relative to the program, or an absolute path).
2. Next to the BASIC-256 program (the executable folder).
3. The bundled **Modules** folder that ships with BASIC-256.

Because of the third step, the modules shipped with BASIC-256 — such as `math.kbs` — can be included by their bare name from any program, wherever that program is saved. Your own module files can be dropped into that folder, or kept beside your program and included with a relative path.

An `include` statement must be alone on its line, and programs may nest includes up to ten levels deep.

### Example: the math module

`math.kbs` is a module shipped with BASIC-256. It adds common math helpers that build on the language's own built-ins ([Abs](./abs.md), [Atan](./atan.md), [Sqr](./sqr.md), [Rand](./rand.md), and the rest). Including it makes all of its functions available:

    include "math.kbs"

    print hypot(3, 4)            # 5  -- length of the hypotenuse
    print clamp(15, 0, 10)      # 10 -- constrain to a range
    print randint(1, 6)         # a random dice roll, 1 to 6
    print fround(pi, 2)         # 3.14 -- round to 2 decimal places

Some of the functions it provides:

| Function | Purpose |
|-----------------------------|-----------------------------------------------|
| `sumarr(a)`, `avgarr(a)` | sum / average of every element of array *a* |
| `minarr(a)`, `maxarr(a)` | smallest / largest element of array *a* |
| `min(a, b)`, `max(a, b)` | smaller / larger of two values |
| `hypot(a, b)` | length of the hypotenuse |
| `dist(x1, y1, x2, y2)` | distance between two points |
| `clamp(x, lo, hi)` | constrain *x* to a range |
| `wrap(x, lo, hi)` | wrap *x* cyclically into a range |
| `lerp(a, b, t)` | linear interpolation between *a* and *b* |
| `remap(x, a1, a2, b1, b2)` | rescale *x* from one range to another |
| `sign(x)` | -1, 0, or 1 by the sign of *x* |
| `fmod(a, b)` | floating-point remainder |
| `fround(x, n)` | round *x* to *n* decimal places |
| `cbrt(x)` | cube root (works for negative *x*) |
| `atan2(y, x)` | angle of the point (*x*, *y*) in radians |
| `randint(lo, hi)` | random integer, inclusive |
| `gaussian(mean, sd)` | normally distributed random number |

### See Also

[Include](./include.md), [Function](./function.md), [Subroutine](./subroutine.md), [Call](./call.md), [Program Syntax](./programsyntax.md)

### Availability

BASIC-256 2.0 and later. The bundled module library is part of the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
