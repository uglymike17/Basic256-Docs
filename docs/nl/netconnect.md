---
title: "NetConnect"
sidebar_label: "NetConnect"
---

## NetConnect

### Formaat

**netconnect** *server_naam*, *poort_nummer*\
**netconnect** ( *server_naam*, *poort_nummer* )\
**netconnect** *socket_number*, *server_naam*, *poort_nummer*\
**netconnect** ( *socket_number*, *server_naam*, *poort_nummer* )

### Beschrijving

De functie opent een netwerk connectie (client) naar een server. Het IP address of de server naam worden opgegeven in *server_naam*, en de netwerk poort in *poort_nummer*. Aks er geen *socket_number* is meegegeven, wordt 0 gebruikt.

### Voorbeeld

Open 2 instanties van BASIC-256 op eenzelfde comuter. Plak de “Server” code in de ene en de “client” code in de andere. Start de Server instantie eerst op en dan pas de client.

Je zal nu zien hoe de 2 instanties berichten met elkaar uitwisselen.

#### Server Code

``` basic4gl
# Haal een bericht op een stuur een 'success' terug
print "wachtend op een connectie op " + netaddress()
netlisten 9997
print "connectie opgesteld"
do
   while not netdata
      pause .1
      print ".";
   end while
   n$ = netread
   print n$
   netwrite "I heb '" + n$ + "' ontvangen."
until n$ = "end"
netclose
```

Dit zal het volgende tonen (waar xxx.xxx.xxx.xxx het IPv4 adres van je computer is)

    wachtend op een connectie op xxx.xxx.xxx.xxx
    connectie opgesteld
    .........1 hallo
    .......2 hallo
    ....3 hallo
    .........4 hallo
    ..5 hallo
    .....6 hallo
    ........7 hallo
    .........8 hallo
    ..........9 hallo
    ........10 hallo
    end

#### Client Code

``` basic4gl
# Geef een bericht in di naar de server verstuurd zal worden
input "Geef een bericht in?", m$
netconnect "127.0.0.1", 9997
for t = 1 to 10
   pause rand
   netwrite t + " " + m$
   print netread
next t
netwrite "end"
print netread
netclose
```

toont dan

    enter message? Hallo
    Ik heb '1  Hallo' ontvangen.
    Ik heb '2  Hallo' ontvangen.
    Ik heb '3  Hallo' ontvangen.
    Ik heb '4  Hallo' ontvangen.
    Ik heb '5  Hallo' ontvangen.
    Ik heb '6  Hallo' ontvangen.
    Ik heb '7  Hallo' ontvangen.
    Ik heb '8  Hallo' ontvangen.
    Ik heb '9  Hallo' ontvangen.
    Ik heb '10  Hallo' ontvangen.
    Ik heb 'end' ontvangen.

### See Also

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### New To Version

0.9.6.31

------------------------------------------------------------------------

[vorige](./netclose.md) \| [Netwerk](./network.md) \| [volgende](./netdata.md)
