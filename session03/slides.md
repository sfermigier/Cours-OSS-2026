---
title: "Logiciel Libre — Session 3"
author: "Stefane Fermigier"
theme: dark
---

# Histoire du Logiciel Libre

### Partie 2 : 1990-aujourd'hui

::: spacer 2
:::

::: center
Session 3 — Cours M1 Open Source Software
:::

---

# Objectifs de la séance

---

# Ce que vous saurez faire

À la fin de cette séance, vous serez capables de :

- **Expliquer** l'émergence de Linux et son modèle de développement
- **Analyser** le virage "Open Source" de 1998
- **Identifier** les évolutions majeures de l'écosystème (2000-2020)
- **Comprendre** la transformation de l'industrie vers l'open source
- **Situer** les grandes fondations et événements du libre

---

# Partie 1

## Linux : la pièce manquante (1991)

---

# Le contexte en 1991

**Le projet GNU a presque tout... sauf le noyau.**

::: columns
::: column

**Disponible**
- Compilateur (GCC)
- Éditeur (Emacs)
- Shell (Bash)
- Utilitaires (coreutils)
- Bibliothèques (glibc)

:::
::: column

**Manquant**
- Noyau (kernel)
- GNU Hurd en développement
- Choix architecturaux ambitieux (microkernel)
- Retards importants

:::
:::

---

# Linus Torvalds

![bg right:30%](../images/linus.png)

**Parcours**
- Né en 1969 en Finlande
- Étudiant à l'Université d'Helsinki
- Passionné par les systèmes d'exploitation
- Utilise Minix (Unix pédagogique)

**Motivations**
- Frustré par les limitations de Minix
- Veut un "vrai" Unix sur son PC 386
- Projet personnel d'apprentissage
- Pas de grandes ambitions initiales

---

# 25 août 1991 : l'annonce historique

Message de Linus sur comp.os.minix :

```
Hello everybody out there using minix -

I'm doing a (free) operating system (just a hobby, won't be big and
professional like gnu) for 386(486) AT clones. [...]

I've currently ported bash(1.08) and gcc(1.40), and things seem to work.
[...]

PS. Yes - it's free of any minix code, and it has a multi-threaded fs.
It is NOT portable (uses 386 task switching etc), and it probably never
will support anything other than AT-harddisks, as that's all I have :-(.
```

**Ironie de l'histoire** : "won't be big and professional"...

---

# Le modèle de développement de Linux

Ce qui rend Linux différent :

::: columns
::: column

**Décisions techniques**
- Architecture monolithique (vs microkernel)
- Compatible POSIX/Unix
- Portable (pas que x86)
- Modulaire

:::
::: column

**Décisions sociales**
- Code publié très tôt ("release early, release often")
- Contributions acceptées par email
- Méritocratie technique
- Linus comme BDFL (Benevolent Dictator For Life)

:::
:::

---

# La croissance explosive

| Version | Date | Développeurs | Lignes de code |
|---------|------|--------------|----------------|
| 0.01 | Sept 1991 | 1 | ~10,000 |
| 1.0 | Mars 1994 | ~100 | ~176,000 |
| 2.0 | Juin 1996 | ~400 | ~780,000 |
| 2.4 | Jan 2001 | ~1,000 | ~3,400,000 |
| 5.x | 2020+ | ~15,000 | ~28,000,000 |

**Facteurs de succès :**
- Internet permet la collaboration mondiale
- GNU fournit tout le reste
- Compatible avec le matériel PC courant
- Licence GPL garantit les contributions

---

# GNU/Linux : le système complet

En 1992, Linux + GNU = système d'exploitation complet

::: columns
::: column

**Composants GNU**
- gcc, glibc
- bash, coreutils
- Emacs
- GNOME (plus tard)

:::
::: column

**Composant Linux**
- Noyau (kernel)
- Drivers
- Gestion mémoire
- Scheduling

:::
:::

> Stallman insiste sur "GNU/Linux". Torvalds dit "Linux". Le débat continue...

---

# Les distributions

Le concept de "distribution" émerge :

::: columns
::: column

**Premières distributions**
- **SLS** (1992)
- **Slackware** (1993) — Patrick Volkerding
- **Debian** (1993) — Ian Murdock
- **Red Hat** (1994) — Marc Ewing
- **SUSE** (1994)

:::
::: column

**Ce qu'apporte une distro**
- Installation simplifiée
- Gestionnaire de paquets
- Configuration cohérente
- Support et documentation
- Choix de philosophie

:::
:::

---

# Anatomie d'une distribution

Une distribution comprend *a minima* :

- **Un installeur** / configurateur
- **Un système de paquets**, incluant des outils de build et d'installation
- **Des milliers de paquets**, dérivés de logiciels libres "upstream"
- **Des processus** de développement et de maintenance
- **Une communauté** ou une entreprise qui maintient l'ensemble

Les plus populaires aujourd'hui : Debian, Ubuntu, Fedora, Arch, Alpine...

---

# Partie 2

## The Cathedral and the Bazaar (1997)

---

# Eric Raymond

::: columns
::: column

**Parcours**
- Hacker et auteur
- Mainteneur de fetchmail
- Anthropologue du monde hacker
- Libertarien (différent de Stallman)

:::
::: column

**Contributions**
- "The Cathedral and the Bazaar" (1997)
- "The New Hacker's Dictionary"
- Co-fondateur de l'OSI
- Porte-parole "Open Source"

:::
:::

---

# Deux modèles de développement

::: columns
::: column

**La Cathédrale**
- Développement fermé
- Releases espacées
- Petit groupe d'experts
- Planification rigoureuse
- Exemple : GNU Emacs, projets commerciaux

:::
::: column

**Le Bazar**
- Développement ouvert
- Releases fréquentes
- Communauté large
- Évolution organique
- Exemple : Linux

:::
:::

---

# Les leçons du Bazar

::: box "Principes extraits par Raymond"
1. *"Every good work of software starts by scratching a developer's personal itch"*

2. *"Given enough eyeballs, all bugs are shallow"* — **Loi de Linus**

3. *"Release early. Release often."*

4. *"Treating your users as co-developers is your least-hassle route to rapid code improvement"*

5. *"If you have the right attitude, interesting problems will find you"*
:::

---

# Impact de l'essai

"The Cathedral and the Bazaar" :

- **Théorise** ce que Linux faisait intuitivement
- **Légitime** le modèle de développement ouvert
- **Influence** la décision de Netscape (1998)
- **Fournit** un vocabulaire pour en parler

> "C'est l'essai qui a convaincu Netscape de libérer le code de Navigator."

---

# Partie 3

## Le virage Open Source (1998)

---

# Janvier 1998 : Netscape libère son code

**Contexte :**
- Netscape perd la "guerre des navigateurs" face à IE
- La part de marché s'effondre (de 80% à 20%)
- Stratégie désespérée : libérer le code

**L'annonce :**
- 22 janvier 1998 : Netscape annonce la libération
- Code publié le 31 mars 1998
- Création du projet Mozilla
- Deviendra Firefox en 2004

---

# La naissance du terme "Open Source"

**Février 1998** — Réunion à Palo Alto

::: columns
::: column

**Problème perçu**
- "Free software" est mal compris
- Confusion gratuit/libre
- Connotation politique effraie les entreprises
- Besoin d'un terme "business-friendly"

:::
::: column

**Solution proposée**
- Christine Peterson suggère "Open Source"
- Eric Raymond et Bruce Perens l'adoptent
- Création de l'Open Source Initiative (OSI)
- Open Source Definition basée sur DFSG

:::
:::

---

# Stallman vs Raymond

::: columns
::: column

**Stallman refuse "Open Source"**
- Efface la dimension éthique
- Réduit le libre à une méthode
- "Open source misses the point"
- Continue à dire "Free Software"

:::
::: column

**Raymond défend "Open Source"**
- Plus pragmatique
- Attire les entreprises
- Focus sur les avantages techniques
- Succès commercial prouve le modèle

:::
:::

**Résultat :** Deux mouvements parallèles, mêmes logiciels, philosophies différentes.

---

# Les grandes controverses du libre

- "Free Software" vs. "Open Source"
- Idéologie vs. pragmatisme
- Noyau monolithique vs. micronoyau (Torvalds vs Tanenbaum)
- "Linux" vs. "GNU/Linux"
- GPL vs licences "permissives"
- GNOME vs. KDE
- Le libre vs. le cloud
- Inclusivité des communautés
- Faut-il faire évoluer les définitions pour éviter les abus des géants du cloud ?

---

# 1998-2000 : L'euphorie

| Année | Événement |
|-------|-----------|
| 1998 | Netscape libéré, OSI créée |
| 1998 | Halloween Documents (Microsoft) |
| 1999 | Red Hat entre en bourse (IPO spectaculaire) |
| 1999 | VA Linux IPO : +698% le premier jour |
| 2000 | IBM investit 1 milliard $ dans Linux |

::: box "Halloween Documents"
Mémos internes Microsoft qui fuitent, révélant leur peur de Linux et leurs stratégies : **"Embrace, extend, extinguish"**.
:::

---

# Partie 4

## L'ère moderne (2000-2020)

---

# Les années 2000 : consolidation

::: columns
::: column

**Côté serveurs**
- Linux domine les serveurs web
- Apache leader incontesté
- MySQL/PostgreSQL montent
- LAMP stack devient le standard

:::
::: column

**Côté desktop**
- Ubuntu (2004) démocratise Linux
- GNOME vs KDE
- Mais Windows reste dominant
- "L'année du desktop Linux" (mème récurrent)

:::
:::

---

# Le marché des serveurs (1999)

![bg right:60% contain](../images/server-market-1999.png)

Linux commence à grignoter des parts de marché sur les serveurs traditionnels Unix et Windows NT.

---

# Linux domine les supercalculateurs

![bg right:55% contain](../images/top500.png)

**100% du Top 500** des supercalculateurs mondiaux tournent sous Linux (depuis 2017).

---

# Software is eating the world

![bg contain](../images/eating-the-world.png)

---

# Évolution des outils de développement

::: columns
::: column

**Gestion de versions**
- 1990 : CVS (GPL)
- 2000 : Subversion
- 2005 : **Git** (Linus Torvalds)
- 2005 : Mercurial

:::
::: column

**Forges logicielles**
- 1999 : SourceForge
- 2008 : **GitHub** (propriétaire)
- 2011 : GitLab (open core)
- 2019 : Sourcehut

:::
:::

---

# 2005 : Git révolutionne la collaboration

**Contexte :**
- Linux utilisait BitKeeper (propriétaire, gratuit pour l'open source)
- Conflit avec BitMover → licence révoquée
- Torvalds développe Git en 2 semaines

**Impact de Git :**
- Développement distribué
- Branches/merges faciles
- Chaque développeur a une copie complète
- Rend possible GitHub (2008)

---

# GitHub : la forge sociale (2008)

**Ce que GitHub apporte :**

::: columns
::: column

**Technique**
- Hébergement Git gratuit
- Pull Requests
- Issues intégrées
- Actions/CI

:::
::: column

**Social**
- Profil développeur
- Stars, followers
- Découvrabilité
- "Social coding"

:::
:::

**Impact :** GitHub devient **le** lieu de l'open source. 100M+ développeurs en 2023.

---

# Business Timeline

| Année | Événement |
|-------|-----------|
| 1999 | IPO de Red Hat et VA Linux |
| 2000 | IBM investit 1 Mrd $ dans Linux |
| 2006 | Rachat de JBoss par Red Hat (350 M$) |
| 2008 | Rachat de MySQL par Sun (1 Mrd $) |
| 2009 | Oracle rachète Sun Microsystems |
| 2018 | Microsoft rachète GitHub (7,5 Mrd $) |
| 2019 | IBM rachète Red Hat (34 Mrd $) |
| 2021 | IPO de GitLab (15 Mrd $ de capitalisation) |

---

# 2010s : Cloud et containers

| Année | Événement |
|-------|-----------|
| 2010 | OpenStack lancé (Rackspace + NASA) |
| 2013 | Docker révolutionne les containers |
| 2014 | Kubernetes (Google) |
| 2015 | CNCF créée (Cloud Native Computing Foundation) |
| 2018 | IBM rachète Red Hat (34 milliards $) |
| 2018 | Microsoft rachète GitHub (7,5 milliards $) |

---

# "Microsoft loves Linux" (2014)

Le retournement le plus spectaculaire :

::: columns
::: column

**Avant**
- "Linux is a cancer" (Ballmer, 2001)
- Brevets contre Android
- Halloween Documents
- FUD généralisé

:::
::: column

**Après**
- Azure supporte Linux
- WSL (Windows Subsystem for Linux)
- VS Code open source
- Rachat de GitHub
- Membre Linux Foundation

:::
:::

---

# Partie 5

## L'écosystème du libre

---

# Les grandes fondations

| Année | Fondation |
|-------|-----------|
| 1985 | Free Software Foundation (FSF) |
| 1997 | KDE e.V. |
| 1999 | Apache Software Foundation |
| 2000 | Linux Foundation |
| 2001 | Python Software Foundation |
| 2004 | Eclipse Foundation |
| 2007 | OW2 (Europe) |
| 2010 | Document Foundation (LibreOffice) |
| 2015 | CNCF, Rust Foundation... |

---

# Associations françaises

- **1996** : APRIL (promotion et défense du logiciel libre)
- **1998** : AFUL (Association Francophone des Utilisateurs de Logiciels Libres)
- **1998-1999** : Premiers LUGs (Parinux, GUILDE, ABUL...)
- **1998** : LinuxFr.org
- **2001** : Framasoft
- **2002** : ADULLACT (collectivités territoriales)
- **2010** : CNLL (Conseil National du Logiciel Libre)

---

# Langages de programmation "libres"

::: columns
::: column

- **1987** : Perl
- **1991** : Python
- **1994** : PHP
- **1995** : Ruby

:::
::: column

- **2009** : Go (Google)
- **2010** : Rust (Mozilla)
- **2015** : Zig

:::
:::

Tous ces langages sont développés de manière ouverte, avec des communautés actives.

**Question** : Qu'est-ce qui manque dans cette liste ? Pourquoi ?

---

# Textes fondateurs

- **1985** : "The GNU Manifesto" (Richard Stallman)
- **1984** : "Hackers: Heroes of the Computer Revolution" (Steven Levy)
- **1997** : "The Cathedral and the Bazaar" (Eric S. Raymond)
- **1998** : "Le Hold-Up planétaire" (Roberto Di Cosmo)
- **1999** : "Open Sources: Voices from the Open Source Revolution"
- **2020** : "Working in Public: The Making and Maintenance of Open Source Software" (Nadia Eghbal)

---

# Le Debian Social Contract

![bg right:45% contain](../images/social-contract.png)

Publié en 1997 par Bruce Perens, ce document définit les engagements de Debian :

1. Debian restera 100% libre
2. Nous rendrons à la communauté
3. Nous ne cacherons pas les problèmes
4. Nos priorités sont nos utilisateurs et le logiciel libre

Base de l'**Open Source Definition**.

---

# État des lieux en 2025

::: columns
::: column

**Où Linux/l'open source domine**
- Serveurs (90%+)
- Cloud (100% des hyperscalers)
- Smartphones (Android)
- Embedded/IoT
- Supercalculateurs (100%)
- Containers, orchestration
- IA/ML (PyTorch, TensorFlow...)

:::
::: column

**Où le propriétaire résiste**
- Desktop grand public (~4%)
- Applications métier
- Certains jeux vidéo
- Design/création (Adobe)

:::
:::

---

# Parts de marché

::: columns
::: column 50

![](../images/market-share-desktop.png)

:::
::: column 50

![](../images/market-share-web.png)

:::
:::

---

# Résumé

---

# Ce qu'il faut retenir

1. **1991** : Linux comble le vide laissé par GNU Hurd

2. **1997** : "The Cathedral and the Bazaar" théorise le développement ouvert

3. **1998** : Naissance du terme "Open Source", Netscape libéré

4. **2000s** : Linux conquiert les serveurs, Ubuntu démocratise le desktop

5. **2005-2008** : Git puis GitHub transforment la collaboration

6. **2010s** : Cloud, containers, et même Microsoft adoptent l'open source

---

# Citations à retenir

::: box
*"Software is like sex: it's better when it's free."*
— **Linus Torvalds**
:::

::: box
*"Given enough eyeballs, all bugs are shallow."*
— **Eric Raymond** (Loi de Linus)
:::

::: box
*"Talk is cheap. Show me the code."*
— **Linus Torvalds**
:::

---

# Pour la prochaine séance

**Séance 4 :** Droit et propriété intellectuelle

**Préparation suggérée :**
- Qu'est-ce que le droit d'auteur ?
- Quelle différence entre droit d'auteur et brevet ?

---

# Questions ?

::: spacer 3
:::

::: center
**Passons au TD**
:::
