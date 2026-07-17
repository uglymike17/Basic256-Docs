---
title: "Arrays"
sidebar_label: "Arrays"
---

# Arrays

## Wat is een array?

Een array is een Engels woord dat rij of reeks betekent.
Bij het programmeren van computers betekent het een lijst van elementen waarvan ieder element in die array een unieke index waarmee heeft dat dat element aangeduid.

Je kan bvb een array hebben van je boeken. Die array bevat de titels van je boeken. Om een array uit te drukken gebruiken we meestal \[\]
Stel dus dat je een lijst van boeken hebt :

1.  Gulliver’s Reizen
2.  Reis rond de wereld in 80 dagen
3.  Reis naar de Maan
4.  Robinson Crusoé
5.  Olliver Twist
6.  Max Havelaar

Je kan dan verwijzen naar je tweede boek als Boek\[2\] en krijgt dan van de computer “Reis rond de wereld in 80 dagen” als antwoord.

![arrays_disp.png](@site/static/img/wiki/nl/arrays_disp.png)

Arrays kunnen dus ook in 2 dimensies bestaan. Dan kna je naar een element verwijzen door de 2 indexen mee te geven

## Hoe Schrijf je een array?

Array wordt op de volgende manier gedefinieerd.

- dim numericvariable ( integer )
- dim stringvariable\$ ( [Dim](../en/dim.md)integer )
- dim numericvariable ( rows , columns )
- dim stringvariable\$ ( rows , columns )

Arrays zijn toegewezen volgens de DIM commando of met behulp van ReDim commando.
Zij kunnen numerieke of string informatie bevatten.

Toegang tot specifieke elementen in een array wordt bereikt door vierkante haken te gebruiken samen met de gehele offset van het element, te beginnen vanaf nul.

Arrays kunnen ook worden gedimensioneerd en geopend met behulp van twee dimensies.

Array grootte kunnen ook worden verkregen met behulp van \[?\] \[?\] En \[,?\] Op het einde van de array variabele.

``` basic4gl
dim z(5)
z = {1, 2, 3, 4, 5}
print z[0] + " " + z[4]
```

en geeft dan

    1 5

Voor een volledige syntax, ga naar [Dim](./dim.md)

## Hoe ziet een array eruit?

In BASIC256 ziet het er op de volgende manier uit:

![array.png](@site/static/img/wiki/nl/array.png)

[vorige](./variables.md) \| [Begin](./start.md) \| [volgende](./anonymousarrays.md)
