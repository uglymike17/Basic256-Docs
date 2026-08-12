---
title: "Moire pattern - j.m.reneau 2010-07-27"
sidebar_label: "Moire Pattern "
---

<img src="/jmreneau_morie.png" data-query="?200" width="200" alt="jmreneau_morie.png" />
Morie Pattern (July 27, 2010)

    # morie pattern - j.m.reneau 2010-07-27

    # height of pattern
    h = 500
    # width of pattern
    w = 500
    # distance between lines ((w or h)/s) on edge
    s = .005

    fastgraphics
    graphsize w,h

    # background
    color black
    rect 0,0,w,h

    x0 = w/2
    y0 = h/2
    for t = 0 to 1  step s
       x1 = 0
       y1 = t*h
       gosub drawline
       x1 = w
       y1 = h-t*h
       gosub drawline
       x1 = w-t*w
       y1 = 0
       gosub drawline
       x1 = t*w
       y1 = h
       gosub drawline
    next t
    end

    drawline:
    dx = x0 - x1
    dy = y0 - y1
    # distance along length of line between points (as % of line length)
    sl = 3  / ((dx ^ 2 + dy ^ 2 ) ^ .5)
    for d = 0 to 1 step sl
       # color of pixel along line
       color rgb(255*d, 255*d, 255*d)
       plot x0 + dx * d, y0 + dy * d
    next d
    refresh
    return
