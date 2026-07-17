---
title: "Syntax voor de programmering van BASIC-256"
sidebar_label: "Syntax voor de programmering van BASIC-256"
---

\~~ODT\~~

### BASIC-256 Syntax Reference

# Syntax voor de programmering van BASIC-256

## Wat is BASIC eigenlijk?

BASIC staat voor *Beginner’s All-purpose Symbolic Instruction Code*. Dit is een programmeertaal die speciaal werd ontwikkeld om mensen die geen informatica gestudeerd hebben, in te leiden in het programmeren. Wil je meer weten over Basic zelf, neem dan een kijkje hier [BASIC](http://nl.wikipedia.org/wiki/BASIC)

## Wat is een Syntax?

Elke taal, ook een gesproken taal, bvb. Nederlands, Frans of Engels, heeft een manier om de woorden en de zinnen op te maken. Dit is zo ook in de wereld van de computers. Om met eigen woorden te zeggen, is de syntax van een taal het geheel van regels die je moet volgen om die taal te kunnen praten.

Een computerprogramma kan je vergelijken met een tekst die uitsluitend uit opdrachten bestaat. De opdrachten zijn dan in de programmeertaal geschreven.
Een reeks opdrachten die samen één geheel vormen noem je een procedure of een functie.

Opdrachten of statements kunnen de volgende elementen bevatten: sleutelwoorden, variabelen, constanten, operatoren, functies.

Wil je iets meer weten over ‘syntax’. Kijk hier dan maar eens: [Syntax](http://nl.wikipedia.org/wiki/Syntaxis_(informatica))

## Wat is een BASIC-256 Syntax?

BASIC-256 programma’s bestaan uit een reeks van opdrachten die van elkaar gescheiden worden door een nieuwe lijn. De manier waarop een lijn wordt opgeschreven moet voldoen aan een paar regels. De opdrachten worden na elkaar uitgevoerd.

Bvb. als je dit als opdrachten meegeeft:

``` basic4gl
print "Dit is de eerste lijn"
print "En dit is de tweede."
```

dan toont de computer het volgende:

    Dit is de eerste lijn
    En dit is de tweede.

Je hebt ook de mogelijkheid om de uitvoering van het [programma te beïnvloeden, aan te sturen,](./programcontrol.md) door een aantal speciale operatoren:

- [Goto](./goto.md) (verwijzing naar een andere plaats in het programma),
- [If / Then](./ifthen.md) (voorwaarden om iets te doen),
- [For / Next](./fornext.md), [Do / Until](./dountil.md), [While / End While](./whileendwhile.md) (verschillende keren hetzelfde laten doen),
- [Gosub / Return](./gosubreturn.md) (subroutines)

## Commentaar toevoegen aan je programma

Een goed programmeur neemt ook de tijd om zijn programma te voorzien met de nodige commentaar. Hierdoor wordt het mogelijk om een programma met anderen te delen. Neem dus de **goede gewoonte** aan om je programma’s te **voorzien van zinnige commentaar**. Zelfs als je de enige bent die je programma’s gaat bewerken. zal jij nog weten wat je 2 jaar geleden hebt geprogrammeerd en waarom?

Dit doe je door *\#* toe te voegen.

``` basic4gl
# Dit programma zal 2 lijnen printen
print "1st line"
print "2nd Line"
```

[Begin](./start.md) \| [Volgende](./numericconstants.md)
# Numerieke constanten

Een programma is een lijst van opdrachten die we aan de computer meegeven en die hij moet uitvoeren. Af en toe geven we dingen mee waarmee de computer iets moet doen. Een van de dingen die we hem kunnen meegeven zijn cijfers. We kunnen bvb een programma maken om de computer een som te laten uitvoeren. Dan moet de computer ook wel minstens 2 cijfers van ons meekrijgen.

## Wat is een numerieke constante?

Een **numerieke constante** is voor de BASIC256 wat wij als **cijfer** beschouwen. Dit cijfer blijft altijd dezelfde *constante* waarde hebben. Het kan niet veranderen. 5 blijft 5.

Een numerieke constante is :

- een aantal getallen die een cijfer vormen ( bvb 1 , 25, 36)
- Getallen kunnen ook door een minteken worden voorafgegaan ( bvb -145, -25, -3 )
- Getallen kunnen ook een puntje bevatten (getallen na de komma) ( 74.45 , -56.45 )
- Getallen (enkel positief gehele getallen) kunnen ook in binaire (basis 2)vorm worden getoond, maar dan moeten ze voorafgegaan zijn door *0b* ( bvb 0b1110 = 14)
- Getallen (enkel positief gehele getallen) kunnen ook in octaire (basis 8) vorm worden getoond, maar dan moeten ze voorafgegaan zijn door *0o* ( bvb 0o177 = 127)
- Getallen ( enkel positief gehele getallen) kunnen ook in hexadecimal (basis 16) vorm worden getoond, maar dan moeten ze voorafgegaan zijn door *0x* ( bvb 0xff = 255))

## Hoe schrijf je numerieke constante?

zo schrijf je een numerieke constante in BASIC256 ( ‘print’ is de opdracht naar de computer’ )

``` basic4gl
print 3 + 56
print 2.12+5
print 0b001
print 0o177
print 0xff
print 0o177 -45
```

### Opmerkingen

- je schrijft een decimale op met een punt “.”
- je zet geen scheidingsteken voor de duizendtallen

## Hoe ziet het eruit?

Dit is het resultaat :

![numeriek.png](@site/static/img/wiki/nl/numeriek.png)

PS. Wist je niet cijfers ook met een - konden beginnen of dat er een komma kunnen bevatten? Niet erg.
Dit leer je later wel met rekenen of wiskunde. Vandaag heb je het nog niet nodig in het aanleren van BASIC.

PS. Vind je binaire, octaire of hexadecimale cijfers ook maar niks? Niet erg, dat leer je later ook wel.

[vorige](./programsyntax.md) \| [Begin](./start.md) \| [volgende](./stringconstants.md)
# String constante

## Wat is een string constante?

**String** is een Engels woord en betekent “een reeks karakters”. Een karakter is zoveel als een letter, een getal, een leesteken.

Een **string constante** blijft ook zijn waarde behouden. Het verandert niet. “Hello World” blijft “Hello world”.

## Hoe schrijf je een string constante?

Als je een string gebruikt in BASIC256 moet je beginnen met het dubbel aanhalingsteken ” en ook eindigen met hetzelfde teken. Doe je dat niet, … dan geeft de computer een foutmelding of erger nog, dan doet de computer iets wat niet voorzien had.

Zoals je kan zien, wordt een string constante op een andere manier getoond in BASIC356( andere kleur).

Dit zijn correcte **String Constanten**

``` basic4gl
  ""  ( een lege string)
  " " ( een string die een spatie bevat)
  "3 + 56"  (neen, dit is geen som, dit is een string)
  "Hello World!"  (zeer beroemde string voor iemand die leert programmeren"
  "Ik ben 9 jaar"
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae feugiat dolor" 
```

## Hoe ziet het eruit?

Dit is het resultaat in BASIC256 ( print is de opdracht om de string te tonen)

![strings.png](@site/static/img/wiki/nl/strings.png)

Als je echter het dubbel aanhalingteken vergeet, dan krijg je volgende foutmelding:

![wrong_string.png](@site/static/img/wiki/nl/wrong_string.png)

[vorige](./numericconstants.md) \| [Begin](./start.md) \| [volgende](./variables.md)
# Variabelen

## Wat is een variabele ?

Numerieke en String constanten kunnen niet veranderen. Ze hebben de waarde die we ze meegeven. Maar soms moet de computer iets onthouden om later terug te nemen. En computer onthoudt gegevens in het geheugen in benoemde lokaties.

Is de inhoud van zo’n lokatie veranderbaar dan heb je een variabele.

Een variable krijgt een naam. Die naam beslis je zelf. Daarna zeg je aan de computer wat er in de variabele zit. Dat kan zowel een numerieke waarde zijn als een string.

## Hoe schrijf je een variabele ?

De naam van een variabele:

- moet beginnen met een letter
- mag alleen uit letters, cijfers en het onderstrepingsteken bestaan (dus geen speciale tekens)
- mag maximaal 255 karakters bevatten
- mag niet gelijk zijn aan een sleutelwoord van BASIC
- is hoofdlettergevoelig
- een string variabele moet eindigen met een dollar teken oftewel: \$

Dit zijn **geldige** variabelen

``` basic4gl
 Naam$
 Naam123$
 naam$
 n12er
```

Dit zijn **slechte** variabelen

``` basic4gl
 Naam  ( indien je de bedoeling hebt om er een naam in te zetten)
 123Naam$
 if$  (dit is een sleutelwoord)
 if  ( dit is een sleutelwoord)
```

Na de naam van de variabele zet je het gelijkteken =

Daarna geef je de waarde mee die je aan je variabele wil geven.

Je kan natuurlijk de waarde van de variabele verschillende keren weergeven. Dan neemt de computer wel de laatste waarde die je aan de variabele hebt meegegeven.

meegeven van een waarde aan een variabele

``` basic4gl
 Naam$="Jip en Janneke"
```

## Hoe ziet het eruit?

![variables.png](@site/static/img/wiki/nl/variables.png)

## Voorbeeldje

In dit voorbeeldje gebruiken we 4 variabelen en geven we hen elk een waarde.
Een variabele kan ook samengesteld worden door andere variabelen.
Zoals je ziet is een variabele hoefdlettergevoelig. naam\$ en Naam\$ zijn niet dezelfde.

``` basic4gl
Naam$ = "Jan Peeters"
naam$ = "Jip en Janneke"
n12SEZsd$= 23
n12SEZsd$= 100
alle_namen$=Naam$ + " " + naam$

Print Naam$
Print 
Print alle_namen$
Print 
Print n12SEZsd$
```

[vorige](./stringconstants.md) \| [Begin](./start.md) \| [volgende](./arrays.md)
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
# Anonieme Arrays

## Wat is een anonieme array ?

Een anonieme array is een reeks van numerieke waarden of een set van tekst-waarden, gescheiden door komma’s, en tussen accolades {}.

Een anonieme array kan worden gebruikt in plaats van een array variabele, of het kan worden gebruikt om toe te wijzen aan een array variabele.

### Voorbeeld

``` basic4gl
  dim myarray (4)
 myarray = {1, 2, 3, 4} 
```

[vorige](./arrays.md) \| [Begin](./start.md) \| [volgende](./operators.md)
# Operatoren

## Rekenkundige operatoren

De operatoren +, -, \*, / en ^ worden gebruikt voor het optellen, aftrekken, vermenigvuldigen, delen, machtsverheffen van floating point-en integer getallen. Geldige operanden zijn numerieke constanten en / of numerieke variabelen.

De operatoren %, \\ &, \|, en ~ worden gebruikt voor modulo, integer delingen, bitwise en bitwise of en bitsgewijze negatie (niet) van integer uitdrukkingen te berekenen. Floating point getallen worden omgezet naar een integer waarde voor de berekening.

- De operator = wordt gebruikt zowel voor toewijzing aan variabelen, en om te testen op gelijkheid.
- De operator + kan gebruikt worden om aaneenschakeling van elke combinatie van string constanten en string variabelen uit te voeren.
- De: operator kan meerdere statements op eenzelfde regel scheidnen.
- De; operator onderdrukt de nieuwe lijn die is afgedrukt vanuit een PRINT statement.
- De \# operator is een sneltoets voor de Rem statement, en is uitwisselbaar met het.

## Logische operatoren

Logische operatoren zijn gebaseerd op de Booleaanse algebra. Het resultaat van een booleaanse bewerking heeft slechts twee mogelijke resultaten: waar of onwaar.

In verschillende talen die in de wiskunde en informatica worden gebruikt, bestaan er verschillende aanduidingen (tekens) voor de booleaanse operatoren.

### NOT

resultaat = `‘NOT’` A

Het resultaat is tegenovergesteld. “NOT A” is onwaar als “A” waar is en als “A” onwaar is, is “NOT A” waar. Dit is een unaire (unary) operator, dat wil zeggen, met slechts een parameter. Alle anderen in deze lijst zijn binaire (binary) operatoren.

| A   | R     |
|-----|-------|
| 0   | **1** |
| 1   | **0** |

### AND

resultaat = A `‘AND’` B

Het resultaat is waar als zowel “A” als “B” waar zijn, in alle andere gevallen is het resultaat onwaar.

| A   | B   | R     |
|-----|-----|-------|
| 0   | 0   | **0** |
| 0   | 1   | **0** |
| 1   | 0   | **0** |
| 1   | 1   | **1** |

### OR

resultaat = A `‘OR’` B

Het resultaat is waar als “A” waar is of als “B” waar is of als beide waar zijn. Het resultaat is onwaar als zowel “A” als “B” onwaar zijn.

| A   | B   | R     |
|-----|-----|-------|
| 0   | 0   | **0** |
| 0   | 1   | **1** |
| 1   | 0   | **1** |
| 1   | 1   | **1** |

### XOR

resultaat = A `‘XOR’` B

Het resultaat is waar als “A” waar is en “B” onwaar, of als “A” onwaar is en “B” waar. Als “A” en “B” beide waar zijn of beide onwaar zijn is het resultaat onwaar. Deze functie is equivalent aan (A AND NOT B) OR (B AND NOT A)

| A   | B   | R     |
|-----|-----|-------|
| 0   | 0   | **0** |
| 0   | 1   | **1** |
| 1   | 0   | **1** |
| 1   | 1   | **0** |

## Relationele operatoren

## Volgorde van Operatoren

| Volgorde van Operatoren |  |  |
|----|----|----|
| Volgorde | Operator | Kategorie/Beschrijving |
| 1 | ( ) | Groupering |
| 2 | ^ | Exponent |
| 3 | \- ~ | Unary Minus en Bitwise Negatie (NOT) |
| 4 | \* / \\ | Vermenigvuldiging and Deling |
| 5 | % | Modulo |
| 6 | \+ - | Som, Samentrekking, and Verschil |
| 7 | & \| | Bitwise EN of Bitwise OF |
| 8 | \< \<= \> \>= = \<\> | Vergelijkingen |
| 9 | NOT | Unary Not |
| 10 | AND | Logische EN |
| 11 | OR | Logische OF |
| 12 | XOR | Logische Exclusive OF |

[vorige](./anonymousarrays.md) \| [Begin](./start.md) \| [volgende](./errorcodes.md)

### Statements and Functions - Alphabetic

## Abs

### Formaat

**abs** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige functie.\
Geeft de absolute waarde ([wat is dat nu weer](http://nl.wikipedia.org/wiki/Absolute_waarde)) terug van een numerieke *uitdrukking*.

Hier kan je een beetje oefenen…[absolute waarde](http://users.telenet.be/pm-gent/Wiskunde/Hot/wis1_abs_tg1.htm)

### Voorbeeld

``` basic4gl
print abs(-45)
print abs(6.45)
```

geeft dan

    45
    6.45

------------------------------------------------------------------------

[Wiskundige Functies](./mathematical.md) \| [volgende](./acos.md)
## Acos

### Formaat

**acos** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de arccosinus van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\
de functie wordt ook af en toe als cos<sup>-1</sup> genoteerd.

Meer informatie over deze functie vind je op de wiki : [acos](http://nl.wikipedia.org/wiki/Arccosinus)

### Voorbeeld

``` basci4gl
print acos(.1215)
```

### Zie ook

[Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./abs.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./asin.md)
## Asc

### Formaat

**asc** ( *uitdrukking* )

### Beschrijving

Verandert het eerste karakter van een string van *uitdrukking* naar een getal die de ASCII waarde weergeeft.

| Asc | Chr        | Asc | Chr | Asc | Chr | Asc | Chr | Asc | Chr | Asc | Chr |
|-----|------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 32  | SPATIEBALK | 48  | 0   | 64  | @   | 80  | P   | 96  | \`  | 112 | p   |
| 33  | !          | 49  | 1   | 65  | A   | 81  | Q   | 97  | a   | 113 | q   |
| 34  | “          | 50  | 2   | 66  | B   | 82  | R   | 98  | b   | 114 | r   |
| 35  | \#         | 51  | 3   | 67  | C   | 83  | S   | 99  | c   | 115 | s   |
| 36  | \$         | 52  | 4   | 68  | D   | 84  | T   | 100 | d   | 116 | t   |
| 37  | %          | 53  | 5   | 69  | E   | 85  | U   | 101 | e   | 117 | u   |
| 38  | &          | 54  | 6   | 70  | F   | 86  | V   | 102 | f   | 118 | v   |
| 39  | ’          | 55  | 7   | 71  | G   | 87  | W   | 103 | g   | 119 | w   |
| 40  | (          | 56  | 8   | 72  | H   | 88  | X   | 104 | h   | 120 | x   |
| 41  | )          | 57  | 9   | 73  | I   | 89  | Y   | 105 | i   | 121 | y   |
| 42  | \*         | 58  | :   | 74  | J   | 90  | Z   | 106 | j   | 122 | z   |
| 43  | \+         | 59  | ;   | 75  | K   | 91  | \[  | 107 | k   | 123 | {   |
| 44  | ,          | 60  | \<  | 76  | L   | 92  | \\  | 108 | l   | 124 | \|  |
| 45  | \-         | 61  | =   | 77  | M   | 93  | \]  | 109 | m   | 125 | }   |
| 46  | .          | 62  | \>  | 78  | N   | 94  | ^   | 110 | n   | 126 | ~   |
| 47  | /          | 63  | ?   | 79  | O   | 95  | \_  | 111 | o   | 127 |     |

### Zie ook

[Chr](./chr.md)

### Voorbeeld

    print asc("A")
    print asc("blauw")

toont dan

    65
    98

### Nieuw Vanaf

0.9.4

------------------------------------------------------------------------

[Stringbewerkingen](./stringcommand.md) \| [volgende](./chr.md)
## Asin

### Formaat

**asin** ( *uitdrukking* )

### Beschrijving

Berekent de arcsinus (boogsinus) van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\
de functie wordt ook af en toe als sin<sup>-1</sup> genoteerd. Meer informatie over deze functie vind je op de wiki : [asin](http://nl.wikipedia.org/wiki/Arcsinus)

### Voorbeeld

``` basci4gl
print asin(.1215)
```

### Zie ook

[Acos](./acos.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./acos.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./atan.md)
## Atan

### Formaat

**atan** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de arctangens of boogtangens van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\
de functie wordt ook af en toe als tan<sup>-1</sup> genoteerd.

Meer informatie over deze functie vind je op de wiki : [atan](http://nl.wikipedia.org/wiki/Arctangens)

### Voorbeeld

``` basci4gl
print atan(.1215)
```

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./asin.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./ceil.md)
## Ceil

### Formaat

**ceil** ( *uitdrukking* )

### Beschrijving

Afronden naar **boven** (ceil is het Engelse woord voor *Plafond*).\
Het getal van de *uitdrukking* wordt daarbij afgerond naar het laagste gehele getal dat groter is dan of gelijk is aan het oorspronkelijke getal.\

- Voor positieve getallen is het dus 3,14 → 4 en 5,85 → 6.\
  \* Voor negatieve getallen wordt dezelfde regel toegepast: −4,24 → −4.

### Zie ook

[Floor](./floor.md)

### Voorbeeld

``` basic4gl
print ceil(9.1)
print ceil(-5.4)
```

geeft dan

    10
    -5

------------------------------------------------------------------------

[vorige](./atan.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./cos.md)
## Changedir

### Formaat

**changedir** *uitdrukking*\
**changedir** ( *uitdrukking* )

### Beschrijving

Met deze functie verandert de huidige ‘werk’ directory naar het pad zoals opgegeven in de *uitdrukking*.\
Voor alle systemen (Windows,Linux) geldt dat een forward slash (/) de verschillende folders van elkaar scheidt.

changedir komt van het Engelse “Change Directory” *(verander van folder)*.

### Zie ook

[Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### Voorbeeld

``` basic4gl
print currentdir ( ) //om huidige actieve directory te zien
changedir "./basic"
print currentdir ( ) // om de nieuwe actieve directory te zien
```

wordt dan

    /home/guest
    /home/guest/basic

### Nieuw vanaf

0.9.6r

------------------------------------------------------------------------

[Lezen en Schrijven](./write_and_read.md) \| [volgende](./close.md)
## Chr

### Formaat

**chr** ( *uitdrukking* )

### Beschrijving

Verandert een geheel getal van *uitdrukking* naar een enkel karakter string uitdrukking op basis van de ASCII waarde van het getal. Zie ook \*\*asc \*\* Voor de complete ASCII conversietabel.

### Zie Ook

[Asc](./asc.md)

### Voorbeeld

``` basic4gl
print chr(66)+chr(111)+chr(111)+chr(33)
```

toont dan

    Boo!

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./asc.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./decimal.md)
## Circle

### Formaat

**circle** *x*,*y*,*r*

### Beschrijving

Hiermee ga je dus een cirkel tekenen die het middelpunt heeft op de *x*,*y* coördinaat in het grafisch venster, met een straal van *r*

### Voorbeeld

``` basic4gl
color yellow
rect 0,0,300,300
color red
circle 120,120,80
```

toont het mooie beeld\
![circle.png](@site/static/img/wiki/nl/circle.png)

------------------------------------------------------------------------

[vorige](./getcolor.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./line.md)
## Clickb

### Formaat

**clickb**\
**clickb** ( )

### Beschrijving

De functie laat weten welke knop de gebruiker het laatst aangeklikt heeft in het ‘grafische venster’. En alleen daar dus!\
Er wordt 0 teruggegeven als er niet werd geklikt. Indien verschillende knoppen samen werden ingedrukt,dan wordt de som van die knoppen gegeven.

| Resultaten |                |
|------------|----------------|
| Waarde     | Welke muisknop |
| 0          | Gen enkele     |
| 1          | Links          |
| 2          | Rechts         |
| 4          | Midden         |

### Zie ook

[Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Voorbeeld

``` basic4gl
# wis de vorige muiskliks weg
clickclear
# wacht tot de gebruiker de muis aanklikt
print "Klik de muis in het grafisch venster"
while clickb = 0
  pause .01
endwhile
# Toon waar de gebruiker heeft geklikt
print "U klikte op de volgende plaats in het grafisch venster (" + clickx + "," + clicky + ")"
# Toon welke knop de gebruiker heeft geklikt
if clickb=0 then knop$="geen"
if clickb=1 then knop$="linkse"
if clickb=2 then knop$="rechtste"
if clickb=4 then knop$="middenste"
 
print "U klikte op de " + knop$ + " knop."
```

Het lukt maar niet om iets 2 knoppen tegelijk aan te klikken. Lukt het u?

### Nieuwe vanaf

0.9.4d

------------------------------------------------------------------------

[Muisbesturing](./mouse_interaction.md) \| [volgende](./clickclear.md)
## Clickclear

### Formaat

**clickclear**\
**clickclear** ( )

### Beschrijving

De functie zet de waarden van [ClickB](./clickb.md), [Clickx](./clickx.md), en [Clicky](./clicky.md) op nul om zo de volgende klik correct te kennen.

### zie ook

[Clickb](./clickb.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Voorbeeld

zie voorbeeld bij [clickb](./clickb.md)

### Nieuwe vanaf versie

0.9.4d

------------------------------------------------------------------------

[vorige](./clickb.md) \| [Muisbesturing](./mouse_interaction.md) \| [volgende](./clickx.md)
## Clickx

### Formaat

**clickx**\
**clickx** ( )

### Beschrijving

De functie geeft de x-coördinaat terug van de plaats waar u het laatst in het grafisch venster hebt geklikt. De x-coördinaat is de horizontale as van links naar rechts.

### Zie ook

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Voorbeeld

Zie voorbeeld bij [Clickb](./clickb.md).

### Nieuw vanaf

0.9.4d

------------------------------------------------------------------------

[vorige](./clickclear.md) \| [Muisbesturing](./mouse_interaction.md) \| [volgende](./clicky.md)
## Clicky

### Formaat

**clicky**\
**clicky** ( )

### Beschrijving

De functie geeft de y-coördinaat terug van de plaats waar u het laatst in het grafisch venster hebt geklikt. De y-coördinaat is de vertikale as van beneden naar boven.

### Zie ook

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clickx](./clickx.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Voorbeeld

Zie voorbeeld bij [Clickb](./clickb.md).

### Nieuw vanaf

0.9.4d

------------------------------------------------------------------------

[vorige](./clickx.md) \| [Muisbesturing](./mouse_interaction.md) \| [volgende](./mouseb.md)
## Clg

### Formaat

clg

### Beschrijving

Wist het grafisch venster. Je gebruikt dit meestal als je een programma begint, als je iets nieuws wil tonen.

### Voorbeeld

``` basic4gl
rem er worden nu een paar vierhoeken getekend.
color yellow
rect 10,10,50,50
color blue
rect 50,50,30,80
color red
rect 100,100,10,50
pause 5 # die krijg je 5 seconden te zien
clg
print "grafisch venster is leeggemaakt !" 
```

------------------------------------------------------------------------

[vorige](./textwidth.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./fastgraphics.md)
## Close

### Formaat

**close**\
**close** ( )\
**close** *Bestandnr*\
**close** ( *Bestandnr* )

### Beschrijving

Deze functie sluit een bestand dat open is. Indien dat bestand niet open was, dan gebeurt er niets. Indien het *Bestandnr* niet wordt weergegeven, wordt 0 genomen .

Als je verwijst naar een bestandsnummer dat niet bestaat, krijg je wel een foutmelding.

close betekent *(sluiten)* in het Engels.

### Zie ook

[Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md)

### Voorbeeld

``` basic4gl
print currentdir ( )
open(1, "bestand.txt")
close 1
```

geeft geen feedback.

``` basic4gl
print currentdir ( )
open(1, "bestand.txt")
close 
```

Geeft foutbericht. De close functie probeert bestandnummer 0 te sluiten, maar die bestaat niet, en je krijgt de fout: FOUT op lijn 4: File not open.

------------------------------------------------------------------------

[vorige](./changedir.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./dir.md)
## Cls

### Formaat

**cls**

### Beschrijving

Deze opdracht wist de informatie die in het teskstvenster staat.

#### Voorbeeld

``` basic4gl
 print " dit is een printopdracht met een grote tekst die over verschillende lijnen getoond wordt. Binnen enkele ogenblikken zal deze tekst gewist worden."
 pause 7
 cls
```

------------------------------------------------------------------------

[vorige](./print.md) \| [klavier en tekst](./keyboard.md) \| [volgende](./outputvisible.md)
## Color

### Formaat

**color** *kleurnaam*\
**color** ( *kleurnaam* )\
**color** *rood*, *blauw*, *groen*\
**color** ( *rood*, *blauw*, *groen* )\
**color** *rgb_waarde*\
**color** ( *rgb_waarde* )\

### Beschrijving

Zet de waarde van het *potlood*

- in de opgegeven *kleurnaam*
- in een RGB kleur die samengesteld is door een waarde van *rood*, *blauw*, *groen*
- of in een kleur opgegeven door de rgb waarde.

Er bestaat ook een *kleurnaam* **CLEAR**, met een waarde **-1**. Dit komt overeen met de gom. De tekening of de pixel wordt dan doorzichtig. Dit laatste is vooral nuttig als je met sprites werkt via de [Spriteslice](./spriteslice.md) opdracht.\

| Kleurnamen en RGB waarden |  |  |
|----|----|----|
| Kleurnaam[^1] | RGB Waarde |  |
| black | 0, 0, 0 | \<hi \#000000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| white | 255, 255, 255 | \<hi \#FFFFFF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| red | 255, 0, 0 | \<hi \#FF0000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkred | 128, 0, 0 | \<hi \#800000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| green | 0, 255, 0 | \<hi \#00FF00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkgreen | 0, 128, 0 | \<hi \#008000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| blue | 0, 0, 255 | \<hi \#0000FF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkblue | 0, 0, 128 | \<hi \#000080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| cyan | 0, 255, 255 | \<hi \#00FFFF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkcyan | 0, 128, 128 | \<hi \#008080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| purple | 255, 0, 255 | \<hi \#FF00FF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkpurple | 128, 0, 128 | \<hi \#800080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| yellow | 255, 255, 0 | \<hi \#FFFF00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkyellow | 128, 128 ,0 | \<hi \#808000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| orange | 255, 102, 0 | \<hi \#FF6600\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkorange | 176, 61 ,0 | \<hi \#B03D00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| grey | 164, 164 ,164 | \<hi \#A4A4A4\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| darkgrey | 128, 128 ,128 | \<hi \#808080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |
| clear | -1 | \~~SP\~~ |

### Zie ook

[Rgb](./rgb.md), [GetColor](./getcolor.md)

### Voorbeeld

``` basic4gl
clg
color rgb(128,128,128)
rect 0,0,graphwidth, graphheight
color red
circle 100,100,50
color 255,160,160
circle 100,100,25
```

tekent een grijs vierkant met een rode stip ( cirkel) met een roze middelpunt.

![Color](@site/static/img/wiki/en/color.png)

### Nieuw vanaf

0.9.5m

------------------------------------------------------------------------

[Tekenen en kleuren](./a_real_dali.md) \| [volgende](./rgb.md)

[^1]: kleur moet in het Engels opgegeven worden
## Cos

### Formaat

**cos** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de cosinus van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\

Meer informatie over deze functie vind je op de wiki : [cos](http://nl.wikipedia.org/wiki/Cosinus)

### Voorbeeld

``` basic4gl
clg
color black
# tekent de assen
line 0,150,300,150
line 150,0,150,300
# we starten hier
color blue
lastx = 0
lasty = cos(0) * 50 + 150
# now step across the line and draw
for x = 0 to 300 step 5
   angle = x / 300 * 2 * pi
   y = cos(angle) * 50 + 150
   line lastx, lasty,x, y
   lastx = x
   lasty = y
next x
```

++++geeft dan :\|
![cosi.png](@site/static/img/wiki/nl/cosi.png)
++++

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./ceil.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./degrees.md)
## Currentdir

### Formaat

**currentdir**\
**currentdir** ( )

### Description

Geeft het volledig gekwalificeerd pad naar de werking directory van BASIC-256

Om de folders van elkaar te scheiden worden altijd Forward Slashes (/) gebruikt.

### Zie ook

[Changedir](./changedir.md), [Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### Voorbeeld

``` basic4gl
print currentdir ( )
```

geeft dan

    /home/guest

### Nieuw vanaf

0.9.6r

------------------------------------------------------------------------

[vorige](./close.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./eof.md)
## Day

### Formaat

**day**\
**day** ( )

### Beschrijving

Geeft de dag terug op basis van de datum van de computer (1-31).

### Zie ook

[Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### Voorbeeld

``` basic4gl
print "Het is vandaag ";
print  day + "/" + (month + 1) + "/" + year
```

geeft volgend resultaat\|

    Het is vandaag 29/01/2012

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[Datum en Uur](./datehour.md) \| [volgende](./month.md)
## DBClose

### Formaat

**dbclose**\
**dbclose** ( )

### Beschrijving

De functie sluit de SQLite database.

### Voorbeeld

Zie het voorbeeld bij [DBOpen](./dbopen.md) .

### Zie ook

[DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Externe Links

Meer informatie over databases in het algemetn en SQLite in het bijzonder vind je op [SQLite Home Page](http://sqlite.org) en [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

Databank \| [volgende](./dbcloseset.md)
## DBCloseSet

### Formaat

**dbcloseset**\
**dbcloseset** ( )

### Beschrijving

De functie sluit de recordset die via [DBOpenSet](./dbopenset.md) geopend werd.

### Voorbeeld

zie voorbeeld bij [DBOpen](./dbopen.md).

### Zie Ook

[DBClose](./dbclose.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Nieuw Vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbclose.md) \| Databank \| [volgende](./dbexecute.md)
## DBExecute

### Formaat

**dbexecute** *SqlOpdracht*\
**dbexecute** ( *SqlOpdracht* )

### Beschrijving

De functie voert de *SqlOpdracht* uit op de open SQLite database. Deze opdracht opent geen recordset !\
De *SQLOdracht* dit hiermee meestal wordt uitgevoerd is een insert of update opdracht, of ook wel een DDL opdracht.\
Als je een Sql opdracht wil uitvoeren om informatie uit te lezen, wordt [DBOpenSet](./dbopenset.md) gebruikt.

### Voorbeeld

Voorbeeld is uitegewerkt op de [DBOpen](./dbopen.md) page.

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbcloseset.md) \| Databank \| [volgende](./dbfloat.md)
## DBFloat

### Formaat

**dbfloat** ( *Kolomnummer* )

### Beschrijving

De functie geeft een de waarde van *kolomnummer* van de open recordset terug als decimale waarde.

### Voorbeeld

UItgewerkt voorbeeld vind je op de [DBOpen](./dbopen.md) pagina.

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbexecute.md) \| Databank \| [volgende](./dbint.md)
## DBInt

### Formaat

**dbint** ( *Kolomnummer* )

### Beschrijving

De functie geeft een de waarde van *kolomnummer* van de open recordset terug als geheel getal.

### Voorbeeld

Uitgewerkt voorbeeld vind je op de [DBOpen](./dbopen.md) pagina.

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbfloat.md) \| Databank \| [volgende](./dbopen.md)
## DBOpen

### Formaat

**dbopen** *SQLiteFile*\
**dbopen** ( *SQLiteFile* )

### Beschrijving

De functie opent een SQLite database bestand. Als het bestand niet bestaat, dan wordt het aangemaakt.

### Voorbeeld

``` basic4gl
#database foo - maak de database aan, zet dat in de database - open dan een recordset en lees de data uit de tabel.

# maak een nieuw bestand aan en open het
dbopen "dbtest.sqlite3"

# wis de oude tabel, vang de fout op indien de tabel niet bestaat. 
onerror errortrap
dbexecute "drop table foo;"
offerror
# create and populate
dbexecute "create table foo (id integer, words text, value decimal);"
dbexecute "insert into foo values (1,'een',3.14);"
dbexecute "insert into foo values (2,'twee',6.28);"
dbexecute "insert into foo values (3,'drie',9.43);"

# open een recordset en ga door alle rijen
dbopenset "select * from foo order by words;"
while dbrow()
    print dbint(0) + dbstring(1) + dbfloat(2)
end while
dbcloseset

# Sluit de boel maar
dbclose
end

errortrap:
# 't is goed, ga gewoon verder 
return
```

toont dan

    1een3.14
    3drie9.43
    2twee6.28

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Externe Links

Meer informatie over database en SQLLite vind je op [SQLite Home Page](http://sqlite.org) en [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbint.md) \| Databank \| [volgende](./dbopenset.md)
## DBOpenset

### Formaat

**dbopenset** *SqlOpdracht*\
**dbopenset** ( *SqlOpdracht* )

### Beschrijving

De functie voert een SQLOpdracht uit op de open database en maakt een recordset aan zodat het programma door het resultaat kan.

### Voorbeeld

Uitgewerkt voorbeeld terug te vinden op [DBOpen](./dbopen.md).

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbopen.md) \| Databank \| [volgende](./dbrow.md)
## DBRow

### Formaat

**dbrow**\
**dbrow** ( )

### Beschrijving

De functie wordt gebruikt om naar het volgend record in de open recordset te gaan.\
De functie geef *true* weer als er een nieuwe rij werd gelezen, of geeft een *false* als er geen nieuwe rij werd uitgelezen en je op het einde van de recordset staat.

### Voorbeeld

Het uitgewerkt voorbeeld vind je bij [DBOpen](./dbopen.md).

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBString](./dbstring.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbopenset.md) \| Databank \| [volgende](./dbstring.md)
## DBString

### Formaat

**dbstring** ( *Kolomnummer* )

### Beschrijving

De functie geeft een de waarde van *kolomnummer* van de open recordset terug als string.

### Voorbeeld

Uitgewerkt voorbeeld vind je op de [DBOpen](./dbopen.md) pagina.

### Zie ook

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBInt](./dbint.md)

### Nieuw vanaf

0.9.6y

------------------------------------------------------------------------

[vorige](./dbrow.md) \| Databank
## Degrees

### Formaat

**degrees** ( *expression* )

### Beschrijving

![radians.png](@site/static/img/wiki/en/radians.png)

Deze functie converteert een hoek in radianen naar graden.

### Voorbeeld

``` basci4gl
print 2*pi
print degrees(2*pi)
```

geeft dan

    6.283185
    360

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./cos.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./exp.md)
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
## Do / Until

### Formaat

**do**\
*opdracht(en)*\
**until** *booleanvoorwaarde*

### Beschrijving

Voert de *opdracht(en)* in de do lus tot de *booleanvoorwaarde* de waarde false teruggeeft. Do / Until voert de opdracht **minstens één keer uit**.

De test wordt uitgevoerd na de uitvoering van de opdracht(en).

### Zie ook

[For / Next](./fornext.md), [While / End While](./whileendwhile.md)

### Voorbeeld

``` basic4gl
t = 1
do
  print t
  t = t + 1
until t > 5
```

Geeft volgend resultaat

    1
    2
    3
    4
    5

### Nieuw Vanaf

0.9.4g

------------------------------------------------------------------------

[vorige](./fornext.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./end.md)
## End

### Formaat

end

### Beschrijving

Dez opdracht stop de uitvoering van het programma

### Voorbeeld

``` basic4gl
print "Ik heb gedaan."
end
print "Of niet soms?"
```

zal het volgende tonen

    Ik heb gedaan.

Zoals je ziet, wordt de volgende opdracht niet meer uitgevoerd.

------------------------------------------------------------------------

[vorige](./dountil.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./gosubreturn.md)
## Eof

### Formaat

eof\
eof()\
eof(*Bestandnr*)

### Beschrijving

Met deze functie kan je weten of we het laatste stukje van een bestand hebben bereikt of niet ( true/false)[^1]. Als je het *Bestandnr* niet meegeeft, dan wordt bestandnummer 0 verondersteld.

Je krijgt een foutmelding als je EOF probeert te doen op een bestandnummer dat geen open bestand bevat.

Je gebruikt deze functie om te weten of je alles al hebt gelezen bvb. Probeer je dan nog eens te lezen (na de EOF) dan krijg je een foutmelding.

### Zie ook

[Close](./close.md), [Exists](./exists.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### Voorbeeld

``` basic4gl
print currentdir ( )
open(1, "bestand.txt")
print eof(1)
close 1
```

geeft

    1 #omdat bestand.txt niets bevat 

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./currentdir.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./exists.md)

[^1]: true=1 en false=0
## Exists

### Formaat

exists ( *uitdrukking* )

### Beschrijving

Deze functie geeft een (true/false)[^1] terug om aan te tonen of het bestandspad naar het bestand zoals in *uitdrukking* bestaat of niet.\
Hou ermee rekening dat dze functie enkel weergeeft of het bestand dat je opgeeft bestaat in het opgegeven pad….

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### Voorbeeld

``` basic4gl
print currentdir ( ) # om te zien waar je bent
print exists ("success.wav") # dit is een bestand dat inderdaad in de opgegeven currentdir aanwezig is
print exists ("failed.wav") # dit is een bestand dat niet bestaat 
```

geeft dan

    /home/guest/basic
    1
    0

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./eof.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./kill.md)

[^1]: true=1 en false=0
## FastGraphics

### Formaat

fastgraphics

### Beschrijving

Met deze functie activeer je de *fastgraphics* mode tot je Basic-256 verlaat. Met de fastgrpahics mode gaat Basic-256 de grafische output of het grafisch venster, enkel aanpassen wanneer het \[refresh\]\] commando wordt meegegeven. Dit zorgt ervoor dat bij moeilijke en zware animaties het scherm niet begint te flikkeren.

### Opmerking

Indien je met iets maakt met animatie, is het beter dat je de tekenopdreachten in een subroutine plaatst en een refrech uitvoert nadat al het tekenwerk is gebeurd voor dat frame.

### Voorbeeld

``` basic4gl
nog uit te werken
```

### Zie Ook

[Refresh](./refresh.md)

------------------------------------------------------------------------

[vorige](./clg.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./graphheight.md)
## Float

### Formaat

float ( *expression* )

### Beschrijving

De functie converteert *expression* naar een decimaal getal.\
Float converteert zowel een integer getal als een string naar een decimaal getal.\
Indien de conversie niet lukt, wordt nul weergegeven !

### Zie Ook

[Int](./int.md)

``` basic4gl
a$= "5/10"
print a$
print float(a$)
```

toont

    5/10
    5

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./exp.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./floor.md)
## Floor

### Formaat

**floor** ( *uitdrukking* )

### Beschrijving

Afronden naar **beneden** (floor is het Engelse woord voor *vloer*).\
Het getal van de *uitdrukking* wordt daarbij afgerond naar het laagste gehele getal dat kleiner is dan of gelijk is aan het oorspronkelijke getal.\

- Voor positieve getallen wordt dat dus 3,14 → 3 en 5,85 → 5.
- Voor negatieve getallen wordt dezelfde regel toegepast: −4,24 → −5.

### Zie ook

[Ceil](./ceil.md)

### Voorbeeld

``` basic4gl
print floor(9.1)
print floor(-5.4)
```

geeft dan

    9
    -6

------------------------------------------------------------------------

[vorige](./float.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./int.md)
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
## For / Next

### Formaat

**for** *variabele* = *uitdrukking1* **to** *uitdrukking2* \[ **step** *uitdrukking3* \]\
*opracht(en)*\
**next** *variabele*

### Beschrijving

#### Tellergestuurde lussen

De FOR en NEXT opdrachten worden samen gebruikt om een of meerdere opdrachten verschillende keren na elkaar uit te voeren.
Wanneer de FOR opdracht voor het eerst wordt tegengekomen dan wordt de *variabele* naar de *uitdrukking1* gezet.\
Na elke NEXT opdracht, wordt *variabele* met 1 vermeerderd (standaard) , of door *uitdrukking3* indien de optionele opdracht STEP wordt gebruikt, tot de *variabele* groter of gelijk is aan *uitdrukking2* voor positieve stappen,of kleiner dan of gelijk aan *uitdrukking2* voor negateive stappen.

In een lus wordt een uitvoeringsblok meermalen doorlopen. Iedere keer dat deze doorlopen wordt, wordt een iteratie genoemd.

### Voorbeeld

``` basic4gl
for lus = 1 to 4
  print lus
 next lus
```

geeft als resultaat

    1
    2
    3
    4

### Zie ook

[Do / Until](./dountil.md), [While / End While](./whileendwhile.md)

------------------------------------------------------------------------

[vorige](./goto.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./dountil.md)
## GetColor

### Formaat

getcolor\
getcolor()

### Beschrijving

De functie geeft de huidige RGB waarde terug van de kleur van het potlood.
RGB wordt berekend door (((rood\*256)+groen\*256)+blauw).
De waarden van rood, groen en blauw moeten tussen 0 en 255 liggen.

Indien het potlood een transparante kleur heeft via de **CLEAR** kleur, wordt **-1** teruggegeven.

### Voorbeel

``` basic4gl
color red
print getcolor
```

geeft dan

    16711680

### Zie ook

[Color](./color.md), [Rgb](./rgb.md)

### Nieuw Vanaf

0.9.5m

------------------------------------------------------------------------

[vorige](./rgb.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./circle.md)
## GetSlice

### Formaat

getslice(*x*, *y*, *breedte*, *hoogte*)

### Beschrijving

de functie geeft een string terug die de hexadecimale representatie is van een vierhoek, op basis van de parameters die opgegeven zijn.\
De string bestaat uit verschillende onderdelen:

- Eerste 4 bytes voor de *breedte*
- Volgende 4 bytes voor de *hoogte*
- 6 bytes per pixel (breedte\*hoogte\*)

### Voorbeeld

``` basic4gl
print getslice(0,5,10,5)
```

geeft dan

    000a0005f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8f8

### Zie ook

[PutSlice](./putslice.md)

### Nieuw vanaf

0.9.6b

------------------------------------------------------------------------

[vorige](./imgsave.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./putslice.md)
## Goto

### Formaat

goto *etiket*

*etiket*

- moet met een letter beginnen
- mag geen sleutelwoord zijn
- moet eindigen met :#

### Beschrijving

Gaat naar het *etiket*
Een etiket wordt ook vaak label genoemd in het engels en bij het programmeren.

Zoals je weet worden de opdrachten in een BASIC256 programma mooi na elkaar uitgevoerd. Met deze opdracht kan je daarvan afwijken en kan je het progamma heel wat verder of zelfs helemaal terug laten beginnen.

Met dat laatste mooet je wel opletten. Het is inderdaad mogelijk dat je daardoor in een lus terechtkomt dat nooit eindigt !!!! Dan blijft je programma voor altijd doorlopen, tenzij je het hardhandig stopt, maar dit is niet zo mooi.

- Een aantal programmeurs vindt het gebuik van goto in de programma’s niet altijd mooi en een goed idee.
- Zorg trouwens goed dat de label/etiket dat je meegeeft ook bestaat, anders krijg je een foutmelding van je programma.
- Het is een goede gewoonte geen sleutelwoorden te gebuiken voor je etiketten. Dit zal niet goed werken

### Zie ook

[Gosub / Return](./gosubreturn.md)

### Voorbeeld

``` basic4gl
print "Ik wil";
goto gaverder
print " geen";
gaverder: #
print " koekjes."
```

zal het volgende tonen

    Ik wil koekjes.

*print ” geen“* wordt dus niet uitgevoerd.

------------------------------------------------------------------------

[vorige](./goto.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./fornext.md)
## Gosub / Return

### Formaat

**gosub** *etiket*\
\
etiket:\
*opdracht(en)*\
**return**

*etiket*

- moet met een letter beginnen
- mag geen sleutelwoord zijn
- moet eindigen met :#

### Beschrijving

Gaat naar een welbepaald etiket. Wanneer het RETURN commando wordt tegengekomen,gaat het programma gewoon verder op de lijn die volgt op het GOSUB commando. GOSUB kunnen genest worden, je kan dus verschillende keren een GOSUB uitvoeren.

Ook hier moet je opletten. Als je veel GOSUB opdrachten gebruikt, kan het zijn dat je je eigen programma niet meer begrijpt. Dus als je een programma schrijft die ook door anderen zal worden gebruikt en aangepast, let je daarvoor extra op.

### Zie ook

[Goto](./goto.md)

### Voorbeeld

``` basic4gl
print "Ik wil";
gosub haaldelijst
print " eten.";
end
haaldelijst: #
print " koekjes,"
print " snoep,"
print " dessert"
return
```

zal het volgende tonen

    Ik wil koekjes, snoep, dessert eten

Voor // print ” eten.” // wordt uitgevoerd wordt eerst alles van *haaldelijst* tot *return* uitgeoverd.

![gosub.png](@site/static/img/wiki/nl/gosub.png)

------------------------------------------------------------------------

[vorige](./end.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./ifthen.md)
## Graphheight

### Formaat

graphheight\
graphheight()

### Beschrijving

Geeft de hoogte terug (y dimensie) van het huidig grafisch venster.

### Voorbeeld

Met volgend voorbeeld kleur ik het hele grafisch venster groen.\
\* Eerst wordt de grootte en breedte van het venster gezet via [graphsize](./graphsize.md),

- dan zet ik de tekenkleur op groen via [color](./color.md).
- Vervolgens maak ik een vierhoek met [rect](./rect.md), waarbij de hoogte overeenkomt met het grafisch venster, maar niet de breedte. Die blijft op 50 staan.

Je kan ook de grootte van de vierkant met getallen invullen, maar dan wordt geen rekening gehouden met het grafisch venster. Als je dan een groter of kleiner venster maakt, klopt je tekening niet meer.

``` basic4gl
clg
graphsize 100,100
color green
rect 0,0,50,graphheight
```

### Zie ook

[Graphsize](./graphsize.md), [Graphwidth](./graphwidth.md)

### Nieuw vanaf

0.9.3

------------------------------------------------------------------------

[vorige](./fastgraphics.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./graphsize.md)
## Graphsize

### Formaat

graphsize *breedte*, *hoogte*

### Beschrijving

Verandert de grootte van het grafische venster en past dan ook de Basic-256 venster aan.
*breedte* en *grootte* worden in pixels uitgedrukt en zijn tussen 0 en … *de grootte van je scherm*.\
Dit zijn sommige standaard formaten :

- 800x600
- 1024x768

### Opmerkingen

- Als je de grootte van het grafisch venster groter maakt dan je scherm, verdwijnen knoppen en andere delen van het Basic-256 scherm. Dit maakt het verder lastig, bvb om je programma te bewaren voor je de applicatie verlaat.
- Als je Basic-256 aflsuit en je start terug op dan heb je de standaard grootte terug ( 300x300)
- je kan eigenlijk ook waarden \< 0 meegeven. Wat zie je dan nog?

Met volgend voorbeeld kleur ik het hele grafisch venster groen.\
\* Eerst wordt de grootte en breedte van het venster gezet via [graphsize](./graphsize.md),

- dan zet ik de tekenkleur op blauw via [color](./color.md).)
- Vervolgens maak ik een vierhoek met [rect](./rect.md), waarbij de grootte en de breedte overeenkomen met het grafisch venster [graphwidth](./graphwidth.md),[graphheight](./graphheight.md).

Dit alles was nodig om de grootte van het grafisch venster te tonen. Probeer gerust andere groottes.

``` basic4gl
clg
graphsize 800,600
color blue
rect 0,0,graphwidth,graphheight
```

### Zie ook

[Graphheight](./graphheight.md), [Graphwidth](./graphwidth.md)

### Nieuw vanaf

0.9.3

------------------------------------------------------------------------

[vorige](./graphheight.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./graphvisible.md)
## Graphwidth

### Formaat

graphwidth\
graphwidth()

### Beschrijving

Geeft de breedte terug (x dimensie) van het huidig grafisch venster.

### Voorbeeld

Met volgend voorbeeld kleur ik het hele grafisch venster groen.\
\* Eerst wordt de grootte en breedte van het venster gezet via [graphsize](./graphsize.md),

- dan zet ik de tekenkleur op groen via [color](./color.md).
- Vervolgens maak ik een vierhoek met [rect](./rect.md), waarbij de breedte overeenkomt met het grafisch venster, maar niet de hoogte. Die blijft op 20 staan.

Je kan ook de grootte van de vierkant met getallen invullen, maar dan wordt geen rekening gehouden met het grafisch venster. Als je dan een groter of kleiner venster maakt, klopt je tekening niet meer.

``` basic4gl
clg
graphsize 100,100
color green
rect 0,0,graphwidth,20
```

### Zie ook

[Graphsize](./graphsize.md), [Graphheight](./graphheight.md)

### Nieuw vanaf

0.9.3

------------------------------------------------------------------------

[vorige](./graphvisible.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./refresh.md)
## Hour

### Formaat

hour\
hour()

### Beschrijving

Geeft het uur terug op basis van de tijd van de computer (0-23).

### Voorbeeld

``` basic4gl
# Toon een leesbare datum
dim months$(12)
months$ = {"Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli", "Augustus", "September", "October", "November", "December"}
print right("0" + day, 2) + "-"  months$[month] + "-" + year 
# Toon een leesbare datum
h = hour
if h > 12 then
h = h - 12
ampm$ = "PM"
else
ampm$ = "AM"
end if
if h = 0 then h = 12
print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$
```

Toont ongeveer zo iets.\

    29-januari-2012
    10-00-02 PM

### Zie ook

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./year.md) \| [Datum en Uur](./datehour.md) \| volgende
## Instr

### Formaat

**instr** ( *hooiberg* , *naald* )\
**instr** ( *hooiberg* , *naald* , *start* )\
**instr** ( *hooiberg* , *naald* , *start* , *hoofdletterongevoelig*)\

### Beschrijving

Met deze functie ga je naar of je de string *naald* in de -grotere- string *hooiberg* kan vinden.\
\* als dit zo is, dan geeft de functie de plaats van de *naald* in de *hooiberg* terug, wat we ook de index noemen.
\* wordt niets gevonden, dan geeft de functie 0 terug.

Je kan ook opgeven dat er in de *hooiberg* pas vanaf positie *start* mag gezocht worden.\
Je kan bovendien meegeven of bij het zoeken ook gelt moet worden op het feit dat de zoektocht ook hoofdlettergevoelig is. Is dit niet zo, dan worden grote en kleine letters gelijkgesteld.

### Nota

De index begint op 1.

### Voorbeeld

``` basic4gl
print instr("Hello", "lo")
print instr("101,222,333",",",5)
```

geeft dan

    4
    8

### Versie

0.9.6.55

------------------------------------------------------------------------

[vorige](./decimal.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./instrx.md)
## Int

### Formaat

int ( *expression* )

### Beschrijving

De functie converteer de *expression* naar een geheel getal.
Zowel een string als een decimaal getal worden dan geconverteerd.Lukt de conversie niet, dan wordt 0 teruggestuurd.

Deze functie is vooral nuttig samen met de [rand](./rand.md) functie.

### Voorbeeld

``` basic4gl
a= 4.53
print a
print int(a)
```

geeft dan

    4.53
    4

### Zie ook

[Float](./float.md)

------------------------------------------------------------------------

[vorige](./floor.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./log.md)
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
## Imgload

### Formaat

**imgload** *x*, *y*, *bestandsnaam*\
**imgload** *x*, *y*, *schaal*, *bestandsnaam*\
**imgload** *x*, *y*, *schaal*, *rotatie*, *bestandsnaam*\

### Beschrijving

Met deze functie wordt een beeld opgeladen van een bestand en wordt het weergegeven in het grafisch venster.\
Met de paramaters *x* en *y* geeft je aan waar het CENTRUM van het beeld moet staan. Hiermee wijkt deze functie af van alle andere grafische functies.\
Als er wordt geroteerd, is dat op basis van het centrale punt, kloksgewijs, en hoek wordt in radianen opgegeven.\
Je kan het beeld ook aanpassen in de schaal , met andere woorden, je kna het verkleinen of vergroten.\
De functie werkt voor de meeste bestanden:

- BMP (Windows Bitmap)
- GIF (Graphic Interchange Format)
- JPG/JPEG (Joint Photographic Experts Group)
- PNG (Portable Network Graphics).\

### Voorbeeld

``` basic4gl
nog uit te werken
```

### Zie ook

[ImgSave](./imgsave.md)

### Nieuw vanaf

0.9.6l

------------------------------------------------------------------------

[vorige](./refresh.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./imgsave.md)## Input

### Formaat

**input** *uitdrukking*, *stringvariable*\
**input** *uitdrukking*, *numericvariable*\
**input** *stringvariable*\
**input** *numericvarvariable*

### Beschrijving

De *input* opdracht wacht tot de gebruiker iets intijpt op het klavier en op ‘return’ of ‘enter’ klikt.
Op dat moment wordt hetgene ingetijpt is opgeslagen in de *stringvariabele* of de *numvericvariable* afhankelijk van hoe het in het programma is aangegeven.

Indien de *input* ook een *uitdrukking* heeft, dan wordt deze op het scherm getoond. Dit is niet verplicht, maar helpt wel om aan de gebruiker mee te geven wat hij moet doen.

Indien de gebruiker een string intijpt terwijl het programma een getal verwacht, dan wordt de *numericvariabele* gelijk aan 0.

Er kunnen ook referenties naar array elementen worden gemaakt.

### Voorbeeld

``` basic4gl
input "Hoe heet je ?", naam$
input "Hoe oud ben je?", leeftijd$ 
print "Hello " + naam$ + ". Ik denk dat je " + leeftijd$ + " jaar oud bent. Klopt nietwaar?"
```

![input.png](@site/static/img/wiki/nl/input.png)

------------------------------------------------------------------------

[Klavier en Tekst](./keyboard.md) \| [volgende](./key.md)
## Key

### Formaat

key\
key()

### Beschrijving

Geeft onmiddellijk de gehele waarde terug die overeenkomt met de toets die op het toestenbord werd ingedrukt.
Als geen enkele toets werd ingedrukt sinds de laatste keer de opdracht werd opgeroepen, dan wordt 0 teruggestuurd.

### Opemerking

``` basic4gl
if key = 47 then print key
```

zal niet het verwachte resultaat geven, omdat het twee keer na elkdaar de opdracht uitvoert, en telkens een verschillend resultaat teruggeeft.

Dit geeft echter het resultaat dat je verwacht:

``` basic4gl
a = key
if a = 47 then print a
```

------------------------------------------------------------------------

[vorige](./input.md) \| [klavier en tekst](./keyboard.md) \| [volgende](./print.md)
## LastError

### Formaat

**lasterror**\
**lasterror** ( )

### Beschrijving

Geeft het laatste foutnummer terug dat werd tegengekomen bij het uitvoeren van het programma.

### Voorbeeld

Voorbeeld is terug te vinden op de [foutboodschappenpagina](./errorcodes.md)

### Zie ook

[Error Codes](./errorcodes.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Nieuw vanaf

0.9.6z

------------------------------------------------------------------------

[Foutafhandeling](./errorhandling.md) \| [volgende](./lasterrorextra.md)
## LastErrorExtra

### Formaat

**lasterrorextra**\
**lasterrorextra** ( )

### Beschrijving

Geeft “extra” informatie over de fout.

### Voorbeeld

Volg het voorbeeld van de [foutboodschappen lijst](./errorcodes.md)

### Zie Ook

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Nieuw vanaf

0.9.6z

------------------------------------------------------------------------

[vorige](./lasterror.md) \| [Foutafhandeling](./errorhandling.md) \| [volgende](./lasterrorline.md)
## LastErrorLine

### Formaat

**lasterrorline**\
**lasterrorline** ( )

### Beschrijving

Geeft het lijnnummer weer van de lijn in het programma waar de fout zich voordeed.

### Voorbeeld

Volg het voorbeeld van de [foutboodschappen lijst](./errorcodes.md)

### Zie Ook

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Nieuw vanaf

0.9.6z

------------------------------------------------------------------------

[vorige](./lasterrorextra.md) \| [Foutafhandeling](./errorhandling.md) \| [volgende](./lasterrorextra.md)
## LastErrorMessage

### Formaat

**lasterrormessage**\
**lasterrormessage** ( )

### Beschrijving

Geeft de laatste foutboodschap terug.

### Voorbeeld

Volg het voorbeeld van de [foutboodschappen lijst](./errorcodes.md)

### Zie Ook

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Nieuw vanaf

0.9.6z

------------------------------------------------------------------------

[vorige](./lasterrorline.md) \| [Foutafhandeling](./errorhandling.md) \| [volgende](./offerror.md)
## Left

### Formaat

left( *string*, *lengte*)

### Beschrijving

De functie geeft *lengte* karakters van *string* terug, te beginnen van links.

### Zie ook

[Mid](./mid.md), [Right](./right.md)

### Voorbeeld

``` basic4gl
print left("Hello allemaal, blij dat jullie er zijn", 4)
```

tootn dan

    Hello

### Nieuw vanaf

0.9.5b

------------------------------------------------------------------------

[vorige](./implode.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./length.md)
## Length

### Formaat

length( *string* )

### Beschrjiving

Deze functie geeft het aantal karakters van de string *string*

### Voorbeel

``` basic4gl
a$= "Hoe lang is dit zinnetje nu?"
print a$
print "de string a is " + length(a$) + " karakters lang."
```

geeft dan

    Hoe lang is dit zinnetje nu?
    de string a is 28 karakters lang.

------------------------------------------------------------------------

[vorige](./left.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./lower.md)
## Line

### Formaat

**line** *x<sub>0</sub>*, *y<sub>0</sub>*, *x<sub>1</sub>*, *y<sub>1</sub>*\
**line**(*x<sub>0</sub>*, *y<sub>0</sub>*, *x<sub>1</sub>*, *y<sub>1</sub>*)

### Beschrijving

Met deze functie teken je een … lijn :-)\

De lijn gaat van (*x<sub>0</sub>*,*y<sub>0</sub>*) naar (*x<sub>1</sub>*,*y<sub>1</sub>*)

### Voorbeeld

``` basic4gl
color white
rect 0,0,300,300
color black
line 50,50,200,200
line 100,200,200,200
line 100,200,50,50
```

maakt volgende tekening

![Line](@site/static/img/wiki/en/line.png)

------------------------------------------------------------------------

[vorige](./circle.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./plot.md)
## Log

### Formaat

log ( *expression* )

### Beschrijving

Geeft het [natuurlijk logaritme](http://nl.wikipedia.org/wiki/Natuurlijke_logaritme) van *expression* terug.

### Voorbeeld

``` basic4gl
a= 10
print a
print log(a)
```

geeft dan

    10
    2.302585

### Zie Ook

[Log10](./log10.md)

### Nieuw vanaf

0.9.5w

------------------------------------------------------------------------

[vorige](./int.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./log10.md)
## Log10

### Formaat

log10 ( *expression* )

### Beschrijving

De functie geeft de logaritme met grondtal 10 terug van *expression*.

### Voorbeeld

``` basic4gl
a= 10000
print a
print log10(a)
```

geeft

    10000
    4

### Zie ook

[Log](./log.md)

### Niew vanaf

0.9.5w

------------------------------------------------------------------------

[vorige](./log.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./radians.md)
## Lower

### Formaat

**lower**( *string*)

### Beschrijving

Deze functie verandert alle hoodletters in de *string* naar kleine letters.

### Zie ook

[Upper](./upper.md)

``` basic4gl
print lower("blaUw!")
```

wordt dan

    blauw!

### Nieuw vanaf

0.9.5e

------------------------------------------------------------------------

[vorige](./length.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./md5.md)
## Mid

### Formaat

**mid**( *string*, *start karakter*, *aantal*)

### Beschrjving

Hiermee krijg je een deel van je *string* terug , te beginnen van *karakter* en dat voor zoveel *aantal* karakters.

### Zie ook

[Left](./left.md), [Right](./right.md)

### Voorbeeld

``` basic4gl
print mid("Schipper mag ik overvaren?", 10, 3)
```

tootn

    mag

------------------------------------------------------------------------

[vorige](./lower.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./md5.md)
## Minute

### Formaat

minute\
minute()

### Beschrijving

Geeft de minuten terug op basis van de tijd van de computer (0-59).

### Voorbeeld

``` basic4gl
# Toon een leesbare datum
dim months$(12)
months$ = {"Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli", "Augustus", "September", "October", "November", "December"}
print right("0" + day, 2) + "-"  months$[month] + "-" + year 
# Toon een leesbare datum
h = hour
if h > 12 then
h = h - 12
ampm$ = "PM"
else
ampm$ = "AM"
end if
if h = 0 then h = 12
print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$
```

Toont ongeveer zo iets.\

    29-januari-2012
    10-00-02 PM

### Zie ook

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./hour.md) \| [Datum en Uur](./datehour.md) \| [volgende](./second.md)
## Month

### Formaat

**month**\
**month**()

### Beschrijving

Geeft de maand terug op basis van de tijd van de computer.

- januari=\>**0** ( en niet 1 dus !!!! )
- februari=\>1
- maart=\>2
- april=\>3
- mei=\>4
- juni=\>5
- juli=\>6
- augustus=\>7
- september=\>8
- oktober=\>9
- november=\>10
- december=\>**11** ( geen 12 dus )

### Voorbeeld

``` basic4gl
cls
dim n$(12)
n$ = {"Jan", "Feb", "Mar", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
print day + "-" + n$[month] + "-" + year
```

Op nieuwjaar 2013 wordt dan volgende getoond

    1-Jan-2013

### Zie ook

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./day.md) \| [Datum en Uur](./datehour.md) \| [volgende](./year.md)
## Mouseb

### Formaat

**mouseb**\
**mouseb**()

### Beschrijving

De functie geeft de huidige knop weer die ingedrukt wordt, naar analogie van [clickb](./clickb.md), alleen gaat het hier over de knop die op het moment zelf wordt ingedukt.

| Resultaten |                              |
|------------|------------------------------|
| Waarde     | Muisknop die wordt ingedrukt |
| 0          | Geen                         |
| 1          | Links                        |
| 2          | Rechts                       |
| 4          | Midden                       |

### Zie ook

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Nieuw vanaf

0.9.4d

------------------------------------------------------------------------

[vorige](./clicky.md) \| [Muisbesturing](./mouse_interaction.md) \| [volgende](./mousex.md)
## MouseX

### Formaat

**mousex**\
**mousex** ( )

### Beschrijving

De functie geeft de x-coördinaat terug van de plaats waar u nu met de muis staat of waar u het laatst in het grafisch venster hebt geklikt. De x-coördinaat is de horizontale as van links naar rechts.

### Zie ook

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Voorbeeld

### Nieuw vanaf

0.9.4d

------------------------------------------------------------------------

[vorige](./mouseb.md) \| [Muisbesturing](./mouse_interaction.md) \| [volgende](./mousey.md)
## MouseY

### Formaat

**mousey**\
**mousey** ( )

### Beschrijving

De functie geeft de y-coördinaat terug van de plaats waar u nu met de muis staat of waar u het laatst in het grafisch venster hebt geklikt. De y-coördinaat is de vertikale as van beneden naar boven.

### Zie ook

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Voorbeeld

### Nieuw vanaf

0.9.4d

------------------------------------------------------------------------

[vorige](./mousex.md) \| [Muisbesturing](./mouse_interaction.md)
## NetClose

### Formaat

**netclose**\
**netclose** ( )\
**netclose** *socket_number*\
**netclose** ( *socket_number* )

### Beschrijving

De functie sluit de opgegeven netwerk connectie (*socket_nummer*). Als het *socket_number* niet opgegeven is, wordt de 0 gebruikt.

### Voorbeeld

Voorbeeld is uitgewerkt op [NetConnect](./netconnect.md).

### Zie ook

[NetAddress](./netaddress.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Nieuw vanaf

0.9.6.31

------------------------------------------------------------------------

[vorige](./netaddress.md)\| [Netwerk](./network.md) \| [volgende](./netconnect.md)
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
## NetData

### Formaat

**netdata**\
**netdata** ( )\
**netdata** *socket_number*\
**netdata** ( *socket_number* )

### Beschrijving

De functie geeft *true* terug als er data moet worden gelezen met de [NetRead](./netread.md) functie, andere geeft de functie *false* terug.\
Als het *socket_number* niet werd meegegeven, wordt 0 gebruikt.

### Voorbeels

Uitgewerkt voorbeeld op [NetConnect](./netconnect.md).

### Zie ook

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Nieuw vanaf

0.9.6.31

------------------------------------------------------------------------

[vorige](./netconnect.md) \| [Netwerk](./network.md) \| [volgende](./netlisten.md)
## NetListen

### Formaat

**netlisten** *port_number*\
**netlisten** ( *port_number*)\
**netlisten** *socket_number*, *port_number*\
**netlisten** ( *socket_number*, *port_number*)

### Beschrijving

De functie opent een netwerk connectie (server) op een specifieke poort en wacht dat een andere programma zich connecteert. Als de *socket_number* niet gespecifieerd is,wordt 0 gebruikt.

### Voorbeeld

Voorbeeld uitgewerkt op [NetConnect](./netconnect.md).

### Zie ook

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Nieuw vanaf

0.9.6.31

------------------------------------------------------------------------

[vorige](./netdata.md) \| [Netwerk](./network.md) \| [volgende](./netread.md)
## NetRead

### Formaat

**netread**\
**netread** ( )\
**netread** ( *socket_number* )

### Beschrijving

De functie leest de data van de open netwerk connectie op *socket_number* en geeft die terug als string.\
De functie wacht tot er data is ontvangen.
Indien er geen *socket_number* werd meegegeven, wordt 0 gebruikt.

### Voorbeeld

Voorbeeld uitgewerkt op [NetConnect](./netconnect.md) .

### Zie ook

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetWrite](./netwrite.md)

### Nieuw vanaf

0.9.6.31

------------------------------------------------------------------------

[vorige](./netlisten.md) \| [Netwerk](./network.md) \| [volgende](./netwrite.md)
## NetWrite

### Formaat

**netwrite** *string*\
**netwrite** ( *string* )\
**netwrite** *socket_number*, *string*\
**netwrite** ( *socket_number*, *string* )

### Beschrijving

De functie stuurt de *string* naar het opgegeven *socket_number* ( open netwerk connectie). Als dit nummer niet is opgegeven, wordt 0 gebruikt.

### Voorbeeld

Uitgewerkt voorbeeld op [NetConnect](./netconnect.md).

### Zie ook

[NetAddress](./netaddress.md), [NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md)

### Nieuw vanaf

0.9.6.31

------------------------------------------------------------------------

[vorige](./netread.md) \| [Netwerk](./network.md)
## Open

### Formaat

**open** *bestand*\
**open**(*bestand*)\
**open** *bestandsnr*, *bestand*\
**open**(*bestandsnr*, *bestand*)

### Beschrijving

Deze functie opent een bestand om erin te schrijven of te lezen.\
in *bestand* geef je de *bestandsnaam* op met een absoluut of relatief pad [^1]. Als je geen *bestandsnr* meegeeft, dan wordt het *bestandsnr* = 0. Open je dan een nieuw *bestand*, zonder evenwel het bestandsnr mee te geven, zorgt ervoor dat je eerder geopend bestand gesloten wordt.

Probeer dus altijd een *bestandsnr* mee te geven !

Indien het opgegeven bestand niet bestaat, krijg je geen foutmelding, maar wordt het bestand gewoon aangemaakt. Als je dus een bestaand bestand wil openen, wees dan zeker dat je het op de goede plaats zoekt ! Dit kan je doen met de [Exists](./exists.md) functie.

### Opmerking

Met BASIC256 mag je tot 8 bestanden tegelijk openen. Bestandnummers zijn dan 0 tot 7

### Voorbeeld

``` basic4gl
print currentdir ( )
open(1,"bestand.txt")
```

geen feedback… als het bestand bestaat wordt het geopend, anders wordt dat bestand aangemaakt.

### Zie Ook

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Kill](./kill.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./exists.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./read.md)

[^1]: zie moeilijke woorden
## offError

### Formaat

**offerror**\

### Beschrijving

Zet de foutafhandeling af. Hierdoor stopt het programma als er zich een fout voordoet.

### Voorbeeld

Volg het voorbeeld van de [foutboodschappen lijst](./errorcodes.md)

### Zie Ook

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Nieuw vanaf

0.9.6z

------------------------------------------------------------------------

[vorige](./lasterrormessage.md) \| [Foutafhandeling](./errorhandling.md) \| [volgende](./onerror.md)
## onError

### Formaat

**onerror** *label*

### Beschrijving

Activeert de foutafhandeling. De subroutine bij etiket *label* wordt bij een fout in het programma uitgevoerd.

Met een [Return](./gosubreturn.md) opdracht in de fout subroutine kan het programma daarna worden verdergezet.

### Voorbeeld

Volg het voorbeeld van de [foutboodschappen lijst](./errorcodes.md)

### Zie Ook

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Nieuw vanaf

0.9.6z

------------------------------------------------------------------------

[vorige](./offerror.md) \| [Foutafhandeling](./errorhandling.md)
## Pause

### Formaat

**pause** *seconden*\
**pause** (*seconden*)

### Beschrijving

Laat de computer *seconden* wachten vooraleer hij de volgende opdracht uitvoert.

De *seconden* waarden mag een decimale waarde zijn, dus je kan tot op de 100e seconde werken.

### Voorbeeld

``` basic4gl
Print "Ik begin nu"
pause 20
Print "en heb nu na 20 seconden gedaan"
```

( pas op, het voorbeeld duurt lang)

------------------------------------------------------------------------

[vorige](./ifthen.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./comment.md)
## Pixel

### Formaat

**pixel** (*x*, *y* )

### Beschrijving

De functie geeft de RGB waarde terug van de pixel die zich op (*x*,*y*) bevindt.\
Als de pixel sinds de laatster \[clg\] opdracht niet werd overschreven, of indien het werd overschreven met de *clear* kleur, dan wordt **-1** teruggegeven.

### Voorbeeld

\<code basic4gl\>
uit te werken
c/code\>

### Zie ook

[Rgb](./rgb.md)

### Nieuw vanaf

0.9.5m

------------------------------------------------------------------------

[vorige](./spritey.md) \| [Tekenen en kleuren](./a_real_dali.md)
## Plot

### Formaat

**plot** *x*, *y*\
**plot** ( *x*, *y* )

### Beschrijving

Met deze functie verander je éé pixel op plaats (*x*,*y*) in het grafisch venster in de kleur van het potlood.

:!: Opgelet :!: één pixel is klein ;-)

### Voorbeeld

Omdat één pixel zeer klein is, laat ik dus 100 pixels naast elkaar van kleur veranderen ;-)

``` basic4gl
clg
color red
for x=1 to 100 
plot 100+x,100
next x
```

zie je het resultaat ?

------------------------------------------------------------------------

[vorige](./line.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./poly.md)
## Poly

### Formaat

**poly** *numerieke array variabele*\
**poly** {x<sub>1</sub>, y<sub>1</sub>, x<sub>2</sub>, y<sub>2</sub>, x<sub>3</sub>, y<sub>3</sub> …}

### Beschrijving

De functie tekent een veelhoek ( polygoon).\
De hoeken van de veelhoek worden vastgelegd dankzij de (x,y) coördinaten die in de *numerieke array variabele* worden meegegeven. De array moet dus telkens een even aantal getallen bevatten !!!!\

Je kan de coördinaten ook onmiddellijk meegeven met de [poly](./poly.md) functie door de haakjes { }.

### Opmerking

Het aantal punten werd als parameter van het poly statement weggenomen sinds de versie 0.9.4

### Zie Ook

[Stamp](./stamp.md)

### Voorbeeld

``` basic4gl
color blue
rect 0,0,300,300
color green
dim driehoek(6) # met 3 maal 2 = 6 getallen
driehoek = {100, 180, 150, 80, 200,180}
poly driehoek
```

``` basic4gl
color blue
rect 0,0,300,300
color green
poly {100, 180, 150, 80, 200,180}
```

Beide programma’s tonen hetzelfde resultaat:\
![poly.png](@site/static/img/wiki/nl/poly.png)

------------------------------------------------------------------------

[vorige](./plot.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./rect.md)
## Print

### Formaat

**print** *uitdrukking* \[ ; \]

### Description

Deze opdracht schrijft de *uitdrukking* naar het tekstvenster. Indien de puntkomma wordt meegegeven, komt er geen nieuwe lijn op het einde.

Dit is waarschijnlijk ook de eerste opdracht die je geleerd zal hebben. Logisch, want dat is de manier waarop de computer met je communiceert!

### Voorbeeld

``` basic4gl
print "Hello World!"
print "Dit wordt op de nieuwe regel geprint.";
print " Maar dit niet. Dit komt op de tweede regel."
```

![print.png](@site/static/img/wiki/nl/print.png)

### Zie Ook

[Decimal](./decimal.md)

------------------------------------------------------------------------

[vorige](./key.md) \| [klavier en tekst](./keyboard.md) \| [volgende](./cls.md)
## PutSlice

### Formaat

**putslice** *x*, *y*, *slice\$*\
**putslice** *x*, *y*, *slice\$*, *doorichtige kleur*

### Beschrijving

Met deze functie toon je de tekening die je in een vorge stap in een slice string hebt gezet. Als je *transparent* meegeeft als kleur, dan worden die punten met die kleur ook niet getoond.

### Voorbeeld

``` basci4gl
clg
a$= getslice(0,5,10,5)
print a$
putslice(10,10,a$)

```

### Zie Ook

[GetSlice](./getslice.md)

### Nieuw vanaf

0.9.6b

------------------------------------------------------------------------

[vorige](./getslice.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritecollide.md)
## Radians

### Formaat

**radians** ( *expression* )

### Beschrijving

![radians.png](@site/static/img/wiki/en/radians.png)
Converteert een hoek in graden naar radianen.\

### Zie Ook

``` baci4gl
hoek = 360 
print "Hoek in graden: " + hoek
print "Hoek in radialen: " + radians(hoek)
```

geeft dan

    hoek = 360 
    Hoek in graden: 360
    Hoek in radialen: 6.283185

6.28 = 2\*pi

### Zie Ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Sin](./sin.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./log10.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./rand.md)
## Rand

### Formaat

**rand**\
**rand**()

### Beschrijft

De functie geeft een **willekeurig** getal tussen **0** en **1**. Er is een uniforme verdeling van de waarden.

### Opmerking

Om een willekeurig getal tussen 0 en 10 te krijgen, volstaat volgende combinatie: int(rand \* 10).

### Voorbeeld

``` basic4gl
for teller= 1 to 10 
eengetal = int(rand*100)
print eengetal
next teller
```

geeft bij deze test

    77
    32
    19
    75
    88
    41
    43
    23
    98
    71

maar dit zou bij jou andere getallen moeten leveren.

------------------------------------------------------------------------

[vorige](./radians.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./sin.md)
## Read

### Formaat

**read**\
**read**()\
**read**(*bestandsnr*)

### Beschrijving

Deze functie leest het bestand en geeft een token terug. Een token is een string van karakters die opgeslplitst zijn door een spatie, tab of nieuwe lijn opdracht, je krijgt dus alles in stukjes binnen. Telkens je dus een *spatie*,*tab* of *nieuwe lijn* tegenkomt.

Specifieer je geen bestandnummer dan gebruikt de functie bestandnr 0.

### Voorbeeld

``` basic4gl
((prorgamma gevonden in /home/.../basic/Examples/testing))  
# testlineio.kbs - test readline, writeline, and eof
# 2008-08-29 jmr

open "foo.txt"
reset
for l = 1 to 8
    writeline "Data file line " + l + "."
next l


l = 0
donext:
if eof then goto done
l = l + 1
a$ = read
print "line " + l + "=" + a$
goto donext

done:
print "total of " + l + " lines."
close
end
```

Dir programma opent eerst Foo.txt, maakt het leeg en schrijft er dan 8 regels in. VErvolgens wordt elke lijn uitgelezen als token in variable a\$ en uitgeschreven op het scherm. Dit ziet er dan zo uit:
++++Resultaat\|

    line 1=Data
    line 2=file
    line 3=line
    line 4=1.
    line 5=Data
    line 6=file
    line 7=line
    line 8=2.
    line 9=Data
    line 10=file
    line 11=line
    line 12=3.
    line 13=Data
    line 14=file
    line 15=line
    line 16=4.
    line 17=Data
    line 18=file
    line 19=line
    line 20=5.
    line 21=Data
    line 22=file
    line 23=line
    line 24=6.
    line 25=Data
    line 26=file
    line 27=line
    line 28=7.
    line 29=Data
    line 30=file
    line 31=line
    line 32=8.
    total of 32 lines.

++++

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./open.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./readline.md)
## Readline

### Formaat

**readline**\
**readline**()\
**readline**(*bestandsnr*)

### Beschrijving

Deze functie leest het bestand lijn per lijn uit.

Specifieer je geen bestandnummer dan gebruikt de functie bestandnr 0

### Voorbeeld

``` basic4gl
((prorgamma gevonden in /home/.../basic/Examples/testing))  
# testlineio.kbs - test readline, writeline, and eof
# 2008-08-29 jmr

open "foo.txt"
reset
for l = 1 to 8
    writeline "Data file line " + l + "."
next l


l = 0
donext:
if eof then goto done
l = l + 1
a$ = read
print "line " + l + "=" + a$
goto donext

done:
print "total of " + l + " lines."
close
end
```

Dir programma opent eerst Foo.txt, maakt het leeg en schrijft er dan 8 regels in. VErvolgens wordt elke lijn uitgelezen als token in variable a\$ en uitgeschreven op het scherm. Dit ziet er dan zo uit:
++++Resultaat\|

    line 1=Data file line 1.

    line 2=Data file line 2.

    line 3=Data file line 3.

    line 4=Data file line 4.

    line 5=Data file line 5.

    line 6=Data file line 6.

    line 7=Data file line 7.

    line 8=Data file line 8.

    total of 8 lines.

++++

------------------------------------------------------------------------

[vorige](./read.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./reset.md)
## Rect

### Formaat

**rect** *x*,*y*,*breedte*,*hoogte*\
**rect** ( *x*, *y*, *breedte*,*hoogte* )

### Bescrhijving

De functie tekent een vierhoek van *breedte* x *hoogte* pixels met in kleur van het potlood. De Linkerhoek van de vieruhoek bevindt zich op *x*,*y*.

### Voorbeeld

``` basic4gl
color white
rect 0,0,300,300
color red
rect 50,50,150,150
color blue
rect 100,100,150,150
color green
rect 10,140,280,20
```

geeft dan\
![rect.png](@site/static/img/wiki/en/rect.png)

------------------------------------------------------------------------

[vorige](./poly.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./stamp.md)
## Redim

### Formaat

**redim** *numeriekevariable*( *getal* )\
**redim** *stringvariable\$*( *getal* )\
**redim** *numeriekevariable*( *rijen* , *kolommen* )\
**redim** *stringvariable\$*( *rijen* , *kolommen* )

### Beschrijving

De functie past de dimensie aan van een eerder aangemaakte tabel, mét behoud van gegevens.\
Indien de array groter wordt, dan worden de nieuwe elementen in de tabel met 0 of met ’’ ( lege string) geïnitialiseerd. Wordt de tabel kleiner, dan verwijnen de elementen op het einde.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Dim](./dim.md)

### Nieuw vanaf

0.9.5t

------------------------------------------------------------------------

[volgende](./dim.md)\| [Tabellen](./arraycommands.md)
## Refresh

### Formaat

**refresh**

### Beschrijving

Deze functie ververst het grafisch venster om alles te tonen wat sinds het laatste refresh commando werd getekend. Deze functie wordt gebruikt samen met de [Fastgraphics](./fastgraphics.md) mode.

### Voorbeeld

``` basic4gl
nog uti te werken
```

### Zie ook

[Fastgraphics](./fastgraphics.md)

------------------------------------------------------------------------

[vorige](./graphwidth.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./imgload.md)
## \# ( Commentaar)

### Formaat

**rem** *vrij commentaar*\
**\#** *vrij commentaar*

### Beschrijving

Een lijn die met **rem** of **\#** begint wordt door BASIC256 overgeslagen.

Een goed programmeur neemt ook de tijd om zijn programma te voorzien met de nodige commentaar. Hierdoor wordt het mogelijk om een programma met anderen te delen. Neem dus de **goede gewoonte** aan om je programma’s te **voorzien van zinnige commentaar**. Zelfs als je de enige bent die je programma’s gaat bewerken. zal jij nog weten wat je 2 jaar geleden hebt geprogrammeerd en waarom?

### Voorbeeld

    # Dit programma zal 2 lijnen printen
    print "1st line"
    print "2nd Line"

------------------------------------------------------------------------

[vorige](./pause.md) \| [Programma Controle](./programcontrol.md) \| [volgende](./whileendwhile.md)
## Reset

### Formaat

**reset**\
**reset()**\
**reset**(*filenumber*)

### Beschrijving

Wist een open bestand. Alle informatie in het bestand is dan **verloren** !!\
Wees dus voorzichtig als je dit gebruikt. Als je geen bestandsnummer ingeeft, dan neemt de functie bestandsnummer 0.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
reset 1
write (1,"Hello")
write (1," Dit komt op dezelfde lijn na Hello")
close 1
```

Telkens als je dit programma uitvoert, dan open je Foo.txt, maak je het leeg en zet je er telkens dezelfde inhoud in.

Dit is de inhoud van Foo.txt

    Hello Dit komt op dezelfde lijn na Hello

Probeer nu eens de code verschillende keer na elkaar uit te voeren, maar neem de ‘Reset 1’ opdracht weg. Wat zie je?[^1]

### Zie Ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./readline.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./seek.md)

[^1]: dezelfde tekst komt zoveel malen terug als je het programma hebt uitgevoerd
## Rgb

### Formaat

**rgb**(*rood*, *groen*, *blauw* )

### Beschrijving

De functie geeft de rgb waarde weer van de combinatie van roog, groen en blauwe componentwaarden.\
De waarden van de 3 componenten moeten tussen 0 en 255 liggen.

### Voorbeeld

``` basic4gl
print rgb(0,100,255)
```

geeft dan

    -16751361 # dit is de kleurcode van lichtblauw.... 

### Zie ook

[Color](./color.md), [GetColor](./getcolor.md), [Pixel](./pixel.md)

### Nieuw vanaf

0.9.5m

------------------------------------------------------------------------

[vorige](./color.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./getcolor.md)
## Right

### Formaat

**right**( *string*, *aantal*)

### Beschrijving

Met deze funcite ga je het rechter gedeelte van *string* selecteren en dat zoveel *aantal* karakters van rechts beginnend.

### Zie ook

[Mid](./mid.md), [Left](./left.md)

### Voorbeeld

``` basic4gl
print right("Hello iedereen", 3)
```

geeft

    een

### Nieuw vanaf

0.9.5b

------------------------------------------------------------------------

[vorige](./replacex.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./string.md)
## Say

### Formaat

**say** *uitdrukking*\
**say** ( *uitdrukking* )

### Beschrijving

deze functie maakt gebruik van de Text-to-Speech (TTS) om de *uitdrukking* uit te spreken. De meeste operating systemen ( ubuntu, windows) hebben de TTS om teksten en informatie op het scherm om te zetten naar woorden

- In LINUX worden FLite of eSpeak libraries vereist.
- In Windows wordt de standaard SAPI stem gebruikt.

### Opemerking

Windows SAPI zal de stem gebruiken die je in je controlepaneel hebt gedefinieerd.
Om de standaard in Linux/Mac te veranderen op basis van de ESpeak library moet je de gewenste stembestanden naar *default* kopiëren.

``` java
# Opdrachten uit te voeren om 'nl' op Ubuntu 10.10 te activeren
# kan afwijken van je eigen systeem... 
cd /usr/share/espeak-data/voices
sudo cp nl default
```

### Voorbeeld

``` qbasic
say "Dit wordt een heel lange tekst om op te zeggen. Ik zal maar stoppen. 4 3 2 1 STOP."
Say " 1100234 euro"
say 100/10
```

Heb je gemerkt dat de comuter de leestekens en getallen goed uitspreekt? En dat je hem zelf het antwoord van een berekening kan laten zeggen?

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[Geluid](./sound_commands.md) \| [volgende](./sound.md)
## Hour

### Formaat

second\
second()

### Beschrijving

Geeft het aantal seconden terug op basis van de tijd van de computer (0-59).

### Voorbeeld

``` basic4gl
# Toon een leesbare datum
dim months$(12)
months$ = {"Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli", "Augustus", "September", "October", "November", "December"}
print right("0" + day, 2) + "-"  months$[month] + "-" + year 
# Toon een leesbare datum
h = hour
if h > 12 then
h = h - 12
ampm$ = "PM"
else
ampm$ = "AM"
end if
if h = 0 then h = 12
print  right("0" + h, 2) + "-" + right("0" + minute, 2) + "-" + right("0" + second, 2) + " " + ampm$
```

Toont ongeveer zo iets.\

    29-januari-2012
    10-00-02 PM

### Zie ook

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md), [Year](./year.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./minute.md) \| [Datum en Uur](./datehour.md) \| [volgende](./msec.md)
## Seek

### Formaat

**seek** *plaats*\
**seek** ( *plaats* )\
**seek** *filenumber*, *plaats*\
**seek** ( *filenumber*, *plaats* )

### Beschrijving

Deze funcite verplaatst de ‘lezen/schrijven’ plaats zoals opgegeven met *plaats* (aantal bytes vanaf het begin van het bestand)
Als je geen bestandnummer opgeeft, wordt de functie uitgevoerd op bestandnummer 0, voor zover die er is.

### Voorbeeld

FIXME

``` basic4gl
```

### zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Size](./size.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./size.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./size.md)
## Sin

### Formaat

**sin** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de sinus van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\

Meer informatie over deze functie vind je op de wiki : [sin](http://nl.wikipedia.org/wiki/Sunus)

### Voorbeeld

``` basic4gl
clg
color black
# tekent de horizontale as
line 0,150,300,150
line 150,0,150,300
# we starten hier
color blue
lastx = 0
lasty = sin(0) * 50 + 150
# teken nu de sinusoïdale
for x = 0 to 300 step 5
   angle = x / 300 * 2 * pi
   y = sin(angle) * 50 + 150
   line lastx, lasty,x, y
   lastx = x
   lasty = y
next x
```

++++geeft dan :\|
![sin.png](@site/static/img/wiki/nl/sin.png)
++++

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Degrees](./degrees.md), [Radians](./radians.md), [Cos](./cos.md), [Tan](./tan.md)

------------------------------------------------------------------------

[vorige](./rand.md) \| [Wiskundige Functies](./mathematical.md) \| [volgende](./sqr.md)
## Size

### Formaat

**size**\
**size()**\
**size**(*filenumber*)

### Beschrijving

Deze functie geeft weer hoe groot het bestand is in bytes[^1]. Geef je geen bestandnummer in, dan wordt de functie uitgevoerd op bestandnummer 0, als ze bestaat natuurlijk.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
print size(1) 
close 1
```

geeft dan

    /home/guest # werkdirectory :-) 
    40 # dit bestand is dus 40 bytes lang

Geef je geen bestandnummer in, dan probeert het programma 0. Maar aangezien er geen bestand geopend is voor 0, krijg je //FOUT op lijn 3: File not open. //

### Zie Ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md)

### Nieuw Vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./seek.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./write.md)

[^1]: <http://www.jeroen.com/woordenboek/binair_stelsel>
## Sound

### Formaat

**sound** *frequentie*, *duur*\
**sound** ( *frequentie*, *duur* )\
**sound** ( *deuntje* )\
**sound** *deuntje*\
**sound** {frequentie1, duur1, frequentie2, duur2, …}

### Beschrijving

Dankzij *sound* kan je een geluid om de luidsprekers van de computer laten horen.\
De *frequentie* wordt in [Hz.](http://nl.wikipedia.org/wiki/Hertz_(eenheid)) uitgedrukt en de *duur* in milliseconden (1000 in een seconde).

Je kan ook een deuntje opstellen in een array, waardoor je het vervelende klikgeluid tussen elke toon voorkomt.

### Opmerking

Ondersteuning voor geluid werd in LINUX systemen vanaf versie 0.9.5g. toegeovoegd.\
In versie 0.9.5h werd voor Windows gebruikt gemaakt van de standaard geluidsettings.

### Zie ook

[Volume](./volume.md)

### Voorbeeld

``` basic4gl
# Muziekstuk van J.S.Bach - XVIII Fuge in G moll.
tempo = 100 # noten per minuut
milimin = 1000 * 60 # miliseconds in een minuut
q = milimin / tempo # kwartnoot is een maat
h = q * 2 # halve note (2 quarters)
e = q / 2 # 1/8 note (1/2 quarter)
s = q / 4 # 1/16 note (1/4 quarter)
de = e + s # dotted eight - eight + 16th
dq = q + e # doted quarter - quarter + eight

sound{392, q, 587, q, 466, dq, 440, e, 392, e,466, e, 440, e, 392, e, 370, e, 440, e, 294, q,392, e, 294, e, 440, e, 294, e, 466, e, 440, s,392, s, 440, e, 294, e, 392, e, 294, s, 392, s,440, e, 294, s, 440, s, 466, e, 440, s, 392, s,440, s, 294, s}
```

Dit voorbeeld komt uit het boek *“So You Want to Learn to Program”?* van (James M. Reneau, M.S)

------------------------------------------------------------------------

[vorige](./say.md) \| [Geluid](./sound_commands.md) \| [volgende](./volume.md)
## Spritecollide

### Formaat

**spritecollide** ( *sprite1*, *sprite2*)

### Beschrijving

MEt deze functie kan je weten of 2 sprites tegen elkaar botsen of niet. De [spritecollide](./spritecollide.md) functie veronderstelt dat de 2 sprites met een rechthoek verbonden zijn ter grootte van het opgeladen beeld. De botsin wordt berekend door deze rechthoeken te gebruiken. Voor ronde of rare gevormde slides kan het dus zijn dat deze functie onterechte botsingen detecteerd.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie ook

[Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./putslice.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritedim.md)
## Spritedim

### Formaat

**spritedim** *n*\
**spritedim** ( *n* )

### Beschrijving

Deze functie maakt *n* sprite plaatshouders in het geheugen. Sprites worden in het programma aangeroepen door een nummer van 0 to n-1.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie ook

[Spritecollide](./spritecollide.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spritecollide.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spriteh.md)
## Spriteh

### Formaat

**spriteh** ( *spritenummer* )

### Beschrijving

De functie geeft de hoogte in pixels van een geladen sprite.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spritedim.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritehide.md)
## Spritehide

### Formaat

**spritehide** *spritenummer*
**spritehide** ( *spritenummer* )

### Beschrijving

De functie verbergt een sprite, de informatie erover blijft wel behouden.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spriteh.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spriteload.md)
## Spriteload

### Formaat

**spriteload** *spritenumber*, *filename*\
**spriteload** ( *spritenumber*, *filename* )

### Bescrhijving

De functie laadt een beeld uit een bestand op en bewaart het als sprit. De sprite is dan actief en beweegbaar, maar zal niet op het scherm te zien zijn tot de [spriteshow](./spriteshow.md) opdracht werd gegeven.\
Spriteload leest de meest gangbare formaten :

- BMP (Windows Bitmap)
- GIF (Graphic Interchange Format)
- JPG/JPEG (Joint Photographic Experts Group)
- PNG (Portable Network Graphics).

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spritehide.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritemove.md)
## Spritemove

### Formaat

**spritemove** *spritenummer*, *dx*, *dy*\
**spritemove** ( *spritenummer*, *dx*, *dy* )

### Beschrijving

De functie verschuift een sprite van zijn huidige positie met het opgegeven aantal pixels.\
De verschuiving blijft berpekt tot het huidie scherm.

### Voorbeeld

``` basic4gl
uit te werken.
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spriteload.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spriteplace.md)
## Spriteplace

### Formaat

**spriteplace** *spritenummer*, *x*, *y*\
**spriteplace** ( *spritenummer*, *x*, *y* )

### Bescrhijving

De functie zet het midden van een sprite op een specifiek plaats op het scherm.\
Naar analogie van de [imgload](./imgload.md) functie, gebrukt deze functie het midden van de sprite en niet de linkerbovenhoek zoals de meeste grafische functies.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spritemove.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spriteshow.md)
## Spriteshow

### Formaat

**spriteshow** *spritenummer*\
**spriteshow** ( *spritenummer* )

### Beschrijving

De functie verbergt de sprite met referentie *spritenummer*

### Voorbeeld

``` basic4gl
uit te werken.
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spriteplace.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spriteslice.md)
## Spriteslice

### Formaat

**spriteslice** *spritenummer*, *x*, *y*, *breedte*, *hoogte*\
**spriteslice** ( *spritenummer*, *x*, *y*, *breedte*, *hoogte* )

### Beschrijving

De functie kopiëert een rechthoekig oppervlakte van het scherm van de linkerbovenhoek zoals opgegeven met de coördinaten *x* en *y* en dit voor een de opgegeven *hoogte* en *breedte* in een nieuw sprite met *spritenummer*.\
De sprite is acitef en kan worden verschoven, maar is niet zichtbaar tot de [spriteshow](./spriteshow.md) opdracht werd gegeven.

## Opmerking

Het is aangewezen om eerst een \[clg\] commando uit te voeren vooraleer de sprite getekend en gesliced wordt.\
Ongeverfde pixels worden transparant wanneer de sprite getoond wordt op het scherm. Doorzichtige pixels kunnen ook gemaakt worden door met de kleur *clear* te werken.

### Voorbeeld

``` basic4gl
uit te werken 
```

### Zie ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6o

------------------------------------------------------------------------

[vorige](./spriteshow.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritev.md)
## Spritev

### Formaat

**spritev** ( *spritenummer* )

### Beschrijving

De functie geeft aan of de sprite getoond wordt of niet.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spriteh](./spriteh.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spriteslice.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritew.md)
## Spritew

### Formaat

**spritew** ( *spritenummer* )

### Beschrijving

De functie geeft de breedte in pixels van een geladen sprite.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spriteh](./spriteh.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spritev.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritex.md)
## Spritex

### Formaat

**spritex** ( *spritenummer* )

### Beschrijving

De functie geeft de x coördinaat van de het midden van een geladen sprite terug.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spriteh](./spriteh.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spritew.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./spritey.md)
## Spritey

### Formaat

**spritey** ( *spritenummer* )

### Beschrijving

De functie geeft de y coördinaat van een geladen sprite terug.

### Voorbeeld

``` basic4gl
uit te werken
```

### Zie Ook

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spriteh](./spriteh.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Nieuw vanaf

0.9.6n

------------------------------------------------------------------------

[vorige](./spritex.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./pixel.md)
## Stamp

### Format

**stamp** *x*, *y*, *array*\
**stamp** *x*, *y*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *schaal*, *array*\
**stamp** *x*, *y*, *schaal*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *schaal*, *rotatie*, *array*\
**stamp** *x*, *y*, *schaal*, *rotatie*, {x1, y1, x2, y2, x3, y3 …}

### Beschrijving

Met deze functie teken je een veelhoek (ploygoon) met de linkerbovenhoek in (*x*,*y*), in de opgegeven schaalgrootte *schaal* en draait dit in de opgegeven *rotatie* (kloksgewijs). Zowel *schaal* als *rotatie* zijn optioneel.\
De hoeken van de veelhoek worden zoals bij de [poly](./poly.md) functie gedefinieerd door het aantal (*x*,*y*) coördinaten in de *array*.\
Je kan de veelhoek ook definiëren met { } in plaats van de array.

### Zie ook

[Poly](./poly.md)

### Voorbeeld

Beide programma’s zullen 2 driehoeken tekenen, waarvan de 2 kleiner is.

``` basic4gl
clg
color blue
rect 0,0,300,300
color green
dim driehoek(6)
tri = {0, 0, 100, 100, 0, 100}
# Teken de driehoek op 0,0 (volledige grootte)
stamp 100, 100, driehoek
#  Teken de driehoek op 200,100 (halve grootte)
stamp 200, 100, .5, driehoek
```

``` basic4gl
clg
color blue
rect 0,0,300,300
color green
# Teken de driehoek op 0,0 (volledige grootte)
stamp 100, 100, {0, 0, 100, 100, 0, 100}
#  Teken de driehoek op 200,100 (halve grootte)
stamp 200, 100, .5, {0, 0, 100, 100, 0, 100}
```

Dit wordt dan:\
![stamp.png](@site/static/img/wiki/en/stamp.png)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./rect.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./font.md)
## String

### Formaat

**string** ( *uitdrukking* )

### Beschrijving

Je ziet hiermee niet veel gebeuren. Alleen zeg je daarmee aan een computer dat hij een getal uit *uitdrukking* als een string moet beschouwen. Dan kan hij daarmee niet meer rekenen ….

### Zie ook

[Decimal](./decimal.md)

------------------------------------------------------------------------

[vorige](./right.md) \| [Stringbewerkingen](./stringcommand.md) \| [volgende](./upper.md)
## System

### Formaat

**system** *uitdrukking*\
**system** ( *uitdrukking* )

### Beschrijving

Voert een system commando uit in het terminal venster.\
:!: OPGELET: Dit kan een zeer gevaarlijke opdracht zijn. Gebruik dit enkel als je weet wat je doet.

### Vanaf versie

0.9.5h

------------------------------------------------------------------------

[Speciale Opdrachten](./miscellaneous.md) \| [volgende](./ostype.md)
## Tan

### Formaat

**tan** ( *uitdrukking* )

### Beschrijving

Dit is een wiskundige formule, meer bepaald uit de [Goniometrie](http://nl.wikipedia.org/wiki/Goniometrie)\

De functie berekent de tangens van *uitdrukking*. De hoek moet in radianen worden meegegeven (0 tot 2pi).\

Meer informatie over deze functie vind je op de wiki : [tan](http://nl.wikipedia.org/wiki/Tangens)

### Voorbeeld

++++Hierna de code\|

``` basic4gl
clg
color black
#tekent een horizontale as
line 0,150,300,150
# waar beginnen we
color blue
lastx = 0
lasty = tan(0) * 50 + 150
# go over de lijn en teken de grafiek
for x = 0 to 300 step 5
   angle = x / 300 * 2 * pi
   y = tan(angle) * 50 + 150
   line lastx, lasty, x, y
   lastx = x
   lasty = y
next x
```

++++
++++geeft dan\|
![tang.png](@site/static/img/wiki/nl/tang.png)
++++

### Zie ook

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md)

------------------------------------------------------------------------

[vorige](./sqr.md) \| [Wiskundige Functies](./mathematical.md)
## Text

### Formaat

**text** *x*, *y*, *string*\
**text** ( *x*, *y*, *string* )

### Beschrijving

De functie *schrijft* de *string* in het grafisch venster met het lettertype en kleur die op dat moment zijn gedefinieerd. Er wordt gebonnen op *x*, *y* .

### Voorbeeld

``` basic4gl
clg 
color grey
rect 0,0,graphwidth,graphheight
color darkblue
font "Penguin Attack",18,50
text 10,100,"Fraaie tekst"
color darkgreen
font "Swift",14,75
text 10,200,"En dit is de vette tekst!"
```

wordt dan.\
![](@site/static/img/wiki/nl/fonttext.png)

### Zie ook

[Color](./color.md), [Font](./font.md), [TextWidth](./textwidth.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./font.md) \| [Tekenen en kleuren](./a_real_dali.md) \| [volgende](./textwidth.md)
## Upper

### Formaat

**upper** ( *string* )

### Beschrijving

Geeft de *string* terug waarin alle kleine letters door grote letters werden vervangen.

Wist je trouwens, dat je **MEESTAL GEEN ZIN MAAKT MET ALLEMAAL HOOFDLETTERS** als je met de computer schrijft?\
Dan denken de meeste mensen dat ***je tegen hen schreeuwt*** …. opletten dus.

### Zie ook

[Lower](./lower.md)

### Voorbeeld

``` basic4gl
print upper("blAuw!")
```

wordt

    BLAUW!

### Nieuw vanaf

0.9.5e

------------------------------------------------------------------------

[vorige](./string.md) \| [Stringbewerkingen](./stringcommand.md)
## Volume

### Formaat

**volume** *niveau*\
**volume** ( *niveau* )

### Beschrijving

Pas het volume aan met het [Sound](./sound.md) commando. Volume *niveau* is een cijfer tussen 0 en 10. Het staat normaal op 5.

### Zie ook

[Sound](./sound.md)

### Voorbeeld

``` basic5gl
for vol = 1 to 9
volume(vol)
sound(100,100)
next vol
```

maakt eenzelfde geluid geduren 1/10 seconde en telkens luider.

### Nieuw Vanaf

0.9.5i

------------------------------------------------------------------------

[vorige](./sound.md) \| [Geluid](./sound_commands.md) \| [volgende](./wavplay.md)
## WAVplay

### Formaat

**wavplay** *bestandsnaam*\
**wavplay** ( *bestandsnaam* )

### Beschrijving

Deze functie speelt het WAV audio bestand asynchroon uit(bestand wordt in de achtergrond gespeeld).

### Zie Ook

[WAVstop](./wavstop.md) [WAVwait](./wavwait.md)

### Voorbeeld

``` basic4gl
wavplay("muziek.wav")
```

### Nota

FIXME *correcte gegevens om wav bestand af te spelen in linux*

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./volume.md) \| [Geluid](./sound_commands.md) \| [volgende](./wavstop.md)
## WAVstop

### Formaat

**wavstop** *bestandsnaam*\
==== Beschrijving ====
Deze functie stopt het spelen van het WAV audio bestand .

### Zie Ook

[WAVplay](./wavplay.md) [WAVwait](./wavwait.md)

### Voorbeeld

``` basic4gl
wavstop
```

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./wavplay.md) \| [Geluid](./sound_commands.md) \| [volgende](./wavwait.md)
## While / End While

### Formaat

**while** *booleanuitdrukking*\
*opdracht(en)*\
**end while**

### Beschrijving

Voert de *opdracht(en)* in de lus uit tot *booleanuitdrukking* false is. While / End While voert de opdracht(en) nul of meerdere keren uit.

De test wordt uitgevoerd voor er aan de opdrachten wordt begonnen. Dit wil zeggen dat het mogelijk is dat de opdracht(en) zelfs misschien helemaal niet worden uitgevoerd.

### Zie ook

[Do / Until](./dountil.md), [For / Next](./fornext.md)

### Voorbeeld

``` basic4gl
r = 1
while r < 6
  print r
  r = r + 1
end while
```

geeft als resultaat

    1
    2
    3
    4
    5

### Vanaf versie

0.9.4g

------------------------------------------------------------------------

[vorige](./comment.md) \| [Programma Controle](./programcontrol.md)
## Write

### Formaat

**write** *string*\
**write** ( *string* )\
**write** *filenumber*, *string*\
**write** ( *filenumber*, *string* )

### Beschrijving

Schrijft *string* aan het einde van een open bestand toe. Als je het bestandsnummer (*filenumber*) niet meegeeft, dan wordt 0 genomen.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
write (1,"Hello")
write (1," Dit komt op dezelfde lijn na Hello")
close 1
```

Print currentdir gebruik ik om te weten waar ik een bestand open. Dit is de plaats waar Foo.txt zal worden geopend ( of weggeschreven)
Verder zijn er 2 write opdrachten. In het Foo.txt bestand zie je echter alles mooi op een lijn.
Ik voer een close uit om het bestand mooi te sluiten. De informatie wordt wel onmiddellijk in het bestand gezet, maar je bent nooit zeker he.

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

------------------------------------------------------------------------

[vorige](./size.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./writeline.md)## WriteLine

### Formaat

**writeline** *string*\
**writeline** ( *string* )\
**writeline** *filenumber*, *string*\
**writeline** ( *filenumber*, *string* )

### Beschrijving

De functie schrijft *string* aan het einde van een open bestand toe samen met een nieuwe lijn. Als je dan nog eens wegshrijft, is dat op de nieuwe lijn!\
Als je het bestandsnummer (*filenumber*) niet meegeeft, dan wordt 0 genomen.

### Voorbeeld

``` basic4gl
print currentdir
open (1,"Foo.txt")
writeline (1,"Hello")
writeline (1,"Dit komt op de volgende lijn na Hello")
close 1
```

Print currentdir gebruik ik om te weten waar ik een bestand open. Dit is de plaats waar Foo.txt zal worden geopend ( of weggeschreven)
Verder zijn er 2 write opdrachten. In het Foo.txt bestand zie je echter alles mooi op een lijn.
Ik voer een close uit om het bestand mooi te sluiten. De informatie wordt wel onmiddellijk in het bestand gezet, maar je bent nooit zeker he.

dit geeft dan het bestand

``` txt
Hello
Dit komt op de volgende lijn na Hello
```

### Zie ook

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### New To Version

0.9.4

------------------------------------------------------------------------

[vorige](./write.md) \| [Lezen en schrijven](./write_and_read.md)
## Year

### Formaat

**year**\
**year** ( )

### Beschrijving

Geeft het jaartal terug van de huidige systeemdatum.

### Voorbeeld

``` basic4gl
print "Het is vandaag ";
print day + "/" +(month + 1) + "/" + year
```

toont dan

    Het is vandaag 29/1/2012

### Zie ook

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Msec](./msec.md), [Second](./second.md)

### Nieuw vanaf

0.9.4

------------------------------------------------------------------------

[vorige](./month.md) \| [Datum en Uur](./datehour.md) \| [volgende](./hour.md)
