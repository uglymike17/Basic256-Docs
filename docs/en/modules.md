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

Because of the third step, the modules shipped with BASIC-256 — `math.kbs`, `turtle.kbs` and `toolkit.kbs` — can be included by their bare name from any program, wherever that program is saved. Your own module files can be dropped into that folder, or kept beside your program and included with a relative path.

An `include` statement must be alone on its line, and programs may nest includes up to ten levels deep.

### Why every name has a prefix

Every function and subroutine in a bundled module starts with two letters and an underscore that name the module it comes from:

| Prefix | Module | Example |
|--------|--------|---------|
| `ma_` | `math.kbs` | `ma_clamp(x, 0, 255)` |
| `tu_` | `turtle.kbs` | `call tu_forward(100)` |
| `tk_` | `toolkit.kbs` | `call tk_button(10, 10, 80, 24, "OK", 0)` |

The reason is that an included module has no namespace of its own. Its text is pasted into your program, so its routines and yours all live in **one shared list of names** — and in BASIC-256 that list holds your variables too, since a function and a variable cannot share a name. Without a prefix, every routine a module adds takes a name away from you:

- a program that included a module defining `max` could not write its own `max`, nor use `max` as a variable;
- two modules that both wanted a `help` or a `reset` routine could never be included in the same program;
- each new module shipped with BASIC-256 would risk breaking programs that already used one of its names.

A prefix fixes all three at once. Names such as `ma_max` or `tu_reset` are unlikely to turn up in a program by accident, the modules cannot collide with each other, and new modules can be added later — each with its own two letters — without touching the names of the old ones. It also makes a program easier to read: `ma_lerp` tells you at a glance that the routine is not part of the language, and which `include` it comes from.

If you write modules of your own, follow the same rule: pick a short prefix that no bundled module uses, and put it in front of every routine and every global variable the module defines.

### Asking a module what it contains

Each bundled module has a help routine that prints its contents in the [Text Output](./textoutputwindow.md) window:

    include "math.kbs"
    call ma_help()

| Module | Help routine |
|--------|--------------|
| `math.kbs` | `call ma_help()` |
| `turtle.kbs` | `call tu_help()` |
| `toolkit.kbs` | `call tk_help()` |

### The math module

`math.kbs` adds common math helpers that build on the language's own built-ins ([Abs](./abs.md), [Atan](./atan.md), [Sqr](./sqr.md), [Rand](./rand.md), and the rest). Including it makes all of its functions available:

    include "math.kbs"

    print ma_hypot(3, 4)            # 5  -- length of the hypotenuse
    print ma_clamp(15, 0, 10)       # 10 -- constrain to a range
    print ma_randint(1, 6)          # a random dice roll, 1 to 6
    print ma_map(5, 0, 10, 0, 100)  # 50 -- rescale from 0..10 to 0..100

**Array helpers**

| Function | Purpose |
|-----------------------------|-----------------------------------------------|
| `ma_sumarr(a)` | total of every element of array *a* |
| `ma_avgarr(a)` | arithmetic mean of array *a* |
| `ma_minarr(a)` | smallest element of array *a* |
| `ma_maxarr(a)` | largest element of array *a* |

**Scalar helpers**

| Function | Purpose |
|-----------------------------|-----------------------------------------------|
| `ma_min(a, b)`, `ma_max(a, b)` | smaller / larger of two values |
| `ma_hypot(a, b)` | length of the hypotenuse, `sqrt(a*a + b*b)` |
| `ma_dist(x1, y1, x2, y2)` | distance between the points (*x1*, *y1*) and (*x2*, *y2*) |
| `ma_clamp(x, lo, hi)` | *x* constrained to the range *lo* .. *hi* |
| `ma_wrap(x, lo, hi)` | *x* wrapped cyclically into *lo* <= *x* < *hi*, e.g. `ma_wrap(angle, 0, 2 * pi)` |
| `ma_lerp(a, b, t)` | linear interpolation: *a* at *t* = 0, *b* at *t* = 1 |
| `ma_map(x, a1, a2, b1, b2)` | *x* rescaled from the range *a1* .. *a2* to *b1* .. *b2* |
| `ma_sign(x)` | -1, 0, or 1 as *x* is negative, zero, or positive |
| `ma_fmod(a, b)` | floating-point remainder of *a* / *b*; keeps the fraction, has the sign of *a* |
| `ma_cbrt(x)` | cube root, defined for negative *x* too |
| `ma_atan2(y, x)` | angle of the point (*x*, *y*) in radians, from just above -pi to pi — note the (*y*, *x*) order |

**Random numbers**

| Function | Purpose |
|-----------------------------|-----------------------------------------------|
| `ma_randint(lo, hi)` | random integer from *lo* to *hi* inclusive |
| `ma_gaussian(mean, sd)` | normally distributed random number with the given mean and standard deviation |

### The turtle module

`turtle.kbs` adds a turtle: an imaginary pen steered with instructions like *go forward* and *turn right*, rather than by working out coordinates.

    include "turtle.kbs"

    for n = 1 to 4
       call tu_forward(80)
       call tu_right(90)
    next n

Its commands all begin with `tu_`. See [Turtle Graphics](./turtle.md) for the full list.

### The toolkit module

`toolkit.kbs` draws classic-style user-interface elements on the graphics output — push buttons, checkboxes, radio buttons, sliders, spin boxes, tabs, group boxes, drawing fields and single-line text fields — each with a matching hit-test function that tells your program whether a mouse click landed on it.

    include "toolkit.kbs"

    clg rgb(192,192,192)
    call tk_button(20, 20, 80, 24, "Click me", 0)

Its routines all begin with `tk_`. See [GUI Toolkit](./toolkit.md) for the full list and a worked example.

### Programs written for 2.3.0

In BASIC-256 2.3.0 the module routines had no prefix (`clamp`, `hypot`, `randint`) or a one-letter one (`t_forward`, `t_right`). A program written for that version stops with an error on the first old name it calls. To bring it up to date, put `ma_` in front of the math names and change `t_` to `tu_` for the turtle. Two math names changed beyond the prefix: `remap` is now `ma_map`, and `fround` is gone — the built-in [Round](./round.md) does the same job, `round(x, 2)`.

### See Also

[Turtle Graphics](./turtle.md), [GUI Toolkit](./toolkit.md), [Include](./include.md), [Function](./function.md), [Subroutine](./subroutine.md), [Call](./call.md), [Global](./global.md), [Program Syntax](./programsyntax.md)

### Availability

BASIC-256 2.0 and later. The bundled module library is part of the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256). The module prefixes, the help routines and `toolkit.kbs` were added in BASIC-256 2.3.1.
