---
title: "stampdraw.kbs - j.m.reneau - 2012-12-31"
sidebar_label: "stampdraw.kbs - j.m.reneau - 2012-12-31"
---

#### Jim’s Stamp Editor

Drawing tool to create a list of x and y values to define a stamp.

    # stampdraw.kbs - j.m.reneau - 2012-12-31

    fastgraphics
    npoints = 4
    xfactor = 10
    axis = int(graphwidth / 2 / xfactor)*xfactor
    pointselected = -1
    pointradius = 3
    dim points(npoints*2)
    global points, npoints, xfactor, axis, pointselected, pointradius
    points = {-5,-5,-5,5,5,5,5,-5}

    print "stampdraw.kbs"
    print "j.m.reneau 2012-12-31"
    print "S - Show point array"
    print "I,X - insert point / delete point"
    print "U,D,L,R - move stamp"
    print "esc - exit"

    call draw()

    while true
       if mouseb = 0 then call getselection()
       if mouseb = 1 and pointselected <> -1 then call moveselection()
       k = key
       if k = 27 then
          end
       end if
       if k = asc("S") then
          for t = 0 to npoints-1
             print points[t*2] +","+points[t*2+1]+", ";
          next t
          print
       end if
       if k = asc("I") and pointselected <> -1 then
          npoints = npoints + 1
          redim points(npoints*2)
          for t = npoints-2 to pointselected step -1
             points[(t+1)*2] = points[t*2]
             points[(t+1)*2+1] = points[t*2+1]
          next t
          print "shape has " + npoints + " points"
       end if
       if k = asc("X") and pointselected <> -1 then
          if pointselected < npoints-1 then
    for t = pointselected+1 to npoints-1
             points[(t-1)*2] = points[t*2]
             points[(t-1)*2+1] = points[t*2+1]
          next t
    end if
          npoints = npoints - 1
          redim points(npoints*2)
          print "shape has " + npoints + " points"
       end if
       if k = asc ("L") then
          for t = 0 to npoints-1
             points[t*2]-=1
          next t
       end if
       if k = asc ("R") then
          for t = 0 to npoints-1
             points[t*2]+=1
          next t
       end if
       if k = asc ("U") then
          for t = 0 to npoints-1
             points[t*2+1]-=1
          next t
       end if
       if k = asc ("D") then
          for t = 0 to npoints-1
             points[t*2+1]+=1
          next t
       end if
       call draw()
       pause .01
    end while
    end

    function cvtmouse(m)
       m = (m-axis) / xfactor
       if m >= 0 then
          m += .5
       else
          m -= .5
       end if
       return int(m)
    end function

    subroutine moveselection()
       x = cvtmouse(mousex)
       y = cvtmouse(mousey)
       if x <> points[pointselected*2] or y <> points[pointselected*2+1] then
          points[pointselected*2] = x
          points[pointselected*2+1] = y
          call draw()
       end if
    end subroutine

    subroutine getselection()
       pointselected = -1
       x = cvtmouse(mousex)
       y = cvtmouse(mousey)
       for t = 0 to npoints-1
          if x = points[t*2] and y = points[t*2+1] then
             pointselected = t
          end if
       next t
    end subroutine

    subroutine draw()
       clg
       color white
       rect 0,0,graphwidth,graphheight
       for t = 0 to 300 step xfactor
          if t = axis then
             color blue
          else
             color grey
          end if
          line 0,t,300,t
          line t,0,t,300
       next t
       color black
       stamp axis,axis,xfactor,0,points
       for t = 0 to npoints-1
          if pointselected=t then
             color red
          else
             color green
          end if
          circle points[t*2]*xfactor+axis, points[t*2+1]*xfactor+axis, pointradius
       next t
       refresh
    end subroutine
