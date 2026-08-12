---
title: "Stellar Cores by Joel Kahn"
sidebar_label: "Stellar Cores"
---

<img src="/img/wiki/en/kahn_joel_stellar_cores.png" width="300" alt="Stellar Cores sample program output" />
Stellar Cores by Joel Kahn (July 2010) with minor updates.

    cls
    clg
    w=600.0
    h=600.0
    graphsize w,h
    x=w/2.0
    y=h/2.0
    v=w/4.0
    j=h/4.0
    dim a(6)
    a={v,x,0.0,0.0,y,j}
    s=0.861
    ss=0.999
    q=0.0
    qq=0.4
    for d=0.0 to 255.0 step 0.06
       s=s*ss
       q=q+qq
       b=d
       r=s*290.0
       g=q%256.0
       try
          color r,g,b
       catch
       endtry
       stamp x,y,s,q,a
    next d
