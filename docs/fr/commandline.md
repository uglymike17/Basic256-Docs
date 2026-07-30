---
title: "Commandline"
sidebar_label: "Commandline"
---

## Les options de la ligne de commande

### Description

Lorsque BASIC-256 est lancé depuis la ligne de commande (shell ou cmd) il est possible de passer des options afin de modifier ou d’agir sur l’interface utilisateur. Ces options sont listées ci-dessous. Chaque option possède une forme courte et une ou plusieurs formes longues ; elles font exactement la même chose.

|  |  |
|----|----|
| Option | Description/Utilisation |
| -h, --help | Affiche la liste des options puis quitte. Sous Windows, -? fait la même chose. |
| --help-all | Comme --help, mais affiche également les options propres à Qt. |
| -v, --version | Affiche la version de BASIC256 puis quitte. |
| -l, --lang, --language *langue* | Spécifie la langue Locale. Des traductions sont fournies pour “de”, “en”, “es”, “fr”, “it”, “nl”, “pt” et “ru”. Une locale qui précise une région, comme “fr_BE”, retombe sur la langue seule. Sans cette option, la locale du système est utilisée. |
| -r, --run | Charge et exécute un programme, en montrant le code et en permettant de le relancer. |
| -a, --app, --application | Charge et exécute le programme en mode application : BASIC-256 se ferme dès que le programme est terminé. |
| -g, --graph | Charge et exécute le programme en n’affichant que la fenêtre graphique. |
| -t, --text | Charge et exécute le programme en n’affichant que la fenêtre de sortie texte. |
| -f, --full | Avec -r, -a, -g ou -t : agrandit la fenêtre à tout l’écran disponible. Ignorée si elle est employée seule. |
| -s, --silent | Exécute le programme sans aucune interface. Ce que PRINT écrit va sur la sortie standard, les erreurs sur la sortie d’erreur, et le code de retour du processus indique si le programme a réussi. Exige un nom de fichier et ne peut pas être combinée avec -r, -a, -g ou -t. |

Un nom de programme BASIC256 peut être donné sur la ligne de commande, mais il doit posséder l’extension <u>*.kbs*</u>. Ce fichier sera chargé dans la fenêtre d’édition de l’environnement et exécuté si l’option -r est spécifiée.

Les options -a, -g et -t sont celles à employer pour lancer un programme comme une application, sans montrer le code. Attention : les instructions [GraphVisible](./graphvisible.md), [EditVisible](./editvisible.md) et [OutputVisible](./outputvisible.md) écrites dans un programme sont exécutées pendant qu’il tourne, et peuvent donc réafficher une fenêtre que l’option avait masquée.

Sans nom de fichier à exécuter, les options -r, -a, -g et -t sont ignorées et l’environnement habituel s’ouvre. L’option -s est plus stricte : elle signale le problème sur la sortie d’erreur et s’arrête avec un code de retour de 1, ce qui se produit également lorsque le fichier ne peut pas être chargé ou que le programme se termine par une erreur. Un programme qui va jusqu’au bout rend un code de retour de 0.

Sous Windows, BASIC256 est un programme fenêtré et non un programme console. Il écrit la sortie de --help et de --version, ainsi que les messages et la sortie PRINT de -s, dans la console depuis laquelle il a été lancé ; lancé depuis l’Explorateur ou par un raccourci, cette console n’existe pas et ce texte n’a nulle part où aller.

### Exemple

    basic256 -r bonjour.kbs

    basic256 -g -f Mandelbrot-256.kbs

    basic256 -s makeindex.kbs > index.txt

exécute un programme dans l’environnement, puis remplit l’écran avec le seul
graphisme d’un programme, et enfin exécute un programme sans aucune fenêtre en
récupérant dans un fichier ce qu’il écrit.

### Voir Aussi

[EditVisible](./editvisible.md), [GraphVisible](./graphvisible.md), [OutputVisible](./outputvisible.md)

### Disponible depuis la version

0.9.6.67 — l’option -a est apparue en 1.99.99.55, et les options -g, -t, -f et -s en 2.1.
