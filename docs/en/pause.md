---
title: "Pause"
sidebar_label: "Pause"
---

## Pause (Statement)

### Format

**pause** [numeric_expression](./numericexpressions.md)\
**pause** ([numeric_expression](./numericexpressions.md))

### Description

Halts execution for the specified number of seconds. The value of seconds may be a decimal value, so sub-second precision is possible.

The wait is measured to a deadline, so **pause** never comes back early and is accurate to about a millisecond. Sleeping is not exact on any computer -- a busy machine can always hand the program back a little late -- but the lateness does not build up over a series of pauses, because each one is timed from when it started rather than from when the one before it finished.

A pause of zero or less does nothing at all. Any length up to a day is waited for.

Pressing the Stop button ends a program that is sitting in a **pause** straight away, rather than when the pause runs out.

To pace a drawing loop, use [FrameRate](./framerate.md) rather than **pause**. **pause** waits *for* a length of time, so a loop ended with **pause** 1/60 takes one frame's drawing *plus* a sixtieth of a second and therefore always runs slower than sixty frames a second. [FrameRate](./framerate.md) waits *until* the next frame is due, which takes the drawing time into account.

### Example

    print "Starting the wait"
    pause 0.5
    print "Half a second later"

### See Also

[Begin Case / Case / End Case](./case.md), [Call](./call.md), [Continue Do](./continuedo.md), [Continue For](./continuefor.md), [Continue While](./continuewhile.md), [Do / Until](./do.md), [End](./end.md), [Exit Do](./exitdo.md), [Exit For](./exitfor.md), [Exit While](./exitwhile.md), [For / Next](./for.md), [For Each / Next](./foreach.md), [FrameRate](./framerate.md), [Function](./function.md), [Global](./global.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./if.md), [Msec](./msec.md), [Pause](./pause.md), [Ref](./ref.md), [Rem](./rem.md), [Return](./return.md), [Subroutine](./subroutine.md), [While / End While](./while.md)

### History

|         |                                                                       |
|---------|-----------------------------------------------------------------------|
| 2.2     | Waits to a deadline, so it is no longer short, and Stop interrupts it. |
