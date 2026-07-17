---
title: "Font"
sidebar_label: "Font"
---

## Font

### Formaat

font *lettertype*, *grootte*, *gewicht*

### Beschrijving

De functie definieert het *lettertype* dat in het grafisch venster zal worden gebruikt.\
De groote wordt in points uitgedrukt. (1/72“).\
Het gewicht is een nummer van 1 tot 100 en geeft aan hoe dik de leeters worden Licht=25, Normaal=50, and Vet=75.

### Voorbeeld

``` basic4gl
clg 
color grey
rect 0,0,graphwidth,graphheight
color red
font "Times New Roman",18,50
text 10,100,"Fraaie tekst"
color darkgreen
font "Tahoma",14,75
text 10,200,"En dit is de vette tekst!"
```

wordt dan\
![fonttext.png](@site/static/img/wiki/nl/fonttext.png)

### Opmerking

In Linux zijn de lettertypes die gedifinieerd staan aleemaal beschikbaar. Let wel dat je de hele correcte schrijfwijze van een lettertype gebruikt.

### Zie ook

[Text](./text.md), [TextWidth](./textwidth.md)

### Nieuw Vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./stamp.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./text.md)
