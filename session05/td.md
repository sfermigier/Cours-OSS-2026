# TD 5 — Maîtriser les licences libres en pratique

## Objectifs

- Lire et comprendre le contenu d'une licence
- Classifier les licences sur le spectre permissif-copyleft
- Résoudre des problèmes de compatibilité de licences
- Choisir une licence adaptée à un projet
- Utiliser les outils et standards (SPDX)

---

## Exercice 1 — Lecture de licences

### 1.1 La licence MIT

```
MIT License

Copyright (c) 2024 Example Author

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

**Questions :**

1. Listez tous les droits accordés par la licence MIT.

2. Quelle est la seule condition pour bénéficier de ces droits ?

3. Que signifie "AS IS" et pourquoi est-ce important ?

4. Puis-je vendre un logiciel qui utilise du code MIT ? Sous quelle condition ?

---

### 1.2 Extrait du préambule de la GPL v3

> "The GNU General Public License is a free, copyleft license for software and other kinds of works.
>
> The licenses for most software and other practical works are designed to take away your freedom to share and change the works. By contrast, the GNU General Public License is intended to guarantee your freedom to share and change all versions of a program—to make sure it remains free software for all its users.
>
> When we speak of free software, we are referring to freedom, not price. [...] you have the freedom to distribute copies of free software (and charge for them if you wish) [...]"

**Questions :**

1. Comment la GPL justifie-t-elle l'imposition de restrictions sur la redistribution ?

2. Peut-on vendre un logiciel sous GPL ? Citez le passage pertinent.

3. Quelle est la différence fondamentale de philosophie entre MIT et GPL ?

---

## Exercice 2 — Classification de licences

### Spectre des licences

Placez les licences suivantes sur ce spectre :

```
Plus permissif                               Plus restrictif
      |                                                |
      v                                                v
[______________|_______________|_______________|________________]
   Domaine        Permissif      Copyleft         Copyleft
   public                        faible           fort
```

**Licences à placer :** GPL v3, MIT, LGPL, Apache 2.0, AGPL, BSD 3-clauses, MPL 2.0, CC0, Unlicense

---

### Tableau comparatif

Remplissez ce tableau :

| Licence | Copyleft ? | Type | Brevets ? | Peut être dans du propriétaire ? |
|---------|------------|------|-----------|----------------------------------|
| MIT | | | | |
| Apache 2.0 | | | | |
| GPL v3 | | | | |
| LGPL v3 | | | | |
| AGPL v3 | | | | |
| MPL 2.0 | | | | |

---

## Exercice 3 — Cas pratiques : droits et obligations

Pour chaque scénario, indiquez si c'est **autorisé** ou **non**, et pourquoi.

### Scénario A
Vous utilisez une bibliothèque MIT dans votre application propriétaire que vous vendez.
→ Autorisé ? ________
→ Obligation ? ________

### Scénario B
Vous modifiez une application GPL et la distribuez sans fournir le code source.
→ Autorisé ? ________
→ Pourquoi ? ________

### Scénario C
Vous utilisez une bibliothèque LGPL dans votre application propriétaire, en linkant dynamiquement.
→ Autorisé ? ________
→ Devez-vous libérer le code de votre application ? ________
→ Devez-vous libérer le code de la bibliothèque si vous la modifiez ? ________

### Scénario D
Vous prenez du code GPL et vous le mettez dans un projet MIT.
→ Autorisé ? ________
→ Pourquoi ? ________

### Scénario E
Vous forkez un projet AGPL, le modifiez, et l'utilisez comme service web interne dans votre entreprise sans publier le code.
→ Autorisé ? ________
→ Pourquoi ? ________

### Scénario F
Vous prenez du code MIT et vous le publiez sous GPL.
→ Autorisé ? ________
→ Pourquoi ? ________

---

## Exercice 4 — Compatibilité de licences

### 4.1 Cas pratiques

Pour chaque situation, déterminez si c'est possible et sous quelle licence le résultat peut être distribué.

**Cas A :** Vous voulez créer un projet qui combine :
- Une bibliothèque sous MIT
- Une bibliothèque sous Apache 2.0
- Votre propre code

→ Possible ? ______
→ Licences possibles pour le résultat ? ______

---

**Cas B :** Vous voulez créer un projet qui combine :
- Du code sous GPL v3
- Du code sous MIT

→ Possible ? ______
→ Licence du résultat ? ______
→ Pourquoi ? ______

---

**Cas C :** Vous voulez créer un projet qui combine :
- Du code sous GPL v2-only
- Du code sous Apache 2.0

→ Possible ? ______
→ Pourquoi ? ______
→ Quelle solution si vous contrôlez le code GPL v2 ? ______

---

**Cas D :** Vous voulez créer un plugin pour WordPress (GPL v2+) :
- WordPress est sous GPL v2 or later
- Vous voulez que votre plugin soit sous MIT

→ Possible de distribuer le plugin seul sous MIT ? ______
→ Possible de distribuer le plugin avec WordPress ? ______
→ Explication : ______

---

**Cas E :** Vous voulez utiliser une bibliothèque AGPL dans votre application SaaS :
- La bibliothèque est sous AGPL v3
- Vous ne voulez pas publier le code de votre application

→ Possible ? ______
→ Quelles sont vos options ? (listez-en au moins 2) ______

---

### 4.2 Question de synthèse

Expliquez pourquoi "permissif vers copyleft" fonctionne mais pas l'inverse.

---

## Exercice 5 — Choisir une licence

Pour chaque projet fictif, recommandez une licence et justifiez votre choix.

### Projet 1 : Bibliothèque de parsing JSON

- **Description :** Petite bibliothèque utilitaire en Python
- **Objectif :** Adoption maximale, utilisable par tous
- **Écosystème :** La plupart des libs similaires sont MIT ou BSD

→ Licence recommandée : ______
→ Justification : ______

---

### Projet 2 : CMS (Content Management System)

- **Description :** Alternative à WordPress
- **Objectif :** Créer une communauté de contributeurs
- **Business model :** Offrir des services payants (hosting, support)
- **Crainte :** Que AWS crée un service concurrent sans contribuer

→ Licence recommandée : ______
→ Justification : ______
→ Alternative à considérer : ______

---

### Projet 3 : Outil CLI pour DevOps

- **Description :** Outil de déploiement automatisé
- **Objectif :** Être utilisé par des entreprises
- **Contexte :** Fait par une startup qui veut lever des fonds
- **Crainte :** Protection contre les brevets des concurrents

→ Licence recommandée : ______
→ Justification : ______

---

### Projet 4 : Fork d'un projet GPL

- **Description :** Vous forkez un projet sous GPL v3
- **Objectif :** Ajouter des fonctionnalités et redistribuer

→ Licence obligatoire : ______
→ Pouvez-vous ajouter des restrictions supplémentaires ? ______
→ Pouvez-vous changer le nom ? ______

---

## Exercice 6 — SPDX et outils

### 6.1 Identifiants SPDX

Convertissez ces descriptions en identifiants SPDX :

1. "GNU General Public License version 3 uniquement" → ______

2. "MIT License" → ______

3. "Apache License, Version 2.0" → ______

4. "GNU Lesser General Public License version 2.1 ou ultérieure" → ______

5. "BSD 3-Clause License" → ______

### 6.2 Expressions SPDX

Écrivez l'expression SPDX pour ces situations :

1. Un projet dual-licensed MIT ou Apache 2.0 :
   → ______

2. Du code GPL v2+ avec l'exception Classpath :
   → ______

3. Un projet qui nécessite à la fois MIT et BSD-3-Clause :
   → ______

### 6.3 Analyse d'un projet réel

Choisissez un projet open source sur GitHub et analysez ses licences :

**Projet choisi :** ______

1. Quelle est la licence principale ? (fichier LICENSE)

2. Y a-t-il des fichiers avec des headers de licence différents ?

3. Quelles sont les licences des dépendances principales ? (package.json, requirements.txt, etc.)

4. Le projet utilise-t-il des identifiants SPDX dans ses fichiers de configuration ?

---

## Exercice 7 — Identifier la licence d'un projet

Allez sur GitHub et trouvez la licence des projets suivants :

| Projet | URL | Licence | Type (permissif/copyleft) |
|--------|-----|---------|---------------------------|
| React | github.com/facebook/react | | |
| Linux | github.com/torvalds/linux | | |
| VS Code | github.com/microsoft/vscode | | |
| Django | github.com/django/django | | |
| Kubernetes | github.com/kubernetes/kubernetes | | |
| Mastodon | github.com/mastodon/mastodon | | |
| Nextcloud | github.com/nextcloud/server | | |

**Questions :**

1. Quel projet utilise AGPL et pourquoi ce choix est-il logique pour ce type de logiciel ?

2. VS Code et Linux sont tous les deux open source. Pourtant, leurs licences sont très différentes. Quelles conséquences pratiques ?

---

## Pour aller plus loin

### Ressources
- **Choose a License** : https://choosealicense.com — Guide de choix de licence
- **SPDX License List** : https://spdx.org/licenses/ — Liste standard des licences
- **TLDRLegal** : https://tldrlegal.com — Résumés de licences
- **FSF License List** : https://www.gnu.org/licenses/license-list.html
- **OSI License List** : https://opensource.org/licenses

### Quiz en ligne
- **FSF License Quiz** : https://www.gnu.org/cgi-bin/license-quiz.cgi

### Outils à tester
- **licensee** : `gem install licensee && licensee detect .`
- **ScanCode** : https://github.com/nexB/scancode-toolkit
- **REUSE** : https://reuse.software (outil FSFE pour SPDX)

### Questions pour la séance 6
1. Quels sont les différents types de contributions possibles à un projet open source ?
2. Qu'est-ce qu'une "good first issue" ?
3. Quelles sont les étapes pour soumettre une pull request ?
