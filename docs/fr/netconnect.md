---
title: "NetConnect"
sidebar_label: "NetConnect"
---

## NetConnect

### Format

**netconnect** *server_name*, *port_number*\
**netconnect** ( *server_name*, *port_number* )\
**netconnect** *socket_number*, *server_name*, *port_number*\
**netconnect** ( *socket_number*, *server_name*, *port_number* )

### Description

Ouvre une connexion (client) réseau sur un serveur. Le paramètre *server_name* donne l’adresse IP ou le nom d’hôte du serveur, tandis que *port_number* donne le numéro de port spécifique sur lequel la connexion doit être établie. Si le numéro de socket *socket_number* n’est pas spécifié, zéro (0) est utilisé par défaut.

### Exemple

Ouvrez deux instances de BASIC-256 sur un même ordinateur. Collez le code “serveur” dans une instance et collez le code “client” dans l’autre. Lancez le code “serveur” en premier, puis le “client”. Vous pouvez voir les messages envoyés de l’un à l’autre des deux processus.

#### Code Serveur

    # Récupère un message et répond
    print "Attente de connexion"
    netlisten 9997
    print "j'ai la connexion"
    do
       while not netdata
          pause .1
          print ".";
       end while
       n$ = netread
       print n$
       netwrite "J'ai reçu '" + n$ + "'."
    until n$ = "fin"
    netclose

Affichera

    Attente de connexion
    j'ai la connexion
    .1 Coucou
    ....2 Coucou
    ........3 Coucou
    ..........4 Coucou
    .....5 Coucou
    .......6 Coucou
    ....7 Coucou
    ..........8 Coucou
    ....9 Coucou
    .....10 Coucou
    .fin

#### Code Client

    # Attendre un message de l'utilisateur et l'envoyer au serveur
    input "entrer un message?", m$
    netconnect "127.0.0.1", 9997
    for t = 1 to 10
       pause rand
       netwrite t + " " + m$
       print netread
    next t
    netwrite "fin"
    print netread
    netclose

Affichera

    entrer un message?Coucou
    J'ai reçu '1 Coucou'.
    J'ai reçu '2 Coucou'.
    J'ai reçu '3 Coucou'.
    J'ai reçu '4 Coucou'.
    J'ai reçu '5 Coucou'.
    J'ai reçu '6 Coucou'.
    J'ai reçu '7 Coucou'.
    J'ai reçu '8 Coucou'.
    J'ai reçu '9 Coucou'.
    J'ai reçu '10 Coucou'.
    J'ai reçu 'end'.

### Voir Aussi

[NetClose](./netclose.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Disponible à partir de la version

0.9.6.31
