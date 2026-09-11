---
title: "Framerate"
sidebar_label: "Framerate"
---

## FrameRate (Statement)

### Format

**framerate** [numeric_expression](./numericexpressions.md)\
**framerate** ( [numeric_expression](./numericexpressions.md) )

### Description

Holds the loop it is written in to a steady number of frames a second.

**framerate** waits until the next frame is *due*, not for a fixed length of time. Whatever the loop has already spent drawing comes out of the wait instead of being added to it, so the rate you ask for is the rate you get however heavy the scene is and however fast the computer is. A program written on a fast machine keeps its speed on a slow one, and runs slower only when a single frame genuinely takes longer than its share of a second.

Write it once in the loop, usually next to [Refresh](./refresh.md):

    fastgraphics
    while true
       clg
       gosub draw
       refresh
       framerate 60
    end while

The first **framerate** of a run does not wait -- it starts the clock. Every one after it waits for its turn.

If a frame overruns, which is to say it took longer than one over the rate, **framerate** does not try to win the time back by running a burst of short frames afterwards. It starts counting afresh from the moment the slow frame ended, so one heavy frame costs one heavy frame and nothing more.

**framerate 0** takes the cap off and forgets the timing, so a later **framerate** *n* begins again from that point. A rate of zero or less always means no cap.

The rate need not be a whole number and may be changed while the program runs. A rate higher than the loop can manage simply has no effect: **framerate** sets a maximum, it cannot make a slow loop fast.

Like [Pause](./pause.md), the wait ends at once if you press the Stop button.

**framerate** is not limited to drawing. Any loop that should run at a steady rate -- reading a port, stepping a simulation, printing a display -- can use it.

### FrameRate or Pause?

[Pause](./pause.md) waits **for** a length of time. **framerate** waits **until** a moment. In a loop that is the whole difference:

    pause 1/60          # one frame's drawing PLUS a sixtieth of a second
    framerate 60        # a sixtieth of a second COUNTING the drawing

So a loop ended with **pause** 1/60 always runs slower than sixty a second, and slower still as the drawing grows. Use [Pause](./pause.md) when you want to wait a set time, and **framerate** when you want a loop to run at a set rate.

### Example

    # sixty frames at thirty a second should take two seconds,
    # even though every frame has work in it
    framerate 30
    start = msec
    for frame = 1 to 60
       pause 0.005                  # stand in for the drawing
       framerate 30
    next frame
    print "60 frames took " + ((msec - start) / 1000) + " seconds"

    start = msec
    for frame = 1 to 60
       pause 0.005
       pause 1 / 30                 # the same loop paced with pause
    next frame
    print "with pause 1/30 instead: " + ((msec - start) / 1000) + " seconds"

will print something close to

    60 frames took 2.0 seconds
    with pause 1/30 instead: 2.384 seconds

The five milliseconds of work in each frame come out of the wait in the first loop and are added to it in the second.

### See Also

[Clg](./clg.md), [FastGraphics](./fastgraphics.md), [Graphsize](./graphsize.md), [Msec](./msec.md), [Pause](./pause.md), [Refresh](./refresh.md)

### History

|         |                |
|---------|----------------|
| 2.2     | New To Version |
