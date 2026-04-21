# Session 3 — Histoire du logiciel libre (1990-aujourd'hui)

## Objectifs de la séance

- Expliquer l'émergence de Linux et son modèle de développement.
- Analyser le virage « Open Source » de 1998.
- Identifier les évolutions majeures de l'écosystème de 2000 à aujourd'hui.
- Comprendre la transformation de l'industrie vers l'open source.
- Situer les grandes fondations et événements du libre.

## Partie 1 — Linux : la pièce manquante (1991)

### Le contexte de 1991

À la fin des années 80, le projet GNU a livré presque tout l'écosystème d'un système libre : compilateur (**GCC**), éditeur (**Emacs**), shell (**Bash**), utilitaires (**coreutils**), bibliothèque C (**glibc**). **Il manque le noyau**. Le projet **GNU Hurd** a été lancé en 1990 mais choisit une architecture à micro-noyau ambitieuse et peine à avancer.

### Linus Torvalds

**Linus Torvalds**, né en 1969 en Finlande, étudiant à l'Université d'Helsinki, est passionné par les systèmes d'exploitation. Il utilise **Minix** (Unix pédagogique d'Andrew Tanenbaum), mais en trouve les limitations frustrantes. Il veut un « vrai » Unix sur son PC 386 et se lance dans un projet personnel, sans grande ambition initiale.

### 25 août 1991 : l'annonce

Linus poste sur le newsgroup `comp.os.minix` :

> *« I'm doing a (free) operating system (just a hobby, won't be big and professional like gnu) for 386(486) AT clones. […] It is NOT portable (uses 386 task switching etc). »*

L'ironie est célèbre : « won't be big and professional ». 30 ans plus tard, Linux fait tourner la totalité du TOP500 des supercalculateurs, la majorité des serveurs du cloud et 60 % des smartphones.

### Le modèle de développement

Ce qui rend Linux différent, ce sont autant des **décisions techniques** que **sociales** :

**Décisions techniques** : architecture monolithique (vs micro-noyau) ; compatible POSIX/Unix ; portable au-delà de x86 ; modulaire.

**Décisions sociales** : publication très précoce du code (« release early, release often ») ; contributions acceptées par email ; méritocratie technique ; Linus comme **BDFL** (*Benevolent Dictator For Life*).

### La croissance

| Version | Date | Développeurs | Lignes de code |
|---------|------|--------------|----------------|
| 0.01 | Sept. 1991 | 1 | ~10 000 |
| 1.0 | Mars 1994 | ~100 | ~176 000 |
| 2.0 | Juin 1996 | ~400 | ~780 000 |
| 2.4 | Janv. 2001 | ~1 000 | ~3,4 M |
| 5.x | 2020+ | ~15 000 | ~28 M |

**Facteurs de succès** : Internet permet la collaboration mondiale ; GNU fournit tout le reste ; compatibilité avec le matériel PC grand public ; la GPL garantit le retour des contributions au pot commun.

### GNU/Linux : le système complet

Dès 1992, Linux + les outils GNU forment un OS libre complet et utilisable. Stallman insiste sur **« GNU/Linux »** pour créditer le projet GNU ; Torvalds dit simplement « Linux » et le grand public suit. Le débat continue.

### Les distributions

Très vite émerge le concept de **distribution** : un ensemble cohérent comprenant un installeur, un gestionnaire de paquets, des milliers de paquets dérivés de logiciels libres *upstream*, des processus de maintenance et une communauté ou une entreprise qui porte le tout.

| Distribution | Année | Fondateur(s) | Particularité |
|--------------|-------|--------------|---------------|
| **MCC Interim** | fév. 1992 | Owen Le Blanc (Manchester Computing Centre) | Considérée comme la toute première distribution Linux |
| **SLS** (*Softlanding Linux System*) | mai 1992 | Peter MacDonald | Première distribution largement diffusée, avec X11 et TCP/IP |
| **Slackware** | juil. 1993 | Patrick Volkerding | Dérivée de SLS ; philosophie **KISS**, configuration manuelle, sans résolution automatique des dépendances ; la plus ancienne encore activement maintenue |
| **Debian** | août 1993 | Ian Murdock | Communautaire, non commerciale (nom formé sur *Debra* + *Ian*) ; *Social Contract* et DFSG (1997) |
| **Red Hat Linux** | oct. 1994 | Marc Ewing (+ Bob Young en 1995) | Orientée entreprise ; base du futur **RHEL** et de **Fedora** (2003) |
| **SUSE** | 1994 | Hubert Mantel, Roland Dyroff, Burchard Steinbild, Thomas Fehr | Allemagne (société S.u.S.E. GmbH fondée en 1992) |
| **Mandrake / Mandriva** | 1998 | Gaël Duval | Français ; dérivée de Red Hat, axée grand public (KDE par défaut, installeur simple) ; devenue Mandriva (2005) puis forkée en **Mageia** (2010) à la liquidation de la société |
| **Gentoo** | 2002 | Daniel Robbins | Compilation locale de chaque paquet (*source-based*) |
| **Arch Linux** | 2002 | Judd Vinet | *Rolling release*, minimaliste, configuration entièrement manuelle |
| **Ubuntu** | 2004 | Mark Shuttleworth (Canonical) | Dérivée de Debian ; démocratisation du desktop Linux |
| **Alpine Linux** | 2005 | Natanael Copa | Ultra-légère (musl + BusyBox) ; devenue dominante pour les conteneurs Docker |

Aujourd'hui : **Debian, Ubuntu, Fedora, Arch, Alpine** dominent, plus les dérivées cloud/conteneurs.

## Partie 2 — *The Cathedral and the Bazaar* (1997)

### Eric Raymond

**Eric S. Raymond** est hacker, anthropologue des communautés techniques, mainteneur de **fetchmail**, auteur du *New Hacker's Dictionary*. Ses convictions politiques (libertarien) le distinguent nettement de Stallman. En 1997, il publie un essai qui va durablement influencer l'industrie.

### Deux modèles de développement

| La Cathédrale | Le Bazar |
|---------------|----------|
| Développement fermé | Développement ouvert |
| *Releases* espacées | *Releases* fréquentes |
| Petit groupe d'experts | Communauté large |
| Planification rigoureuse | Évolution organique |
| Ex : GNU Emacs (à l'époque), éditeurs commerciaux | Ex : Linux |

### Les leçons du Bazar

1. *« Every good work of software starts by scratching a developer's personal itch. »*
2. *« Given enough eyeballs, all bugs are shallow. »* — la **Loi de Linus**.
3. *« Release early. Release often. »*
4. *« Treating your users as co-developers is your least-hassle route to rapid code improvement. »*
5. *« If you have the right attitude, interesting problems will find you. »*

### L'impact

L'essai **théorise** ce que Linux faisait intuitivement, **légitime** le modèle de développement ouvert auprès des entreprises, et **fournit un vocabulaire** pour en parler. C'est cet essai qui convaincra Netscape de libérer le code de Navigator en janvier 1998.

## Partie 3 — Le virage Open Source (1998)

### Janvier 1998 : Netscape libère Navigator

Netscape perd la « guerre des navigateurs » contre Internet Explorer (part de marché passée de 80 % à 20 %). Stratégie désespérée : **libérer le code**. Annonce le 22 janvier, code publié le 31 mars, naissance du projet **Mozilla**, qui deviendra Firefox en 2004.

### Février 1998 : le terme « Open Source »

Réunion à Palo Alto. Constat partagé : le terme *free software* est mal compris, la connotation politique effraie les entreprises. **Christine Peterson** suggère **« Open Source »**, Raymond et **Bruce Perens** l'adoptent et fondent l'**Open Source Initiative (OSI)**. L'**Open Source Definition** reprend les Debian Free Software Guidelines (1997).

### Stallman vs Raymond

| Stallman refuse « Open Source » | Raymond défend « Open Source » |
|----------------------------------|---------------------------------|
| Efface la dimension éthique | Plus pragmatique |
| Réduit le libre à une méthode | Attire les entreprises |
| « Open source misses the point » | Focus sur les avantages techniques |
| Continue à dire « Free Software » | Le succès commercial prouve le modèle |

Les deux mouvements avancent en parallèle, sur les mêmes logiciels mais avec des philosophies distinctes.

### 1998-2000 : l'euphorie

| Année | Événement |
|-------|-----------|
| 1998 | Netscape libéré, OSI créée |
| 1998 | **Halloween Documents** — mémos internes Microsoft fuités révélant leur peur de Linux et leur stratégie *« Embrace, extend, extinguish »* |
| 1999 | IPO spectaculaires de **Red Hat** et **VA Linux** (+698 % le premier jour pour VA Linux) |
| 2000 | IBM investit **1 milliard $** dans Linux |

### Controverses récurrentes du libre

Ces débats reviendront plusieurs fois dans le cours : *Free Software* vs *Open Source*, idéologie vs pragmatisme, noyau monolithique vs micro-noyau (**Torvalds vs Tanenbaum**, 1992), « Linux » vs « GNU/Linux », GPL vs permissif, GNOME vs KDE, le libre face au cloud, inclusivité des communautés, adaptation des définitions aux abus des hyperscalers.

## Partie 4 — L'ère moderne (2000-2020)

### Consolidation des années 2000

- **Côté serveurs** : Linux domine les serveurs web, **Apache** est leader, **MySQL** et **PostgreSQL** montent en puissance, la stack **LAMP** (Linux + Apache + MySQL + Perl/PHP/Python) devient le standard du web.
- **Côté desktop** : Ubuntu (2004) démocratise Linux, GNOME et KDE s'affrontent, mais Windows reste dominant — « l'année du desktop Linux » devient un mème récurrent.

### Outils de développement

| Année | Événement |
|-------|-----------|
| 1990 | CVS (GPL) |
| 2000 | Subversion |
| **2005** | **Git** (Linus Torvalds, après rupture avec BitKeeper) |
| 2005 | Mercurial |
| 1999 | SourceForge (invente le concept de "forge" logicielle) |
| **2008** | **GitHub** (propriétaire) |
| 2011 | GitLab (open core) |

### 2005 : Git révolutionne la collaboration

Linux utilisait **BitKeeper** (propriétaire, gratuit pour les projets libres). Un conflit avec BitMover (éditeur de BitKeeper) entraîne la révocation de la licence. Torvalds développe **Git** en deux semaines. Apports majeurs : développement **distribué**, branches/merges faciles, chaque développeur a une copie complète de l'historique. Git rend possible GitHub (2008).

### GitHub : la forge sociale (2008)

GitHub ajoute une couche **sociale** (profil développeur, stars, followers: *social coding*) au-dessus de Git et intègre Pull Requests, Issues, Actions/CI. Résultat : **GitHub devient *le* lieu de l'open source** — 100 M+ développeurs en 2023. À noter : GitHub **n'est pas libre** lui-même (code fermé, appartient à Microsoft depuis 2018).

### Timeline business

| Année | Événement |
|-------|-----------|
| 1999 | IPO Red Hat, VA Linux |
| 2000 | IBM investit 1 Md $ dans Linux |
| 2006 | Red Hat rachète JBoss (350 M $) |
| 2008 | Sun rachète MySQL (1 Md $) |
| 2009 | Oracle rachète Sun |
| 2018 | Microsoft rachète **GitHub (7,5 Md $)** |
| 2019 | IBM rachète **Red Hat (34 Md $)** |
| 2021 | IPO de GitLab (15 Md $ de capitalisation) |

### 2010s : Cloud et conteneurs

| Année | Événement |
|-------|-----------|
| 2010 | **OpenStack** (Rackspace + NASA) |
| 2013 | **Docker** (origine française) "invente" les conteneurs |
| 2014 | **Kubernetes** (Google) |
| 2015 | Création de la **CNCF** (Cloud Native Computing Foundation) |

### « Microsoft loves Linux » (2014)

Formule lancée par **Satya Nadella** (nouveau CEO) en octobre 2014 — retournement le plus spectaculaire de l'industrie :

**Avant (années 2000)** : *« Linux is a cancer »* (Ballmer, 2001) ; offensives brevets contre Android ; *Halloween Documents* ; FUD généralisé contre l'open source.

**Après (2014-)** : Azure supporte Linux ; **WSL** (Windows Subsystem for Linux) ; **VS Code** publié en open source ; rachat de GitHub ; Microsoft devient membre de la Linux Foundation.

## Partie 5 — L'écosystème du libre

### Les grandes fondations (sessions 8-9)

| Année | Fondation |
|-------|-----------|
| 1985 | FSF |
| 1999 | Apache Software Foundation |
| 2001 | Python Software Foundation |
| 2004 | Eclipse Foundation |
| 2007 | OW2 ; **Linux Foundation** (fusion d'OSDL et du Free Standards Group) |
| 2010 | Document Foundation (LibreOffice) |
| 2015 | CNCF |
| 2021 | Rust Foundation |

### Associations françaises

- **1996** : APRIL — promotion et défense du logiciel libre.
- **1998** : **AFUL** (Association Francophone des Utilisateurs de Logiciels Libres) ; premiers LUGs (Parinux, GUILDE…) ; LinuxFr.org.
- **2001** : Framasoft — associatif, logiciels libres grand public et éducation.
- **2002** : ADULLACT — collectivités territoriales.
- **2010** : CNLL — Conseil National du Logiciel Libre (filière professionnelle).

### Langages « libres »

- **1987** : Perl — **1991** : Python — **1994** : PHP — **1995** : Ruby.
- **2009** : Go (Google) — **2010** : Rust (Mozilla) — **2015** : Zig.

**Question piège** : Java n'est pas dans cette liste. OpenJDK est libre depuis 2007 mais Sun l'a longtemps gardé sous contrôle ; la marque et la plateforme restent largement Oracle. Même logique pour Swift ou C#.

### Textes fondateurs

- 1984 : Steven Levy, *Hackers: Heroes of the Computer Revolution*.
- 1985 : *GNU Manifesto* (Stallman).
- 1997 : *The Cathedral and the Bazaar* (Raymond).
- 1998 : *Le Hold-Up planétaire* (Roberto Di Cosmo).
- 2020 : *Working in Public* (Nadia Eghbal).

### Le *Debian Social Contract* (1997)

Publié par Bruce Perens. Debian s'engage à : (1) rester 100 % libre, (2) rendre à la communauté, (3) ne pas cacher les problèmes, (4) faire passer les utilisateurs et le logiciel libre avant tout. Ce texte servira ensuite de base à l'**Open Source Definition**.

## État des lieux en 2025

**Où l'open source domine** : serveurs (plus de 90 %) ; cloud (Linux majoritaire chez les *hyperscalers*, y compris Microsoft Azure) ; smartphones (Android) ; embarqué et IoT ; supercalculateurs (100 % du top 500) ; conteneurs et orchestration ; IA/ML (PyTorch, TensorFlow…).

**Où le propriétaire résiste** : desktop grand public (~4 % pour Linux) ; applications métier (ERP, CRM…) ; jeux vidéo AAA ; logiciels de design et de création (Adobe).

## Ce qu'il faut retenir

### Chronologie

1. **1991** : Linux comble le vide laissé par GNU Hurd.
2. **1997** : *The Cathedral and the Bazaar* théorise le développement ouvert.
3. **1998** : naissance du terme « Open Source » ; libération de Netscape.
4. **2000s** : Linux conquiert les serveurs, Ubuntu démocratise le desktop.
5. **2005-2008** : Git puis GitHub transforment la collaboration.
6. **2010s** : cloud, conteneurs, et même **Microsoft adopte l'open source**.
7. Fin des années 2010 : une nouvelle vague de tensions — cloud, licences *source available*, souveraineté (sessions 9 et 10).

### Citations

- *« Software is like sex: it's better when it's free. »* — **Linus Torvalds**
- *« Given enough eyeballs, all bugs are shallow. »* — **Eric Raymond** (Loi de Linus)
- *« Talk is cheap. Show me the code. »* — **Linus Torvalds**
- *« Linux is a cancer. »* — **Steve Ballmer** (2001) — à citer pour mesurer le chemin parcouru.

## Pour aller plus loin

- *The Cathedral and the Bazaar* : <http://www.catb.org/~esr/writings/cathedral-bazaar/>
- Halloween Documents : <http://catb.org/esr/halloween/>
- *Working in Public* (Nadia Eghbal, 2020) — sur l'économie des mainteneurs.
- Préparation session 4 : qu'est-ce que le droit d'auteur ? Différence avec un brevet ?
