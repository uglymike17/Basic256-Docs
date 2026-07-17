---
title: "Label Program Syntax"
sidebar_label: "Label Program Syntax"
---

#### Label

A line may optional begin with a label followed without a space with a colon to be used as a destination of a [goto](./goto.md), [gosub](./gosub.md), or [onerror](./onerror.md).

    print "before"
    gosub display
    print "after"
    end

    display:  print "in gosub"
    return
