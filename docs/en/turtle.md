---
title: "Turtle Graphics"
sidebar_label: "Turtle Graphics"
---

## Turtle Graphics

`turtle.kbs` is a [module](./modules.md) shipped with BASIC-256. It adds a **turtle**: an imaginary pen that you steer with instructions like *go forward* and *turn right*, rather than by working out coordinates. Drawing a square becomes four repetitions of one instruction instead of four sets of endpoints.

Pull it into a program with a single line:

    include "turtle.kbs"

Every command it adds begins with `t_`, so the turtle's vocabulary never collides with the language's own. Because it is a module and not part of the language, these names only exist in programs that include the file.

### Conventions

Angles are in **degrees**, measured **clockwise from north**, which is what turtle graphics has always used:

|     |     |
|-----|-----|
| 0 | north / up |
| 90 | east / right |
| 180 | south / down |
| 270 | west / left |

The language's own [Sin](./sin.md) and [Cos](./cos.md) take radians, but the turtle does not — if you are already holding an angle in radians, convert it with [Degrees](./degrees.md):

    call t_right(degrees(a))

The turtle starts **in the middle of the graphics window, facing north, with its pen down**. Nothing draws the turtle itself: it leaves a trail, it is not a cursor on screen.

### Moving the turtle

| Command | Effect |
|-------------------------|--------------------------------------------------|
| `call t_forward(d)` | move *d* pixels along the current heading |
| `call t_backward(d)` | move *d* pixels opposite the current heading |
| `call t_goto(x, y)` | move to the point (*x*, *y*) |
| `call t_home()` | move back to the middle of the graphics window |
| `call t_reset()` | back to the start: centred, facing north, pen down |

Each of these draws a line if the pen is down, and moves silently if it is up — except `t_reset`, which never draws.

`t_backward` reverses the turtle; it does not turn it round, so the heading is unchanged. `t_goto` likewise carries the turtle to the new point without turning it to face that way. `t_home` restores the position only, leaving the heading and the pen as they are; `t_reset` is the one that puts everything back.

### Turning

| Command | Effect |
|-------------------------|--------------------------------------------------|
| `call t_right(a)` | turn *a* degrees clockwise, without moving |
| `call t_left(a)` | turn *a* degrees anticlockwise, without moving |
| `call t_setheading(a)` | face *a* degrees clockwise from north |

`t_right` and `t_left` are relative — they turn the turtle from wherever it is already pointing. `t_setheading` is absolute, and ignores the previous heading entirely.

### The pen

| Command | Effect |
|-------------------------|--------------------------------------------------|
| `call t_pendown()` | the turtle leaves a trail from here on |
| `call t_penup()` | the turtle moves without drawing from here on |

Only *whether* the pen draws lives in the module. What it draws *with* stays with the language's own statements, and they apply to the turtle's lines exactly as they do to anything else: [Color](./color.md) sets the pen colour, [PenWidth](./penwidth.md) its width, and [Clg](./clg.md) clears the canvas.

### Reading the turtle back

| Function | Returns |
|-------------------------|--------------------------------------------------|
| `t_x()` | the turtle's x position |
| `t_y()` | the turtle's y position |
| `t_getheading()` | the heading in degrees, 0 to just under 360 |
| `t_getpen()` | 1 if the pen is down, 0 if it is up |

These let a program do arithmetic against the turtle, mix turtle drawing with ordinary coordinate drawing, or put the turtle back where it found it. To drop a circle where the turtle is standing:

    circle t_x(), t_y(), 5

They are also what makes branching figures possible: a routine that draws a branch can note the position and heading it started from, and restore them before the next branch begins.

### Short aliases

| Alias | Same as |
|-------------------------|--------------------------------------------------|
| `t_fw(d)` | `t_forward(d)` |
| `t_bw(d)` | `t_backward(d)` |
| `t_r(a)` | `t_right(a)` |
| `t_l(a)` | `t_left(a)` |
| `t_pd()` | `t_pendown()` |
| `t_pu()` | `t_penup()` |

These are plain forwarders, so anything true of the long name is true of the short one. Note that they take those names away from your own program: a program that includes `turtle.kbs` cannot also use `t_r` or `t_l` as a variable.

### Example

Twelve squares, each turned a little further round than the last:

    include "turtle.kbs"

    clg white
    color blue

    for n = 1 to 12
       for side = 1 to 4
          call t_forward(140)
          call t_right(90)
       next side
       call t_right(30)
    next n

draws\
![Turtle Graphics](@site/static/img/wiki/turtle.png)

The inner loop draws a square — forward and turn, four times, the turn being 360 / 4. The outer loop turns 30 degrees between squares, which is 360 / 12. No coordinate is worked out anywhere in the program.

A longer tour of the module, including a recursive tree, ships as `Examples/Turtle/turtle_demo.kbs`.

### When the turtle is placed

The turtle is placed on the **first `t_` command the program issues**, not when the file is included. This matters because the starting point is the middle of the graphics window, and [GraphSize](./graphsize.md) is usually called after the include. Placing the turtle on first use means the two can come in either order and the turtle still starts in the middle of the canvas you actually draw on.

If you resize the graphics window *after* the turtle has already moved, call `t_reset()` to re-centre it on the new size.

### Notes

Screen y grows **downward** in BASIC-256, as it does for [Line](./line.md) and every other graphics statement, so north is the direction in which y decreases. The module accounts for this; programs using the turtle do not have to.

The turtle's state is held in variables named `t_state_x`, `t_state_y`, `t_state_h`, `t_state_pen` and `t_state_ready`. They are [Global](./global.md), so avoid those five names in a program that includes the module, and change them only through the commands above.

### See Also

[Modules](./modules.md), [Include](./include.md), [Call](./call.md), [Subroutine](./subroutine.md), [Color](./color.md), [PenWidth](./penwidth.md), [Clg](./clg.md), [GraphSize](./graphsize.md), [Line](./line.md), [Degrees](./degrees.md)

### Availability

The bundled module library is part of the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256). `turtle.kbs` was added in BASIC-256 2.2.
