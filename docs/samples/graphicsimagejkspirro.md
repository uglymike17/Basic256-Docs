---
title: "Contributed by Joel Kahn"
sidebar_label: "Contributed by Joel Kahn"
---

<img src="/en/kahn_joel_round_spiral.png" data-query="?200" width="200" alt="kahn_joel_round_spiral.png" />
Round Spiral by Joel Kahn (June 2010)

    # Contributed by Joel Kahn
    fastgraphics
    cls
    clg
    r=0:g=0:b=0
    x=250.0:y=250.0
    m=1.0
    graphsize 500, 500
    while x>0.0 and x<500.0 and y>0.0 and y<500.0
       m=m+4.0/m
       x=x+cos(m)
       y=y+sin(m)
       r=r+1
       if r>255 then
          r=1
          g=g+1
       end if
       if g>255 then
          g=1
          b=b+1
       end if
       color r, g, b
       plot x,y
    end while
    refresh
