# Session 4 — Droit et propriété intellectuelle

## Objectifs de la séance

- Expliquer les mécanismes du droit d'auteur appliqués au logiciel.
- Distinguer droit d'auteur, brevets et marques.
- Identifier qui détient les droits selon le statut (salarié, stagiaire…).
- Comprendre le mécanisme du **copyleft**.
- Savoir lire la structure d'une licence logicielle.

## Partie 1 — Pourquoi le droit vous concerne

Le droit vous concerne dès que vous **utilisez, contribuez, publiez ou intégrez** du code dans un cadre professionnel. Les risques concrets : une violation de licence est une **contrefaçon** (pénalement sanctionnée), elle engage la responsabilité de l'entreprise, peut rendre un produit non distribuable, et a déjà donné lieu à des **litiges coûteux** (Cisco, Orange, Vizio…).

**Les licences libres reposent sur un échange** : l'auteur *donne* des droits à l'utilisateur (utiliser, modifier, redistribuer), en échange de quoi celui-ci *respecte* certaines conditions. Formule canonique : *« acceptez les conditions ou refusez le don »*.

> Ignorer une licence ne vous protège pas ; le droit n'est pas optionnel.

## Partie 2 — La propriété intellectuelle

La **propriété intellectuelle (PI)** regroupe les droits exclusifs sur les créations de l'esprit. On la divise traditionnellement en deux branches :

**Propriété industrielle** : brevets, marques, dessins et modèles, indications géographiques.

**Propriété littéraire et artistique** : droit d'auteur (*copyright*), droits voisins, droits sur les bases de données.

**Le logiciel est protégé principalement par le droit d'auteur**, accessoirement par brevets (variable selon les juridictions) et marques (pour le nom et le logo).

### Les trois piliers pour le logiciel

| Protection | Objet | Durée | Formalité |
|------------|-------|-------|-----------|
| **Droit d'auteur** | Expression, code | Vie + 70 ans | **Automatique** |
| **Brevet** | Invention technique | 20 ans | Dépôt examiné |
| **Marque** | Nom, logo, slogan | 10 ans (renouvelable) | Enregistrement |

Exemples concrets : le **code source de Linux** est protégé par droit d'auteur ; le **nom « Linux »** est une marque déposée (Linux Foundation) ; un **algorithme de compression** peut, aux USA, être brevetable.

### Justification et critiques

La PI repose sur un **échange de type contractuel** : l'État accorde un monopole temporaire à l'inventeur ou à l'auteur, en échange de la divulgation publique et du progrès collectif à terme. Les critiques classiques : création de monopoles temporaires, complexité juridique, coûts d'accès à la connaissance, et parfois frein à l'innovation elle-même (brevets trop larges, *patent trolls*).

## Partie 3 — Le droit d'auteur appliqué au logiciel

### Principes fondamentaux

Le droit d'auteur protège **l'expression** d'une idée, pas l'idée elle-même. Les œuvres doivent être **originales** (empreinte de la personnalité de l'auteur). Protection **automatique dès la création**, sans dépôt ni formalité. Pas de protection pour : les idées en tant que telles, les concepts, les méthodes, les algorithmes purs, les faits, les données brutes.

> *« Les idées sont de libre parcours. »* — Henri Desbois

**Durée** : vie de l'auteur + 70 ans (UE et US pour les personnes physiques). Aux US, les œuvres de commande ou produites par des salariés ont une durée distincte : **95 ans après publication ou 120 ans après création**, au premier des deux termes échu.

### Droits moraux vs patrimoniaux

**Droits moraux** (inaliénables en France) : droit de paternité (être identifié comme auteur), droit au respect de l'œuvre, droit de divulgation, droit de retrait (rare).

**Droits patrimoniaux** (cessibles) : droit de reproduction, droit de distribution, droit de modification, droit de communication au public.

**Les licences libres portent sur les droits patrimoniaux.** Les droits moraux subsistent : c'est pourquoi la plupart des licences imposent de **conserver les mentions d'auteur** (même en cas de fork ou de modification).

### Textes de référence

- **France** : loi du 3 juillet 1985 (intégrée au Code de la propriété intellectuelle, CPI).
- **Europe** : directive 91/250/CEE, puis 2009/24/CE.
- **États-Unis** : *Computer Software Copyright Act* de 1980 — un amendement au *Copyright Act* de 1976, qui inclut explicitement les logiciels dans le champ du droit d'auteur.

### Ce qui est protégé et ce qui ne l'est pas

**Protégé** : le code source, le code objet (binaire), la documentation, le matériel de conception.

**Non protégé (ou débattu)** : les APIs et les interfaces (débattu), les fonctionnalités, les langages de programmation, les formats de fichiers.

### Cas emblématiques

- **Oracle vs Google** (2010-2021) : Google reprend ~11 500 lignes de déclarations d'APIs Java dans Android. La **Cour Suprême US tranche en 2021** : c'est du *fair use*. Mais elle laisse ouverte la question de fond : les APIs *peuvent* être protégées par le droit d'auteur.
- **Affaire SCO** (2003-2021) : SCO prétend que Linux contient du code Unix. Échec total après 18 ans de procédure. Devenu un symbole des dérives des *patent trolls*.
- **Apple vs Microsoft** (1988-94) sur le *look and feel* : Apple perd — les éléments **fonctionnels** d'une interface ne sont pas protégeables.

**Note sur le *fair use*** : exception du droit américain qui autorise l'usage sans autorisation dans certains cas (usage transformatif, éducatif, parodie, critique…). Elle **n'existe pas en droit français**, où les exceptions sont plus limitées et strictement énumérées.

## Partie 4 — Qui détient les droits ?

**Par défaut** : l'auteur (personne physique) détient le droit d'auteur.

### Le cas du salarié (France, art. L.113-9 CPI)

Règle spécifique au logiciel : les droits patrimoniaux sont **automatiquement cédés à l'employeur**, pour les logiciels créés dans le cadre du contrat de travail.

Cas ambigus à vérifier dans le contrat :

- Projet personnel développé sur le temps libre mais lié au métier ?
- Utilisation de ressources de l'entreprise ?
- Lien direct avec l'activité professionnelle ?

### Le cas particulier des stagiaires

**Point essentiel** : le stagiaire n'est **pas un salarié**. L'article L.113-9 ne s'applique donc **pas**. Le stagiaire **conserve ses droits patrimoniaux** par défaut.

> Conséquence : si une entreprise veut récupérer les droits sur le code écrit par un stagiaire, elle doit prévoir une **cession explicite** dans la convention de stage (ou un contrat séparé).

C'est un piège très courant, à connaître si vous faites un stage qui produit du code à valeur économique.

## Partie 5 — Les brevets logiciels

### Principe

Un **brevet** est un **monopole temporaire** (20 ans) sur une invention technique, accordé en échange de la divulgation complète de l'invention. Conditions : nouveauté, activité inventive (non-évidence), application industrielle.

### US vs Europe : deux régimes

| États-Unis | Europe |
|------------|--------|
| Brevets logiciels largement acceptés | Logiciels « en tant que tels » **exclus** (Art. 52 CBE) |
| Des millions de brevets déposés | Mais « inventions mises en œuvre par ordinateur » brevetables |
| *Patent trolls* fréquents | Situation ambiguë ; directive 2005 **rejetée** par le Parlement européen |
| Litiges coûteux | Peu de brevets purement logiciels |

### Cas emblématiques

| Cas | Objet | Issue |
|-----|-------|-------|
| **Amazon 1-Click** | Achat en un clic | Validé aux US, rejeté en Europe |
| **MPEG / H.264** | Codecs vidéo | Pool de brevets, royalties |
| **Apple vs Samsung** | Design, *slide-to-unlock* | Batailles multiples, milliards en jeu |
| **Blackberry (NTP)** | Email mobile | Règlement à 612 M $ |

**Ne pas confondre** avec Oracle vs Google (2021), qui concernait le **droit d'auteur** sur les APIs, pas les brevets.

### Débats

- **Pour** : protection des investissements R&D, incitation à innover, valorisation des startups.
- **Contre** : brevets trop larges, frein à l'innovation, coûts de litiges, *patent trolls*. Argument historique : l'industrie du logiciel a innové pendant 50 ans **sans brevets**.

## Partie 6 — Les marques

### Ce qu'une marque protège

Le **nom**, le **logo**, le **slogan**, l'**identité commerciale**. La marque est une protection **distincte** du droit d'auteur : un logiciel peut être libre mais son nom reste protégé.

Exemples : « Linux » (Linux Foundation), « Firefox » et son logo (Mozilla), « Red Hat » (IBM), « Debian » (SPI).

### Implications pratiques

**Vous pouvez** : forker le code, le modifier, redistribuer votre version.

**Vous ne pouvez pas** : utiliser le nom original pour votre fork, utiliser le logo, créer une confusion commerciale avec le projet d'origine.

**Exemple célèbre** : Debian fork Firefox et doit le renommer **Iceweasel** (2006-2016) parce que la politique de marque de Mozilla exige des builds officiels.

## Partie 7 — Interopérabilité et reverse engineering

### Décompilation et exception d'interopérabilité

La directive européenne 91/250/CEE interdit en principe la décompilation (qui crée une œuvre dérivée), mais prévoit une **exception pour l'interopérabilité** :

- Décompilation autorisée pour obtenir les informations d'interface,
- si elles ne sont pas disponibles autrement,
- uniquement pour les parties nécessaires à l'interopérabilité.

C'est une **spécificité européenne** importante, qui protège la concurrence et empêche les marchés captifs.

### Développement *clean room*

Technique pour **créer un logiciel compatible sans contrefaçon** :

- Équipe A (*dirty room*) analyse le logiciel et documente les spécifications.
- Équipe B (*clean room*) implémente, à partir des specs seulement, sans jamais voir le code original.

Puisque les **idées** ne sont pas protégées, et que l'équipe B n'a jamais vu l'expression originale, son code est juridiquement « propre ».

**Cas historiques** : BIOS IBM-compatibles (Phoenix, AMI) ; **Wine** (API Windows) ; **Samba** (SMB/CIFS). Le cas de Chardet v7 vu en session 5 pose la question pour les réimplémentations par IA.

## Partie 8 — Le copyleft : le « hack juridique »

### Mécanisme

Le **copyleft** utilise le droit d'auteur pour **garantir** les libertés au lieu de les restreindre :

1. L'auteur détient le *copyright* sur son code.
2. Au lieu d'en faire un outil de restriction, il **accorde** les droits sous conditions.
3. Condition principale : **toute œuvre dérivée redistribuée doit rester sous la même licence**.
4. Les libertés deviennent **virales** et **irrévocables** ; elles se propagent avec le code.

> Le copyleft retourne le copyright **contre son objectif initial** pour garantir la liberté.

### Copyleft vs domaine public

| Domaine public | Copyleft |
|----------------|----------|
| Aucune protection | Utilise la protection du copyright |
| N'importe qui peut s'approprier et refermer | Conditions de redistribution qui empêchent la fermeture |
| Pas de garantie de liberté future | Libertés garanties à perpétuité |

**Sans copyright, pas de copyleft possible.** C'est pour cela que la FSF et les juristes du libre défendent des régimes forts de droit d'auteur, par un paradoxe apparent.

### Le spectre des licences

```
Propriétaire  →  Permissif  →  Copyleft faible  →  Copyleft fort
  Fermé          MIT/BSD        LGPL/MPL              GPL/AGPL
```

**Critère clé** : *que se passe-t-il quand vous redistribuez une version modifiée ?* Rien (permissif) → la bibliothèque reste libre (copyleft faible) → **tout** doit rester libre (copyleft fort).

### Efficacité juridique

Le copyleft a été testé en justice à de multiples reprises :

- **Busybox vs nombreuses entreprises** (actions de la SFLC puis SFC).
- **GPL-violations.org** (Harald Welte, Allemagne) — nombreuses victoires.
- **Free (Freebox)** (2011, France) — condamné.
- **Orange vs Entr'Ouvert** (2011-2024, France) — Orange condamné à 800 k€ sur la base d'un usage non conforme de la bibliothèque Lasso (GPL v2).
- **SFC vs Vizio** (2021-25) — enjeux sur le droit contractuel vs droit d'auteur.

La plupart des violations se résolvent **hors tribunal** avec restitution du code source.

## Partie 9 — Qu'est-ce qu'une licence ?

### Définition

Une licence est un **contrat** entre l'auteur et l'utilisateur. Elle définit les droits accordés, les conditions, les limitations, les obligations en cas de redistribution. Ce qu'elle **ne garantit pas** : le prix, la qualité, le support, la maintenance, la pérennité.

### Structure type

1. **Préambule** — intentions et philosophie (optionnel).
2. **Définitions** — termes employés (œuvre, code source, distribution…).
3. **Droits accordés**.
4. **Conditions** — ce que vous devez faire en retour.
5. **Limitations** — ce que vous ne pouvez pas faire.
6. **Clause de garantie** — généralement *AS IS*, aucune garantie.
7. **Clause de responsabilité** — limitation de responsabilité de l'auteur.

### Pas de licence = pas de droits

> Un code sans licence **n'est pas libre**, il est **inutilisable**.

Sans licence explicite : le droit d'auteur s'applique par défaut, « tous droits réservés ». Voir le code sur GitHub ne donne aucun droit de le copier, modifier ou redistribuer.

## Partie 10 — Les grandes familles

| Type | Exemples | Obligation principale |
|------|----------|------------------------|
| **Permissif** | MIT, BSD, Apache 2.0 | Attribution (conserver copyright) |
| **Copyleft faible** | LGPL, MPL | Partager les modifications **de la lib** |
| **Copyleft fort** | GPL, AGPL | Tout le projet dérivé sous même licence |

Chaque famille sera étudiée en détail en **session 5**.

## Ce qu'il faut retenir

1. Le logiciel est protégé par le **droit d'auteur** — pas besoin de dépôt.
2. Les **brevets logiciels** existent surtout aux US ; exclus « en tant que tels » en Europe.
3. Les **marques** protègent les noms et logos, même pour des logiciels libres.
4. Le **copyleft** utilise le droit d'auteur pour **garantir** les libertés.
5. En entreprise, **les salariés cèdent automatiquement**, **les stagiaires non** (à négocier).
6. Une licence est un **contrat** : pas de licence = pas de droits.

### Tableau récapitulatif des protections

| Protection | Objet | Durée | Formalité | Exemples |
|------------|-------|-------|-----------|----------|
| Droit d'auteur | Expression, code | Vie + 70 ans | Automatique | Code source, documentation |
| Brevet | Invention technique | 20 ans | Dépôt examiné | Algorithme (US) |
| Marque | Signe distinctif | 10 ans renouv. | Enregistrement | « Linux », logo |
| Secret | Information | Illimité | Aucune | Code propriétaire |

## Pour aller plus loin

- Code de la propriété intellectuelle (partie logiciels) : <https://www.legifrance.gouv.fr>
- Préparation session 5 : lire la licence MIT (très courte) ; parcourir le préambule de la GPL v3 ; regarder la licence d'un projet que vous utilisez.
