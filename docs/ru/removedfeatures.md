---
title: "Removed Features"
sidebar_label: "Removed Features"
---

## Removed Features and Statements

Sometimes during the evolution of a program (and many systems) it becomes apparent that features that were added at one point have become unnecessary or must be radically changed to support the future. This page lists the changes that fall into that category.

| Statements and Features Removed |  |  |
|----|----|----|
| Version | Statement(s) | Discussion |
| 0.9.9.26 | **color** *red*, *blue*, *green* -and- **color** ( *red*, *blue*, *green* ) | This form of the color statement was deprecated and should be replaced with “**color** **rgb** ( *red*, *blue*, *green* ) |
| 0.9.9.45 | **decimal** *n* | The decimal statement was used to specify the maximum number of decimal digits to show when displaying a floating point number. In the re-write to support the display of very large and really small numbers in scientific notation this feature was removed. |
