---
title: "Color changing Spiral by UglyMike"
sidebar_label: "Colored Spiral"
---

Color Changing Spiral by UglyMike

    # Contributed by UglyMike
    graphsize 800,800
    color white
    rect 0,0,800,800
    maximize 1
    editvisible 0
    outputvisible 0
    rad = 5
    r = 100
    g = 50
    b = 150
    incr = 1
    incg = 1.1
    incb = -0.8
    incrad = 0.06
    while true
    for i = 1 to 360
       x = 400 + cos(i) * i
       y = 400 + sin(i) * i
       r= r + incr
       if r > 254 or r < 1 then incr=-incr
       g= g + incg
       if g > 253 or g < 1 then incg=-incg
       b= b + incb
       if b > 254 or b < 1 then incb=-incb
       color rgb(r,g,b)
       circle x, y, rad
       rad= rad + incrad
       if rad > 25 or rad < 3 then incrad=-incrad   
   next i
   pause 0.02
   rad = 5
   incrad = 0.06
   end while      
   refresh
