---
title: "Contributed by Joel Kahn"
sidebar_label: "Contributed by Joel Kahn"
---

<img src="/en/kahn_joel_eye_in_vortex.png" data-query="?200" width="200" alt="kahn_joel_eye_in_vortex.png" />
Eye in Vortex by Joel Kahn (June 2010)\
Modified 2013-02 for version 0.9.9.45 and later

    # Contributed by Joel Kahn
    cls
    clg
    l=700
    w=500
    graphsize l,w
    dim f(8)
    f[0]=0
    f[1]=0
    f[2]=17
    f[3]=0
    f[4]=17
    f[5]=1
    f[6]=0
    f[7]=1
    m1=1
    m2=2
    x1=l/2
    y1=w/2
    x2=x1+1
    y2=y1+1
    qq1=0.99999
    q1=1.34
    qq2=0.99998
    q2=1.33
    vv1=0.011
    v1=0.0
    vv2=0.012
    v2=-0.1
    s1=1.411
    s2=1.412
    c1=0.0
    c2=2.0^24.0
    for d=1 to 25000
       m1=m1+1/m1
       x1=x1+s1*cos(m1)
       y1=y1+sin(m1)
       c1=c1+6.01
       q1=q1*qq1
       v1=v1+vv1
       color rgb(c1\256\256%256, c1\256%256, c1%256) 
       stamp x1,y1,q1,v1,f
       m2=m2+1/m2
       x2=x2+s2*cos(m2)
       y2=y2+sin(m2)
       c2=c2-6.02
       q2=q2*qq2
       v2=v2+vv2
       color rgb(c2\256\256%256, c2\256%256, c2%256) 
       stamp x2,y2,q2,v2,f
    next d
