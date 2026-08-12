---
title: "Animated Mobius Strip.kbs"
sidebar_label: "Mobius Strip"
---

![Animated Mobius Strip sample program output](@site/static/img/wiki/jmreneau_mobius.png)
Animated mobius strip (July 2010)

    # mobius.kbs
    # rotation mobius strip - j.m.reneau
    fastgraphics
    dim p(8)
    dim c(3)
    c = {red, green, blue}
    w = .20 # width of strip
    dr = 2 * pi / 100 # size of rotation in frame
    speed = .01 # pause between frames
    r = 0
    while true
       clg
       for t = 0 to 2
          x = sin((t - w) * pi * 2 / 3 + r)*graphwidth/2 + graphwidth/2
          y = cos((t - w) * pi * 2 / 3 + r)*graphheight/2 + graphheight/2
          x1 = sin((t + w) * pi * 2 / 3 + r)*graphwidth/2 + graphwidth/2
          y1 = cos((t + w) * pi * 2 / 3 + r)*graphheight/2 + graphheight/2
          x2 = sin((t+1 - w) * pi * 2 / 3 + r)*graphwidth/2 + graphwidth/2
          y2 = cos((t+1 - w) * pi * 2 / 3 + r)*graphheight/2 + graphheight/2
          x3 = sin((t+1 + w) * pi * 2 / 3 + r)*graphwidth/2 + graphwidth/2
          y3 = cos((t+1 + w) * pi * 2 / 3+ r)*graphheight/2 + graphheight/2
          p = {x,y,x3,y3,x2,y2,x1,y1}
          color c[t]
          poly p
       next t
       refresh
       r = r + dr
       pause speed
    end while
