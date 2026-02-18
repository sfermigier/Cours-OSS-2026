---
title: "Logiciel Libre — Session 4"
author: "Stefane Fermigier"
theme: dark
---
# Comprendre le cadre juridique du logiciel libre

::: spacer 2
:::

::: center
Session 4 — Cours M1 Introduction aux Logiciels Libres
:::

---
# Objectifs de la séance

---
# Ce que vous saurez faire

À la fin de cette séance, vous serez capables de :

- **Expliquer** les mécanismes du droit d'auteur appliqués au logiciel
- **Distinguer** droit d'auteur, brevets et marques
- **Identifier** qui détient les droits selon le statut (salarié, stagiaire)
- **Comprendre** le mécanisme du copyleft
- **Lire** la structure d'une licence logicielle

---
# Partie 1

## Pourquoi le droit vous concerne

---
# Le développeur et le droit

::: columns
::: column

**Vous êtes concerné si vous...**
- Utilisez du code open source
- Contribuez à un projet
- Publiez votre propre code
- Travaillez en entreprise
- Créez une startup

:::
::: column

**Risques concrets**
- Violation de licence = contrefaçon
- Responsabilité de l'entreprise
- Impossibilité de distribuer
- Conflits avec l'employeur
- Litiges coûteux

:::
:::

::: box
**Le droit n'est pas optionnel.** Ignorer les licences ne vous protège pas.
:::

---
# Un contrat social

Les licences libres reposent sur un **échange** :

- L'auteur vous **donne** des droits (utiliser, modifier, redistribuer)
- En échange, vous **respectez** certaines conditions

> « Acceptez les conditions ou refusez le don. »


---
# Partie 2

## La propriété intellectuelle

---
# Qu'est-ce que la propriété intellectuelle ?

Ensemble de droits exclusifs sur les **créations de l'esprit**.

::: columns
::: column

**Propriété industrielle**
- Brevets
- Marques
- Dessins et modèles
- Indications géographiques

:::
::: column

**Propriété littéraire et artistique**
- Droit d'auteur (copyright)
- Droits voisins
- Bases de données

:::
:::

::: center
**Le logiciel est principalement protégé par le droit d'auteur.**
:::

---
# Les trois piliers pour le logiciel

| Protection | Objet | Durée | Formalité |
|------------|-------|-------|-----------|
| **Droit d'auteur** | Expression, code | Vie + 70 ans | Automatique |
| **Brevet** | Invention technique | 20 ans | Dépôt examiné |
| **Marque** | Nom, logo | 10 ans renouv. | Enregistrement |

**Exemples concrets :**
- Le code source de Linux → droit d'auteur
- Le nom "Linux" → marque déposée
- Un algorithme de compression → potentiellement brevetable (US)

---
# Pourquoi la PI existe-t-elle ?

::: columns
::: column

**Justification économique**
- Inciter à l'innovation
- Protéger les investissements
- Permettre la commercialisation
- Créer un marché des idées

:::
::: column

**Critiques**
- Crée des monopoles temporaires
- Peut freiner l'innovation
- Coûts d'accès à la connaissance
- Complexité juridique

:::
:::

> « La PI est un **contrat social** : monopole temporaire en échange de divulgation. »

---
# Partie 3

## Le droit d'auteur appliqué au logiciel

---
# Principes fondamentaux

::: columns
::: column

**Ce qui est protégé**
- L'expression d'une idée
- La forme, pas le fond
- Les œuvres originales
- Automatique, sans formalité

:::
::: column

**Ce qui n'est pas protégé**
- Les idées elles-mêmes
- Les concepts, méthodes
- Les algorithmes
- Les faits, données brutes

:::
:::

> « Les idées sont de libre parcours ! » — Henri Desbois

**Durée :** Vie de l'auteur + 70 ans (EU/US)

---
# Droits moraux vs patrimoniaux

::: columns
::: column

**Droits moraux** (inaliénables en France)
- Droit de paternité
- Droit au respect de l'œuvre
- Droit de divulgation
- Droit de retrait

:::
::: column

**Droits patrimoniaux** (cessibles)
- Droit de reproduction
- Droit de distribution
- Droit de modification
- Droit de communication au public

:::
:::

::: box
**Les licences libres portent sur les droits patrimoniaux.**
:::

---
# Le logiciel et le droit d'auteur

**Textes de référence :**
- France : Loi du 3 juillet 1985
- Europe : Directive 91/250/CEE (puis 2009/24/CE)
- US : Copyright Act de 1980

::: columns
::: column

**Ce qui est protégé**
- Code source
- Code objet (binaire)
- Documentation
- Matériel de conception

:::
::: column

**Ce qui ne l'est pas**
- Interfaces/APIs (débattu)
- Fonctionnalités
- Langages de programmation
- Formats de fichiers

:::
:::

---
# Cas particuliers : APIs et interfaces utilisateur

::: columns
::: column

**APIs (interfaces de programmation)**

- **Oracle vs Google (2010-2021)**
  - Google copie ~11 500 lignes de déclarations d'APIs Java
  - Cour Suprême : « fair use », mais les APIs *peuvent* être protégées
- **Affaire SCO (2003-2021)**
  - SCO prétend que Linux contient du code Unix
  - Échec total après 18 ans de procédure

:::
::: column

**Interfaces utilisateur (GUI)**

- **Apple vs Digital Research (1985)**
  - GEM ressemble trop au Mac
  - DR doit modifier son interface (icônes, corbeille)
- **Apple vs Microsoft (1988-1994)**
  - Apple perd sur le « look and feel »
  - Les éléments fonctionnels ne sont pas protégeables

:::
:::

::: box
**Fair use (US)** : Exception au copyright permettant l'utilisation sans autorisation si elle est « transformative » (but différent, contexte éducatif, critique, etc.). N'existe pas en droit français (exceptions plus limitées).
:::

---
# Partie 4

## Qui détient les droits ?

---
# Le cas général

Par défaut : **l'auteur** (personne physique) détient le copyright.

**Situations particulières :**
- Salarié en entreprise
- Agent de la fonction publique
- Stagiaire
- Prestataire / freelance
- Contributeur open source

---
# Le cas du salarié

En France (article L.113-9 CPI) :

::: columns
::: column

**Principe**
- L'auteur reste le développeur salarié
- Mais cession **automatique** des droits patrimoniaux à l'employeur
- Pour les logiciels créés dans le cadre du contrat

:::
::: column

**Cas ambigus**
- Projet personnel sur temps libre ?
- Utilisation des ressources de l'entreprise ?
- Lien avec l'activité professionnelle ?
- → Vérifier le contrat de travail !

:::
:::

---
# Cas particulier : les stagiaires

::: box
**Attention :** Contrairement aux salariés, les stagiaires **conservent** leurs droits patrimoniaux !
:::

::: columns
::: column

**Pourquoi ?**
- L'article L.113-9 CPI ne mentionne que les « salariés » et « agents publics »
- Le stagiaire n'est pas un salarié
- Même rémunéré, le stage ≠ contrat de travail

:::
::: column

**Conséquences pratiques**
- Prévoir une cession de droits **explicite**
- Clause dans la convention de stage
- Ou contrat séparé de cession
- Sinon : le stagiaire reste titulaire !

:::
:::

---
# Partie 5

## Les brevets logiciels

---
# Qu'est-ce qu'un brevet ?

::: columns
::: column

**Définition**
- Monopole temporaire (20 ans)
- Sur une invention technique
- En échange de sa divulgation
- Doit être déposé et examiné

:::
::: column

**Conditions**
- Nouveauté
- Activité inventive (non-évidence)
- Application industrielle
- Pas d'exclusions légales

:::
:::

---
# Brevets et logiciels : US vs Europe

::: columns
::: column

**Aux États-Unis**
- Brevets logiciels largement acceptés
- Des millions de brevets déposés
- « Patent trolls »
- Litiges fréquents et coûteux

:::
::: column

**En Europe**
- Logiciels « en tant que tels » **exclus** (Art. 52 CBE)
- Mais « inventions mises en œuvre par ordinateur » brevetables
- Situation ambiguë
- Directive 2005 rejetée par le Parlement

:::
:::

---
# Pourquoi les brevets logiciels sont controversés

::: columns
::: column

**Arguments pour**
- Protection de l'investissement R&D
- Incitation à l'innovation
- Valorisation des startups

:::
::: column

**Arguments contre**
- Brevets trop larges/vagues
- Freinent l'innovation
- Coûts de litiges énormes
- « Patent trolls »
- L'industrie a innové 50 ans sans brevets

:::
:::

---
# Cas célèbres de brevets logiciels

| Cas | Objet | Issue |
|-----|-------|-------|
| **Amazon 1-Click** | Achat en un clic | Validé US, rejeté EU |
| **MPEG/H.264** | Compression vidéo | Pool de brevets, royalties |
| **Apple vs Samsung** | Design, slide-to-unlock | Batailles multiples |
| **Blackberry (NTP)** | Email mobile | 612 M$ de règlement |

**Note :** Ne pas confondre avec Oracle vs Google (2021), qui concernait le **droit d'auteur** sur les APIs, pas les brevets.

---
# Partie 6

## Les marques

---
# Les marques dans l'open source

::: columns
::: column

**Ce qu'une marque protège**
- Un nom
- Un logo
- Un slogan
- Une identité commerciale

:::
::: column

**Exemples**
- « Linux » (Linux Foundation)
- « Firefox », logo (Mozilla)
- « Red Hat » (IBM)
- « Debian » (SPI)

:::
:::

::: box
**Important :** Un logiciel peut être libre, mais son nom/logo peut être protégé par une marque.
:::

---
# Implications pratiques

::: columns
::: column

**Ce que vous pouvez faire**
- Forker le code
- Modifier le logiciel
- Redistribuer vos modifications

:::
::: column

**Ce que vous ne pouvez pas faire**
- Utiliser le nom original pour votre fork
- Utiliser le logo
- Créer une confusion

:::
:::

**Exemple célèbre :** Debian modifie Firefox → doit le renommer « Iceweasel » (2006-2016)

---
# Partie 7

## Interopérabilité et reverse engineering

---
# Décompilation et interopérabilité

La directive européenne 91/250/CE prévoit une **exception importante**.

::: columns
::: column

**Principe général**
- La décompilation est interdite
- Elle crée une œuvre dérivée
- Nécessite l'accord de l'ayant droit

:::
::: column

**Exception pour l'interopérabilité**
- Décompilation autorisée pour obtenir les informations d'interface
- Si non disponibles autrement
- Uniquement pour les parties nécessaires

:::
:::

::: box
**Spécificité européenne :** Cette exception favorise la concurrence et empêche les marchés captifs.
:::

---
# Développement « Clean Room »

Technique pour créer un logiciel compatible sans contrefaçon.

::: columns
::: column

**Principe**
- Séparation stricte entre deux équipes
- **Équipe A (dirty room)** : analyse, documente les specs
- **Équipe B (clean room)** : implémente à partir des specs uniquement

:::
::: column

**Pourquoi ça marche ?**
- L'équipe B n'a jamais vu le code original
- Impossible de copier involontairement
- Seules les idées/interfaces sont transmises
- Les idées ne sont pas protégées

:::
:::

**Cas célèbres :** BIOS IBM (Phoenix, AMI), Wine, Samba

---
# Partie 8

## Le copyleft : le « hack juridique »

---
# Comment fonctionne le copyleft ?

Le copyleft **utilise** le droit d'auteur pour **garantir** les libertés.

**Mécanisme :**

1. L'auteur détient le copyright sur son code
2. Au lieu de restreindre les droits, il les **accorde** sous conditions
3. Condition principale : les œuvres dérivées gardent la même licence
4. Les libertés deviennent **virales** et **irrévocables**

::: box
**Le copyleft retourne le copyright contre son objectif initial.**
:::

---
# Copyleft vs Domaine public

::: columns
::: column

**Domaine public**
- Aucune protection
- N'importe qui peut s'approprier
- Peut être « refermé »
- Pas de garantie de liberté

:::
::: column

**Copyleft**
- Utilise la protection du copyright
- Conditions de redistribution
- Ne peut pas être « refermé »
- Libertés garanties à perpétuité

:::
:::

> Sans copyright, pas de copyleft possible !

---
# Schéma : Copyright, Copyleft, Domaine public

```
                    Droit d'auteur
                         │
         ┌───────────────┴───────────────┐
         │                               │
    Propriétaire                      Libre
    « Tous droits                        │
     réservés »              ┌───────────┴───────────┐
                             │                       │
                        Copyleft               Permissif
                       (GPL, AGPL)            (MIT, BSD)
                       « Libertés             « Faites ce
                        virales »             que vous voulez »
```

---
# Pourquoi le copyleft est-il efficace ?

::: columns
::: column

**Protection juridique**
- Base légale solide (copyright)
- Applicable devant les tribunaux
- Précédents juridiques

:::
::: column

**Cas de violations**
- Busybox vs nombreuses entreprises
- GPL-violations.org
- Software Freedom Conservancy
- La plupart se résolvent hors tribunal

:::
:::

---
# Partie 9

## Qu'est-ce qu'une licence ?

---
# Définition

Une licence est un **contrat** entre l'auteur et l'utilisateur.

::: columns
::: column

**Ce qu'elle définit**
- Droits accordés à l'utilisateur
- Conditions d'utilisation
- Limitations et exclusions
- Obligations en cas de redistribution

:::
::: column

**Ce qu'elle ne garantit pas**
- Le prix (libre ≠ gratuit)
- La qualité du logiciel
- Le support technique
- La maintenance / pérennité

:::
:::

---
# Structure type d'une licence

1. **Préambule** — Intentions et philosophie (optionnel)

2. **Définitions** — Termes utilisés (œuvre, code source, distribution...)

3. **Droits accordés** — Ce que vous pouvez faire

4. **Conditions** — Ce que vous devez faire en retour

5. **Limitations** — Ce que vous ne pouvez pas faire

6. **Clause de garantie** — Généralement « AS IS » (aucune garantie)

7. **Clause de responsabilité** — Limitation de responsabilité

---
# Pas de licence = pas de droits

::: box
**Attention :** Un code sans licence n'est pas libre, il est **inutilisable**.
:::

Sans licence explicite :
- Le droit d'auteur s'applique par défaut
- « Tous droits réservés »
- Vous ne pouvez ni copier, ni modifier, ni redistribuer

**Conséquence :** Toujours vérifier la licence avant d'utiliser du code.

---
# Partie 10

## Le spectre des licences

---
# Vue d'ensemble

```
Propriétaire          Permissif           Copyleft faible        Copyleft fort
     │                    │                    │                      │
  Fermé              MIT/BSD              LGPL/MPL                GPL/AGPL
     │                    │                    │                      │
« Tous droits        « Faites ce           « Gardez la              « Tout dérivé
 réservés »          que vous voulez »      lib libre »              reste libre »
```

**Critère clé :** Que se passe-t-il quand vous redistribuez une version modifiée ?

---
# Les grandes familles

| Type | Exemples | Obligation principale |
|------|----------|----------------------|
| **Permissif** | MIT, BSD, Apache 2.0 | Attribution (garder le copyright) |
| **Copyleft faible** | LGPL, MPL | Partager les modifs de la lib |
| **Copyleft fort** | GPL, AGPL | Tout le projet sous même licence |

::: box
**Prochaine session :** Nous étudierons chaque licence en détail et apprendrons à les utiliser en pratique.
:::

---
# Résumé

---
# Ce qu'il faut retenir

1. Le logiciel est protégé par le **droit d'auteur** (pas besoin de dépôt)

2. Les **brevets logiciels** existent surtout aux US, exclus « en tant que tels » en Europe

3. Les **marques** protègent les noms et logos, même pour des logiciels libres

4. Le **copyleft** utilise le droit d'auteur pour garantir les libertés

5. En entreprise : salariés cèdent automatiquement, **stagiaires non**

6. Une **licence** est un contrat : pas de licence = pas de droits

---
# Tableau récapitulatif

| Protection | Objet | Durée | Formalité | Exemples |
|------------|-------|-------|-----------|----------|
| **Droit d'auteur** | Expression, code | Vie + 70 ans | Automatique | Code source, doc |
| **Brevet** | Invention technique | 20 ans | Dépôt examiné | Algorithme (US) |
| **Marque** | Signe distinctif | 10 ans renouv. | Enregistrement | « Linux », logo |
| **Secret** | Information | Illimité | Aucune | Code propriétaire |

---
# Pour la prochaine séance

**Séance 5 :** Maîtriser les licences libres en pratique

**Préparation suggérée :**
- Lire la licence MIT (très courte)
- Parcourir le préambule de la GPL v3
- Regarder la licence d'un projet que vous utilisez

---
# Questions ?

::: spacer 3
:::

::: center
**Passons au TD**
:::
