---
title: "Include"
sidebar_label: "Include"
---

## Include (Statement)

### Format

**include** ["file_name"](./stringconstants.md)

### Description

Loads an external source file at compile (when the run button is pressed) time into the program. The argument to the Include statement must be a string constant.

### Example

##### saved as smilerandom.kbs

    include "smilesubroutine.kbs"
    clg
    while true
       call drawsmile(300*rand, 300*rand, 50*rand+5)
    end while
    end

##### saved as smilesubroutine.kbs

    subroutine drawsmile(x,y,r)
       # draw a smile with the center at x,y and with a radius of r
       # position and size everything based on fractional multiples of the radius
       color black, yellow
       penwidth 1
       circle x, y, r
       color black
       circle x, y+.2*r, .5*r
       color yellow
       circle x, y, .5*r
       color black
       eye = int(.1*r)
       if eye=0 then eye = 1
       circle x-.35*r, y-.3*r, eye
       circle x+.35*r, y-.3*r, eye
    end subroutine

### See Also

[EditVisible](./editvisible.md), [GraphToolBarVisible](./graphtoolbarvisible.md), [GraphVisible](./graphvisible.md), [Include](./include.md),[MainToolbarVisible](./maintoolbarvisible.md), [OutputToolBarVisible](./outputtoolbarvisible.md), [OutputVisible](./outputvisible.md), [RegexMinimal](./regexminimal.md), [Ostype](./ostype.md), [System](./system.md), [Version](./version.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.69 | New to Version |
