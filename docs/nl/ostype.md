---
title: "Ostype"
sidebar_label: "Ostype"
---

## Ostype

### Formaat

**ostype** ( )\

### Beschrijving

Geeft een nummer terug die weergeeft op welk operating system/software deze BASIC256 applicatie gemaakt werd.

| Resultaat |           |
|-----------|-----------|
| Waarde    | Type      |
| 0         | Windows   |
| 1         | Linux     |
| 2         | Macintosh |

### Voorbeeld

``` basic4gl
print "Je gebruikt een ";
if ostype() = 0 then
   print "windows";
else
   print "unix/linux";
end if
print " machine."
```

zal het volgende tonen

    Je gebruikt een unix/linux machine.

### Nieuw vanaf

0.9.6.58

------------------------------------------------------------------------

[vorige](./system.md) \| [Speciale Opdrachten](./miscellaneous.md) \| [volgende](./editvisible.md)
