---
title: "Noise"
sidebar_label: "Noise"
---

## Noise (Function)

### Format

**noise** ( [x](./numericexpressions.md) )\
**noise** ( [x](./numericexpressions.md) , [y](./numericexpressions.md) )\
**noise** ( [x](./numericexpressions.md) , [y](./numericexpressions.md) , [z](./numericexpressions.md) )

### Description

Returns a smooth, repeatable value between -1 and 1 taken from an OpenSimplex noise field. Give it one number for a value taken along a line, two for a value taken from a plane, or three for a value taken from a space.

Noise is not [rand](./rand.md). Rand hands you an unrelated value every time you call it, and never the same one twice in a row by design. Noise is a landscape that is already there: the same coordinate always gives the same value, and nearby coordinates give nearby values. That is what makes it useful for terrain, clouds, textures, wandering paths and anything else that should look natural rather than jumbled.

The step you take between coordinates decides how quickly the value changes. Small steps such as 0.01 wander slowly and give broad, rolling shapes; large steps such as 5 land far apart in the field and give values with no visible relation to each other.

The field is fixed by [seed](./seed.md). Seeding with the same number gives you the same landscape every run, which is what you want while you are still working on a program. Without a seed you get a different landscape each run, exactly as [rand](./rand.md) does.

The value approaches -1 and 1 without ever quite reaching them, so a short sample will not span the whole range. If you need a value from 0 to 1 use `(noise(x)+1)/2`.

The one dimensional form is not the two dimensional field read along y=0. OpenSimplex has no one dimensional form of its own, so **noise(x)** walks a line through the plane that is deliberately turned off the grid — reading straight along an axis would cross the field at a repeating angle and the regularity would show.

The three dimensional form is for pictures that change. Draw with x and y as usual and use z as time: move z on a little each frame and every point of the picture changes smoothly, so clouds drift, water ripples and fire flickers instead of standing still. The field is turned so that x and y look their best, which is why z is the one to move. A slice at z = 0 is a field of its own, so **noise(x, y, 0)** is not the same value as **noise(x, y)**.

### Example

    # a rolling landscape drawn across the graphics window
    seed 42
    graphsize 300, 300
    clg
    color black
    for x = 0 to graphwidth-1
       h = (noise(x * 0.01) + 1) / 2
       rect x, graphheight - h * graphheight, 1, h * graphheight
    next x
    refresh

### Example Two

    # the same coordinate always gives the same value
    seed 42
    print noise(3.75)
    print noise(3.75)
    print noise(3.75, 0)

will print

    0.06553833932
    0.06553833932
    -0.84611207247

### Example Three - More Detail With Octaves

**noise** gives you one octave: one smooth layer with a single level of detail. Real landscapes have detail at several scales at once — broad hills, smaller mounds on them, and roughness on those. You get that by adding several layers of noise together, each one twice as fine and half as strong as the one before. This is called fractal Brownian motion, and it is a short loop rather than anything built into the language:

    function fbm(x, octaves)
       # add layers of noise, each half as strong and twice as detailed
       total = 0
       amplitude = 1
       frequency = 1
       maxvalue = 0
       for octave = 1 to octaves
          total = total + noise(x * frequency) * amplitude
          maxvalue = maxvalue + amplitude
          amplitude = amplitude * 0.5
          frequency = frequency * 2
       next octave
       # dividing by the total strength keeps the result between -1 and 1
       return total / maxvalue
    end function

    seed 42
    graphsize 300, 300
    clg
    color black
    for x = 0 to graphwidth-1
       h = (fbm(x * 0.005, 5) + 1) / 2
       rect x, graphheight - h * graphheight, 1, h * graphheight
    next x
    refresh

Two numbers control what you get. **octaves** is how many layers to add — four or five is usually plenty, and each further layer adds less than the one before. The 0.5 is the *persistence*, how much strength each layer keeps of the one before it: lower than 0.5 gives smooth, rounded shapes, higher gives rough, jagged ones.

The same loop works for the two and three dimensional forms — use `noise(x * frequency, y * frequency)` and pass every coordinate through.

### Example Four - Clouds That Move

    # clouds that change as z moves on, like time passing
    seed 7
    graphsize 200, 200
    fastgraphics
    z = 0
    while true
       for y = 0 to graphheight-1 step 4
          for x = 0 to graphwidth-1 step 4
             v = (noise(x * 0.02, y * 0.02, z) + 1) / 2
             color rgb(v * 255, v * 255, 255)
             rect x, y, 4, 4
          next x
       next y
       refresh
       z = z + 0.05
    end while

A bigger step for z makes the clouds change faster; a smaller one makes them drift slowly.

### See Also

[Rand](./rand.md), [Seed](./seed.md)

### History

|         |                |
|---------|----------------|
| 2.1.2   | New To Version |
| 2.3     | A third coordinate reads a three dimensional field |
