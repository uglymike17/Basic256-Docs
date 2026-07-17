---
title: "If / Then"
sidebar_label: "If / Then"
---

## If / Then

### Formaat

**if** *booleanuitrdukking* **then** *opdracht*

------------------------------------------------------------------------

**if** *booleanuitrdukking* **then**\
*opdracht(en)*\
**end if**

------------------------------------------------------------------------

**if** *booleanuitrdukking* **then**\
*opdracht(en)*\
**else**\
*opdracht(en)*\
**end if**

### Beschrijving

IF statements kan je in 3 verschillende vormen gebuiken.

1.  In eenzelfde lijn wordt *booleanuitdrukking* getest, en wanneer deze waar is dan wordt de opdracht na de *then* uitgevoerd, anders wordt de volgende opdracht meeteen uitgevoerd.\
    - Op verschillende lijnen waarbij in de eerste lijn de //booleanuitdrukking wordt getest, waarbij als deze waar is, de volgende lijnen met *opdracht(en)* wordt uitgevoerd, of in geval van false met de *opdracht(en)* tussen de *else* en *end if* opdracht worden uitgevoerd, waarna gewoon verder wordt gedaan na de *end if* opdracht.\
    - Op verschillende lijnen waarbij in de eerste lijn de //booleanuitdrukking wordt getest, waarbij als deze waar is, de volgende lijnen met *opdracht(en)* wordt uitgevoerd, of in geval van false met de volgende opdracht na de *end if* opdracht wordt verdergegaan\

### Voorbeeld

``` basic4gl
print "Raad de letter die ik in mijn geheugen heb"
# Wacht tot de gebruiker een iets intypt
again:
do
  a = key
  pause .01
until a <> 0
#
if chr(a) = "Z" then
   print "Yep, je heb mijn letter geraden !!!!"
else
   print "Nope. Mis. Probeer nog eens"
  goto again
end if
#
end
```

### Vanaf Versie

0.9.4g

------------------------------------------------------------------------

[vorige](./gosubreturn.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./pause.md)
