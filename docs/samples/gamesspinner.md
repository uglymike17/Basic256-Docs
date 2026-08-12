---
title: "Spinner - spin the wheel for a random number"
sidebar_label: "Spinner"
---

![Spinner sample program output](@site/static/img/wiki/gamesspinner.png)
Spin a pointer to generate a random number. Requires 0.9.9.26 or higher.\
Tested with version 1.99.99.9 on 2016-01-12.

    # spinner.kbs - spin the wheel for a random number
    # 2013-01-03 j.m.reneau
    # requires 0.9.9.26 or higher

    clg
    dim colors(1)
    colors = {red, green, yellow, blue, cyan, purple}
    fastgraphics
    n = rand
    segments = 10   # change for a different number of stops
    slice = 2 * pi / segments
    ha = 2*pi*(1+n)
    n = int(n*segments+1)
    for t = 0 to ha step pi/30
       clg
       a = 0
       for u = 0 to segments-1
          color black,colors[u%colors[?]]
          pie 0,0,300,300,a,slice
          a = a + slice
       next u
       color black
       call spinner(t)
       refresh
       pause .01
       if ha-t < 1 then pause .1
       if ha-t < .3 then pause .1
    next t
    color white
    font "arial",100,100
    text 110,70,n
    refresh
    print n
    end

    subroutine spinner(a)
       stamp 150,150,3,a,{-2,2,-2,-40,-5,-40,0,-50,5,-40,2,-40,2,2}
    end subroutine
