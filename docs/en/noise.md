---
title: "Noise"
sidebar_label: "Noise"
---

## Noise (Function)

### Format

**noise** ( [x](./numericexpressions.md) )\
**noise** ( [x](./numericexpressions.md) , [y](./numericexpressions.md) )

### Description

Returns a smooth, repeatable value between -1 and 1 taken from an OpenSimplex noise field. Give it one number for a value taken along a line, or two for a value taken from a plane.

Noise is not [rand](./rand.md). Rand hands you an unrelated value every time you call it, and never the same one twice in a row by design. Noise is a landscape that is already there: the same coordinate always gives the same value, and nearby coordinates give nearby values. That is what makes it useful for terrain, clouds, textures, wandering paths and anything else that should look natural rather than jumbled.

The step you take between coordinates decides how quickly the value changes. Small steps such as 0.01 wander slowly and give broad, rolling shapes; large steps such as 5 land far apart in the field and give values with no visible relation to each other.

The field is fixed by [seed](./seed.md). Seeding with the same number gives you the same landscape every run, which is what you want while you are still working on a program. Without a seed you get a different landscape each run, exactly as [rand](./rand.md) does.

The value approaches -1 and 1 without ever quite reaching them, so a short sample will not span the whole range. If you need a value from 0 to 1 use `(noise(x)+1)/2`.

The one dimensional form is not the two dimensional field read along y=0. OpenSimplex has no one dimensional form of its own, so **noise(x)** walks a line through the plane that is deliberately turned off the grid — reading straight along an axis would cross the field at a repeating angle and the regularity would show.

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

The same loop works for the two dimensional form — use `noise(x * frequency, y * frequency)` and pass both coordinates through.

### See Also

[Rand](./rand.md), [Seed](./seed.md)

### History

|         |                |
|---------|----------------|
| 2.1.2   | New To Version |
