---
title: "Jagged Depths by Joel Kahn"
sidebar_label: "Jagged Depths"
---

<img src="/en/kahn_joel_jagged_depths.png" data-query="?200" width="200" alt="kahn_joel_jagged_depths.png" />
Jagged Depths by Joel Kahn (July 2010) with minor updates.

    cls
    clg
    w=600.0
    h=600.0
    graphsize w,h
    x=w/2.0
    y=h/2.0
    dim a(6)
    a={0.0,0.0,0.0,x,y,0.0}
    s1=0.9101
    ss1=0.000347
    s2=0.9103
    ss2=0.000353
    q1=pi
    qq1=1.631*pi
    q2=q1
    qq2=qq1+s2
    cc=137.0
    c1=cc
    c2=-cc
    do
       color c1
       stamp x,y,s1,q1,a
       color c2
       stamp x,y,s2,q2,a
       s1=s1-ss1
       q1=q1+qq1
       c1=c1+cc
       s2=s2-ss2
       q2=q2-qq2
       c2=c2-cc
    until s1 <= 0 or s2 <= 0
