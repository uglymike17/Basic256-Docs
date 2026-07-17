---
title: "Compound Statement Program Syntax"
sidebar_label: "Compound Statement Program Syntax"
---

#### Compound Statement

Multiple statements may be included on a single line by separating then with a : (colon), this is called a compound statement. In the context of the language a single statement is also considered a “compound statement”.

    total= 0: for t=1 to 10: total = total + t: next t: print "the total of 1 to 10 is " + total

Special care should be taken when including [if/then](./if.md) statements in a compound line:
