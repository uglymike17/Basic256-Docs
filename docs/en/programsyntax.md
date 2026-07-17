---
title: "Program Syntax"
sidebar_label: "Program Syntax"
---

## Program Syntax

test



#### Label

A line may optional begin with a label followed without a space with a colon to be used as a destination of a [goto](./goto.md), [gosub](./gosub.md), or [onerror](./onerror.md).

    print "before"
    gosub display
    print "after"
    end

    display:  print "in gosub"
    return

#### Compound Statement

Multiple statements may be included on a single line by separating then with a : (colon), this is called a compound statement. In the context of the language a single statement is also considered a “compound statement”.

    total= 0: for t=1 to 10: total = total + t: next t: print "the total of 1 to 10 is " + total

Special care should be taken when including [if/then](./if.md) statements in a compound line:

#### Example

The following is a sample program that shows single line statements, compound statements, and use of a label.

    print "hello ";
    gosub world
    end

    world: ### print out world
    print "w";
    print "o";: print "r";: print chr(asc("a")+11);
    print right('Dd',1)
    return
