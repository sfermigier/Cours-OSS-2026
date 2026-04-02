# TD 8 — Gouvernance des projets open source

## Objectifs

- Analyser et comparer différents modèles de gouvernance
- Comprendre les mécanismes de prise de décision
- Réfléchir aux enjeux du leadership dans l'open source
- Concevoir une stratégie OSPO pour une entreprise

---

## Exercice 1 — Le droit au fork (15 min)

### Texte de Karl Fogel

> "The indispensable ingredient that binds developers together on a free software project, and makes them willing to compromise when necessary, is the code's forkability: the ability of anyone to take a copy of the source code and use it to start a competing project, known as a fork.
>
> The paradoxical thing is that the possibility of forks is usually a much greater force in free software projects than actual forks are. Because a fork is usually bad for everyone, the more serious the threat of a fork becomes, the more willing people are to compromise to avoid it."

### Questions

1. Selon Fogel, pourquoi le droit au fork est-il "indispensable" ?

2. Pourquoi dit-il qu'il n'y a pas de "vrais dictateurs" dans les projets open source ?

3. Pourquoi les forks réels sont-ils relativement rares ?

4. Donnez un exemple de fork qui a réussi et expliquez pourquoi il était nécessaire.

---

## Exercice 2 — Étude comparative de gouvernance (25 min)

### Instructions

Comparez la gouvernance de trois projets majeurs en recherchant leurs documents officiels.

### Projets à étudier

1. **Linux Kernel** — https://www.kernel.org/doc/html/latest/process/
2. **Apache HTTP Server** — https://httpd.apache.org/dev/guidelines.html
3. **Rust** — https://www.rust-lang.org/governance

### Grille comparative

| Critère | Linux | Apache | Rust |
|---------|-------|--------|------|
| Modèle de gouvernance | | | |
| Qui prend les décisions finales ? | | | |
| Comment devient-on mainteneur ? | | | |
| Processus pour les changements majeurs | | | |
| Gestion des conflits | | | |

### Questions d'analyse

1. Quel modèle vous semble le plus adapté à un projet avec des milliers de contributeurs ?

2. Quel modèle offre la meilleure succession en cas de départ du leader ?

3. Si vous deviez démarrer un nouveau projet, quel modèle choisiriez-vous et pourquoi ?

---

## Exercice 3 — Le consensus paresseux (15 min)

### Texte de l'OSS Watch

> "This is a meritocratic, consensus-based community project. [...]
>
> Since most people in the project community have a shared vision, there is often little need for discussion in order to reach consensus. In general, as long as nobody explicitly opposes a proposal or patch, it is recognised as having the support of the community. This is called lazy consensus — that is, those who have not stated their opinion explicitly have implicitly agreed to the implementation of the proposal."

### Questions

1. Quel est le mode préféré de prise de décision dans les projets open source ?

2. Pourquoi le consensus paresseux est-il considéré comme efficace ? Quels seraient les problèmes d'un vote systématique ?

3. Comment les projets gèrent-ils les cas où le consensus ne peut pas être atteint ?

### Mise en situation

Vous êtes mainteneur d'un projet. Un contributeur propose un changement majeur d'architecture. Après une semaine, vous avez :
- 3 commentaires positifs
- 1 commentaire avec des questions techniques
- 0 objection formelle
- 15 autres mainteneurs n'ont pas répondu

**Quelle décision prenez-vous et comment la justifiez-vous ?**

---

## Exercice 4 — Conception d'un OSPO (25 min)

### Contexte

Vous êtes consultant pour **TechCorp**, une entreprise de 500 développeurs qui édite des logiciels B2B. L'entreprise utilise massivement l'open source mais n'a aucune structure dédiée. La direction vous demande de proposer la création d'un OSPO.

### Situation actuelle

- 200+ projets internes utilisant de l'open source
- Aucun inventaire des dépendances
- Quelques développeurs contribuent "en cachette" sur leur temps libre
- Un incident récent : utilisation d'une lib GPL dans un produit propriétaire
- Volonté de la direction d'améliorer l'image tech de l'entreprise

### 4.1 Mission et périmètre

**Mission de l'OSPO (1-2 phrases) :**
```
____________________
____________________
```

**Périmètre d'action :**
- [ ] Conformité licences
- [ ] Sécurité supply chain
- [ ] Politique de contribution
- [ ] Relations communautaires
- [ ] Formation
- [ ] Autre : ____________________

### 4.2 Organisation

**Rattachement proposé :**
- [ ] Direction technique (CTO)
- [ ] Direction juridique
- [ ] Direction produit
- [ ] Indépendant
- Justification : ____________________

**Équipe initiale :**
| Rôle | Profil recherché | ETP |
|------|------------------|-----|
| | | |
| | | |
| | | |

### 4.3 Priorités année 1

**Listez 5 actions prioritaires ordonnées :**

1. ____________________
2. ____________________
3. ____________________
4. ____________________
5. ____________________

### 4.4 KPIs proposés

| KPI | Cible année 1 | Méthode de mesure |
|-----|---------------|-------------------|
| | | |
| | | |
| | | |

---

## Exercice 5 — Questions de réflexion (si temps restant)

### 5.1 Le BDFL

1. Quels sont les avantages d'avoir un BDFL pour un projet ?

2. Quels sont les risques ?

3. Pourquoi Guido van Rossum a-t-il démissionné de son rôle de BDFL de Python en 2018 ?

### 5.2 Les fondations

1. Pourquoi un projet choisirait-il de rejoindre une fondation comme Apache ou la Linux Foundation ?

2. Quelles sont les différences entre Apache SF et Linux Foundation ?

3. Un projet peut-il perdre son indépendance en rejoignant une fondation ?

### 5.3 Le burnout

Le burnout des mainteneurs est un problème croissant.

1. Quels facteurs contribuent au burnout dans l'open source ?

2. Que peuvent faire les projets pour prévenir ce problème ?

3. Que peuvent faire les utilisateurs/contributeurs ?

---

## Pour aller plus loin

### Lectures recommandées
- **"Producing Open Source Software"** — Karl Fogel (chapitre 4 : Social and Political Infrastructure)
- **"The Apache Way"** — https://www.apache.org/theapacheway/
- **"The TODO Group OSPO Guide"** — https://todogroup.org/guides/

### Documents de gouvernance à explorer
- Linux kernel process : https://www.kernel.org/doc/html/latest/process/
- Debian Constitution : https://www.debian.org/devel/constitution
- Node.js governance : https://github.com/nodejs/node/blob/main/GOVERNANCE.md

### Préparation séance 9
1. Comment une entreprise peut-elle gagner de l'argent avec du logiciel "gratuit" ?
2. Qu'est-ce que le modèle "open core" ?
3. Qu'est-ce que l'InnerSource ?
