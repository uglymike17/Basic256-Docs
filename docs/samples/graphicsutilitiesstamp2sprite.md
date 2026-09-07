---
title: "Stamp-to-Sprite by j. m. Reneau"
sidebar_label: "Stamp-to-Sprite"
---

![Stamp-to-Sprite utility screenshot](@site/static/img/wiki/graphicsutilitiesstamp2sprite.png)
Four ghosts, each built as a sprite from the same outline in different colours, bouncing around the screen.\

This sample used to need a twenty line subroutine. It drew the outline on the screen with [stamp](../en/stamp.md), worked out the bounding box by hand so that it knew how big the result was, and then cut the drawing back off the screen with [spriteslice](../en/spriteslice.md) — which is why the original had to run before anything else was drawn, and warned that it would clear the screen.

[Spritepoly](../en/spritepoly.md) does all of that in one statement. It takes the outline, sizes the sprite from it, draws it with the current [color](../en/color.md) and [penwidth](../en/penwidth.md), and never touches the screen, so sprites can be built at any point in a program.

    # stamp2sprite.kbs
    # four ghosts built with spritepoly
    # 2013-01-06 j.m.reneau, rewritten 2026-09-07
    # requires BASIC-256 2.1.2 or higher

    # the ghost outline, drawn four times life size.  Spritepoly moves the
    # outline into the corner of the sprite for you, so these could equally
    # be written around zero -- they are laid out a row to a line here only
    # because it reads better than one very long line
    ghost = {36,0, 20,0, 8,4, 4,8, 0,20, 20,20, 20,28, 12,28, 12,20, 0,20,
             0,76, 4,68, 8,76, 12,68, 16,76, 20,68, 24,76, 28,68, 32,76, 36,68,
             40,76, 44,68, 48,76, 52,68, 56,76, 56,52, 16,52, 16,48, 40,48, 40,52,
             56,52, 56,20, 44,20, 44,28, 36,28, 36,20, 56,20, 52,8, 48,4}

    fastgraphics
    spritedim 4

    penwidth 1 : color white, red                        : spritepoly 0, ghost
    penwidth 3 : color purple, purple                    : spritepoly 2, ghost
    penwidth 4 : color rgb(0,255,0,128), rgb(0,255,0,64) : spritepoly 3, ghost

    # Sprite 1 is the odd one out.  It is not a coloured ghost but a white
    # rectangle with the ghost cut out of it: drawing with a clear pen and a
    # clear brush erases instead of painting.  Spritepoly has no background
    # to erase through, so this one is still built the old way -- and because
    # it draws on the screen, it has to be done before the screen is used.
    penwidth 2
    clg
    color white
    rect 0, 0, 56 + getpenwidth, 76 + getpenwidth
    color clear, clear
    stamp 0, 0, 1, 0, ghost
    refresh
    spriteslice 1, 0, 0, 56 + getpenwidth, 76 + getpenwidth

    print "press any key to stop"

    color black
    rect 0, 0, 300, 300

    dim dx(4)
    dim dy(4)
    for t = 0 to 3
       dx[t] = 1
       dy[t] = 1
       spriteplace t, rand*300, rand*300
       spriteshow t
    next t

    while key = 0
       for t = 0 to 3
          spritemove t, dx[t], dy[t]
          if spritex(t) <= 0 or spritex(t) >= 300 then dx[t] *= -1
          if spritey(t) <= 0 or spritey(t) >= 300 then dy[t] *= -1
       next t
       refresh
    end while

    end

### Notes

The outline is written at four times life size rather than being scaled when it is placed. [Spriteplace](../en/spriteplace.md) can scale a sprite, but it magnifies the finished picture — the outline would grow with it and turn blocky — so a sprite that is always wanted at one size is better drawn at that size to begin with.

Writing the list of points over several lines needs 2.1.2. On an older version put it all on one line.

### See Also

[Color](../en/color.md), [Penwidth](../en/penwidth.md), [Spritedim](../en/spritedim.md), [Spriteplace](../en/spriteplace.md), [Spritepoly](../en/spritepoly.md), [Spriteslice](../en/spriteslice.md), [Stamp](../en/stamp.md)
