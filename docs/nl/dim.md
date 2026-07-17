---
title: "Dim"
sidebar_label: "Dim"
---

## Dim

### Formaat

**dim** *numeriekevariable* ( *getal* )\
**dim** *stringvariable\$* ( *getal* )\
**dim** *numeriekevariable* ( *rijen* , *kolommen* )\
**dim** *stringvariable\$* ( *rijen* , *kolommen* )

### Beschrijving

met deze functie wordt een één-dimensionele tabel van *getal* lang aangemaakt of een twee-dimensionele tabel die je via (*rij*,*kolom*) kan bereiken.\
Afhankelijk van de definitie wordt een numerieke of string tabel aangemaakt.\
Het eerste element van de tabel heeft altijd een index = 0 . Het laatste element *getal*-1 of *rij-1*,*kolom-1*

### Zie ook

[Redim](./redim.md)

### Voorbeeld

``` basic4gl
dim z(5)
z = {1, 2, 3, 4, 5}
print z[0] + " " + z[4]
```

toont dan

    1 5

``` basic4gl
dim c$(4)
c$ = {"klein", "klein", "kleutertje", "..."}
print c$[2] + " " + c$[3] + " ";
print c$[1] + " " + c$[0] + "?"
```

wordt dan

    klein klein kleutertje ...

------------------------------------------------------------------------

[Tabellen](./arraycommands.md) \| [volgende](./redim.md)
