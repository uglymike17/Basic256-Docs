---
title: "Contributed by Joel Kahn"
sidebar_label: "Contributed by Joel Kahn"
---

<img src="/en/kahn_joel_square_spiral.png" data-query="?200" width="200" alt="kahn_joel_square_spiral.png" />
Square Spiral by Joel Kahn (June 2010)

    # Contributed by Joel Kahn
    fastgraphics
    cls
    clg
    graphsize 512, 512
    r=1:g=1:b=1
    x=250
    y=250
    s=1
    plot x, y
    for a=1 to 511
       x1=x+s*a
       y1=y+s*a
       q=s*1
       g=((abs(g+a))%255)+1
       for xx=x to x1 step q
          b=((abs(b+xx))%255)+1
          color r, g, b
          plot xx, y
       next xx
       for yy=y to y1 step q
          r=((abs(r+yy))%255)+1
          color r, g, b
          plot x1, yy
       next yy
       x=x1
       y=y1
       s=-s
       r=1:g=1:b=1
       refresh
    next a
