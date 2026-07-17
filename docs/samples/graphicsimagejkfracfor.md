---
title: "Contributed by Joel Kahn"
sidebar_label: "Contributed by Joel Kahn"
---

<img src="/en/kahn_joel_fractal_forces.png" data-query="?200" width="200" alt="kahn_joel_fractal_forces.png" />
Fractal Forces by Joel Kahn (June 2010)

    # Contributed by Joel Kahn
    cls
    clg
    graphsize 700,500
    dim f(8)
    f[0]=0
    f[1]=0
    f[2]=50
    f[3]=0
    f[4]=50
    f[5]=1
    f[6]=0
    f[7]=1
    q=1.0
    qq=0.9997
    v=0.01
    vv=0.0004
    xs=750
    xm=650
    ys=730
    ym=180
    c=0
    br=-.7393
    bi=.117
    ar=0
    ai=0
    for d=1 to 150000
       tr=ar*ar-ai*ai+br
       ti=2*ar*ai+bi
       x=tr*xs+xm
       y=ti*ys+ym
       v=v+vv
       q=q*qq
       c=d^2.1
       color c
       stamp x,y,q,v,f
       ar=tr
       ai=ti
    next d
