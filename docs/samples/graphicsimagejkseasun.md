---
title: "Contributed by Joel Kahn"
sidebar_label: "Contributed by Joel Kahn"
---

<img src="/en/kahn_joel_seashore_sunrise.png" data-query="?200" width="200" alt="kahn_joel_seashore_sunrise.png" />
Seashore Sunrise by Joel Kahn (June 2010 - modified 2013-02 for version 0.9.9.45 and later)

    # Contributed by Joel Kahn
    fastgraphics
    cls
    clg
    c=7
    xs=750
    ys=520
    graphsize xs,ys
    for y=ys to 0 step -1
       for x=0 to xs
          c=c*1.00005
          color rgb(c\256\256%256, c\256%256, c%256) 
          plot x,y
       next x
       refresh
    next y
    print c
