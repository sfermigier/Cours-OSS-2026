# TD 5 — Maîtriser les licences libres en pratique — CORRIGÉ

## Objectifs

- Lire et comprendre le contenu d'une licence
- Classifier les licences sur le spectre permissif-copyleft
- Résoudre des problèmes de compatibilité de licences
- Choisir une licence adaptée à un projet
- Utiliser les outils et standards (SPDX)

---

## Exercice 1 — Lecture de licences (20 min)

### 1.1 La licence MIT

**1. Listez tous les droits accordés par la licence MIT.**

La licence MIT accorde explicitement les droits suivants :
- **use** — utiliser le logiciel
- **copy** — copier le logiciel
- **modify** — modifier le logiciel
- **merge** — fusionner avec d'autres logiciels
- **publish** — publier le logiciel
- **distribute** — distribuer des copies
- **sublicense** — accorder des sous-licences
- **sell** — vendre des copies

> **Note :** La formulation "without restriction" et "without limitation" indique que cette liste n'est pas exhaustive — essentiellement, vous pouvez faire ce que vous voulez.

---

**2. Quelle est la seule condition pour bénéficier de ces droits ?**

**Condition unique :** Conserver et inclure l'avis de copyright et l'avis de licence dans toutes les copies ou portions substantielles du logiciel.

Citation : *"The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software."*

En pratique :
- Garder le fichier LICENSE
- Ou inclure le texte dans les headers
- Ou mentionner dans la documentation/crédits

---

**3. Que signifie "AS IS" et pourquoi est-ce important ?**

**"AS IS"** signifie "en l'état" — le logiciel est fourni tel quel, sans aucune garantie.

**Implications juridiques :**
- **Pas de garantie de fonctionnement** — Le logiciel peut avoir des bugs
- **Pas de garantie d'adéquation** — Peut ne pas convenir à votre usage ("FITNESS FOR A PARTICULAR PURPOSE")
- **Pas de garantie de non-contrefaçon** — L'auteur ne garantit pas qu'il détient tous les droits
- **Exclusion de responsabilité** — L'auteur ne peut pas être poursuivi pour les dommages causés par le logiciel

**Pourquoi c'est important :**
- Protège les auteurs (souvent bénévoles) contre les poursuites
- Standard dans quasiment toutes les licences open source
- Sans cette clause, distribuer du code gratuitement serait très risqué

---

**4. Puis-je vendre un logiciel qui utilise du code MIT ? Sous quelle condition ?**

**Oui, absolument.** La licence MIT autorise explicitement de "sell copies of the Software".

**Condition :** Inclure l'avis de copyright et la licence MIT (pour la partie MIT).

**Ce que vous pouvez faire :**
- Vendre le logiciel tel quel
- Vendre une version modifiée
- Intégrer dans un produit propriétaire et vendre
- Proposer comme SaaS payant

**Ce que vous devez faire :**
- Mentionner quelque part que vous utilisez du code MIT (dans les crédits, about, documentation, etc.)

---

### 1.2 Extrait du préambule de la GPL v3

**1. Comment la GPL justifie-t-elle l'imposition de restrictions sur la redistribution ?**

La GPL impose des restrictions **pour garantir les libertés** des utilisateurs futurs.

**Logique du préambule :**
- Les licences propriétaires "take away your freedom"
- La GPL veut "guarantee your freedom to share and change"
- Pour que le logiciel "remains free software for all its users"

**Paradoxe apparent :** On restreint (obligation de partager le source) pour libérer (garantir que tous les utilisateurs auront les mêmes droits).

**Citation clé :** *"to make sure it remains free software for all its users"*

C'est le principe du **copyleft** : utiliser le droit d'auteur non pas pour restreindre, mais pour garantir les libertés.

---

**2. Peut-on vendre un logiciel sous GPL ? Citez le passage pertinent.**

**Oui, on peut vendre un logiciel sous GPL.**

**Passage pertinent :** *"you have the freedom to distribute copies of free software (and charge for them if you wish)"*

**Clarification importante :**
- "Free software" = logiciel libre, pas gratuit
- "Free as in freedom, not as in free beer"
- Vous pouvez vendre :
  - Le support
  - L'installation
  - Les binaires compilés
  - Le média (CD, clé USB)
  - Le service de téléchargement

**Mais :** L'acheteur a le droit de redistribuer gratuitement ce qu'il a acheté !

---

**3. Quelle est la différence fondamentale de philosophie entre MIT et GPL ?**

| Aspect | MIT | GPL |
|--------|-----|-----|
| **Philosophie** | Liberté maximale pour le développeur | Liberté garantie pour l'utilisateur |
| **Question centrale** | "Que puis-je faire avec ce code ?" | "Que pourront faire les utilisateurs ?" |
| **Priorité** | Adoption, simplicité | Pérennité des libertés |
| **Vision** | Pragmatique / utilitaire | Éthique / militante |
| **Métaphore** | "Cadeau sans condition" | "Contrat social" |

**MIT :** "Je te donne ce code, fais-en ce que tu veux."
- Permet la "privatisation" du code
- Maximise les usages possibles
- Philosophie : BSD, académique

**GPL :** "Je te donne ce code, mais tu dois transmettre les mêmes libertés."
- Empêche la "privatisation"
- Garantit que le code reste libre
- Philosophie : FSF, Richard Stallman

---

## Exercice 2 — Classification de licences (15 min)

### Spectre des licences — CORRIGÉ

```
Plus permissif                                              Plus restrictif
      |                                                            |
      v                                                            v
[______________|_______________|_______________|________________]
   Domaine        Permissif      Copyleft         Copyleft
   public                        faible           fort

   CC0           MIT            LGPL             GPL v3
   Unlicense     BSD 3-cl       MPL 2.0          AGPL
                 Apache 2.0
```

**Placement détaillé :**

| Position | Licences |
|----------|----------|
| **Domaine public** | CC0, Unlicense |
| **Permissif** | MIT, BSD 3-clauses, Apache 2.0 |
| **Copyleft faible** | LGPL, MPL 2.0 |
| **Copyleft fort** | GPL v3, AGPL |

**Note :** AGPL est encore plus "restrictif" que GPL car il s'applique aussi aux services réseau.

---

### Tableau comparatif — CORRIGÉ

| Licence | Copyleft ? | Type | Brevets ? | Peut être dans du propriétaire ? |
|---------|------------|------|-----------|----------------------------------|
| **MIT** | Non | Permissif | Non | **Oui** |
| **Apache 2.0** | Non | Permissif | **Oui** (grant explicite) | **Oui** |
| **GPL v3** | **Oui** (fort) | Copyleft | **Oui** (grant explicite) | **Non** |
| **LGPL v3** | **Oui** (faible) | Copyleft | **Oui** | **Oui** (si linking dynamique) |
| **AGPL v3** | **Oui** (fort + réseau) | Copyleft | **Oui** | **Non** |
| **MPL 2.0** | **Oui** (fichier) | Copyleft | **Oui** | **Oui** (nouveaux fichiers) |

**Explications :**
- **Brevets** : Apache 2.0, GPL v3, LGPL v3, AGPL, MPL 2.0 incluent un grant de brevet explicite. MIT et BSD n'en parlent pas.
- **LGPL** : Permet l'intégration dans du propriétaire si on linke dynamiquement et qu'on ne modifie pas la bibliothèque.
- **MPL** : Copyleft au niveau du fichier — les fichiers modifiés restent MPL, mais les nouveaux fichiers peuvent être propriétaires.

---

## Exercice 3 — Cas pratiques : droits et obligations (15 min)

### Scénario A
Vous utilisez une bibliothèque MIT dans votre application propriétaire que vous vendez.

→ **Autorisé ?** ✅ **Oui**
→ **Obligation ?** Inclure l'avis de copyright et la licence MIT (dans un fichier LICENSES, dans les crédits, ou dans la documentation)

---

### Scénario B
Vous modifiez une application GPL et la distribuez sans fournir le code source.

→ **Autorisé ?** ❌ **Non**
→ **Pourquoi ?** La GPL impose de fournir le code source complet (y compris vos modifications) lors de la distribution. C'est l'obligation fondamentale du copyleft. Vous devez soit :
- Inclure le source avec les binaires
- Offrir par écrit de fournir le source sur demande (pendant 3 ans)
- Fournir un lien vers le source si distribution réseau

---

### Scénario C
Vous utilisez une bibliothèque LGPL dans votre application propriétaire, en linkant dynamiquement.

→ **Autorisé ?** ✅ **Oui**
→ **Devez-vous libérer le code de votre application ?** **Non** (si linking dynamique)
→ **Devez-vous libérer le code de la bibliothèque si vous la modifiez ?** ✅ **Oui**

**Explication :** La LGPL permet l'usage dans du propriétaire à condition de :
- Permettre aux utilisateurs de remplacer la bibliothèque (d'où le linking dynamique)
- Fournir le source de la bibliothèque (et de vos modifications) si modifiée
- Mentionner l'usage de code LGPL

---

### Scénario D
Vous prenez du code GPL et vous le mettez dans un projet MIT.

→ **Autorisé ?** ❌ **Non**
→ **Pourquoi ?** Le code GPL doit rester GPL. Vous ne pouvez pas le "relicencier" sous une licence moins restrictive. La GPL impose que les œuvres dérivées restent sous GPL. C'est le principe du copyleft : les libertés sont "virales" et ne peuvent pas être retirées.

---

### Scénario E
Vous forkez un projet AGPL, le modifiez, et l'utilisez comme service web **interne** dans votre entreprise sans publier le code.

→ **Autorisé ?** ✅ **Oui** (probablement)
→ **Pourquoi ?**

L'AGPL s'applique quand vous offrez le logiciel à des **"utilisateurs interagissant avec lui à distance via un réseau"**.

**Question clé : qui sont les "utilisateurs" ?**
- Si seuls vos employés utilisent le service → usage interne → pas de distribution
- Les employés ne sont pas des "tiers" au sens juridique
- L'entreprise utilise le logiciel pour elle-même

**Mais attention :**
- Si des clients ou partenaires externes utilisent le service → obligation de fournir le source
- La ligne est parfois floue (filiales, sous-traitants...)
- En cas de doute, consulter un juriste

---

### Scénario F
Vous prenez du code MIT et vous le publiez sous GPL.

→ **Autorisé ?** ✅ **Oui**
→ **Pourquoi ?**

La licence MIT permet de "sublicense" — vous pouvez redistribuer sous une autre licence. La GPL est plus restrictive que MIT, donc le passage est possible.

**Attention :**
- Le code original reste disponible sous MIT (vous ne pouvez pas "retirer" la licence MIT de l'auteur original)
- Votre version modifiée peut être GPL
- Les utilisateurs peuvent choisir de repartir de la version MIT originale

**C'est le principe : permissif → copyleft = OK.**

---

## Exercice 4 — Compatibilité de licences (20 min)

### 4.1 Cas pratiques

**Cas A :** MIT + Apache 2.0 + votre code

→ **Possible ?** ✅ **Oui**
→ **Licences possibles pour le résultat ?**
- **Apache 2.0** (recommandé — inclut la protection brevets)
- **MIT** (mais vous perdez la protection brevets d'Apache)
- **GPL v3** (si vous voulez du copyleft)
- **Propriétaire** (oui, les deux sont permissives)

**Explication :** MIT et Apache 2.0 sont toutes deux permissives et compatibles entre elles. Vous pouvez choisir la licence de votre projet final.

---

**Cas B :** GPL v3 + MIT

→ **Possible ?** ✅ **Oui**
→ **Licence du résultat ?** **GPL v3 obligatoirement**
→ **Pourquoi ?** MIT est compatible avec GPL (permissif → copyleft OK). Le code MIT peut être intégré dans du GPL. Mais le copyleft de la GPL "contamine" l'ensemble : le résultat doit être GPL.

---

**Cas C :** GPL v2-only + Apache 2.0

→ **Possible ?** ❌ **Non**
→ **Pourquoi ?** GPL v2 et Apache 2.0 sont **incompatibles**. Apache 2.0 contient des clauses sur les brevets que la FSF considère comme des "restrictions supplémentaires" interdites par GPL v2.

→ **Quelle solution si vous contrôlez le code GPL v2 ?**
- Relicencier en **GPL v2-or-later** (GPL-2.0+)
- Alors vous pouvez utiliser GPL v3 pour le résultat
- GPL v3 et Apache 2.0 sont compatibles

---

**Cas D :** Plugin pour WordPress (GPL v2+)

→ **Possible de distribuer le plugin seul sous MIT ?** ✅ **Oui** (théoriquement)
→ **Possible de distribuer le plugin avec WordPress ?** ❌ **Non** (pas sous MIT)

**Explication :**
- Un plugin WordPress qui utilise les APIs de WordPress est généralement considéré comme une œuvre dérivée
- Distribué avec WordPress → doit être compatible GPL → doit être GPL
- Si vous distribuez le plugin **seul**, séparément, c'est plus ambigu
- Position de WordPress : tous les plugins doivent être GPL
- **En pratique :** La plupart des plugins sont GPL v2+

---

**Cas E :** Bibliothèque AGPL dans une application SaaS (sans publier le code)

→ **Possible ?** ❌ **Non** (pas sans publier le code)

→ **Quelles sont vos options ?**

1. **Publier votre code source** sous AGPL ou licence compatible
2. **Acheter une licence commerciale** si l'éditeur propose du dual licensing
3. **Remplacer la bibliothèque** par une alternative sous licence permissive
4. **Isoler la bibliothèque** comme service séparé (architecture microservices) — mais attention, ça peut ne pas suffire selon l'intégration
5. **Ne pas utiliser l'AGPL** — trouver une alternative

---

### 4.2 Question de synthèse

**Pourquoi "permissif vers copyleft" fonctionne mais pas l'inverse ?**

**Permissif → Copyleft : OK**

Les licences permissives accordent le droit de "sublicenser" — redistribuer sous d'autres termes. Elles n'imposent pas de contrainte sur la licence des œuvres dérivées. Donc :
- MIT dit : "fais ce que tu veux"
- GPL dit : "tu dois partager sous GPL"
- Pas de contradiction : vous pouvez respecter les deux

**Copyleft → Permissif : NON**

Les licences copyleft imposent que les œuvres dérivées gardent la même licence. Donc :
- GPL dit : "les dérivés doivent être GPL"
- MIT permettrait : "les dérivés peuvent être propriétaires"
- Contradiction : impossible de respecter les deux

**Analogie :**
- Permissif = "porte ouverte" — vous pouvez ajouter des conditions
- Copyleft = "porte verrouillée dans une direction" — les conditions ne peuvent qu'augmenter, jamais diminuer

**Schéma :**
```
MIT ──────────► GPL ──────────► AGPL
    (ajout de       (ajout de
     conditions)     conditions)

Sens inverse impossible : on ne peut pas retirer de conditions
```

---

## Exercice 5 — Choisir une licence (15 min)

### Projet 1 : Bibliothèque de parsing JSON

→ **Licence recommandée :** **MIT** (ou BSD 3-clauses)

→ **Justification :**
- **Adoption maximale** : MIT est la licence la plus simple et la plus permissive
- **Écosystème** : Les libs similaires sont MIT/BSD — cohérence avec l'écosystème
- **Universalité** : Utilisable par tous (startups, entreprises, projets GPL, projets propriétaires)
- **Simplicité** : Aucune friction pour les utilisateurs

Alternative : **Apache 2.0** si vous voulez une protection brevets explicite.

---

### Projet 2 : CMS (Alternative à WordPress)

→ **Licence recommandée :** **AGPL v3**

→ **Justification :**
- **Protection contre AWS** : L'AGPL oblige à partager le code même pour les services SaaS
- **Communauté** : Les contributeurs savent que leur travail ne sera pas "privatisé"
- **Business model compatible** : Vous pouvez offrir des services (hosting, support) sans problème
- **Précédent** : WordPress est GPL, Nextcloud est AGPL — modèles qui fonctionnent

→ **Alternative à considérer :**
- **Dual licensing** (AGPL + commercial) : Permet de vendre des licences propriétaires aux entreprises qui ne veulent pas partager leur code
- **BSL (Business Source License)** : Source available pendant X ans, puis open source — mais n'est PAS open source selon l'OSI

---

### Projet 3 : Outil CLI pour DevOps

→ **Licence recommandée :** **Apache 2.0**

→ **Justification :**
- **Entreprises** : Apache 2.0 est bien acceptée par les entreprises (pas de copyleft)
- **Protection brevets** : Grant explicite de brevets + clause de rétorsion
- **Startup** : Une licence permissive facilite l'adoption et rassure les investisseurs
- **Crédibilité** : Apache 2.0 est utilisée par Kubernetes, TensorFlow, etc.

Alternative : **MIT** si vous voulez la simplicité maximale (mais pas de protection brevets).

---

### Projet 4 : Fork d'un projet GPL v3

→ **Licence obligatoire :** **GPL v3** (ou compatible, comme AGPL v3)

→ **Pouvez-vous ajouter des restrictions supplémentaires ?** ❌ **Non**
- La GPL v3 interdit explicitement d'ajouter des restrictions
- Section 7 liste les permissions supplémentaires autorisées (pas les restrictions)

→ **Pouvez-vous changer le nom ?** ✅ **Oui**
- Le code est sous GPL, pas le nom
- Si le nom est une marque déposée, vous DEVEZ changer le nom
- Exemples : Iceweasel (Firefox), MariaDB (MySQL), LibreOffice (OpenOffice)

---

## Exercice 6 — SPDX et outils

### 6.1 Identifiants SPDX — CORRIGÉ

1. "GNU General Public License version 3 uniquement" → **`GPL-3.0-only`**

2. "MIT License" → **`MIT`**

3. "Apache License, Version 2.0" → **`Apache-2.0`**

4. "GNU Lesser General Public License version 2.1 ou ultérieure" → **`LGPL-2.1-or-later`**

5. "BSD 3-Clause License" → **`BSD-3-Clause`**

**Note :** Depuis SPDX 3.0, on utilise `-only` et `-or-later` au lieu de `+` pour la clarté.

---

### 6.2 Expressions SPDX — CORRIGÉ

1. Un projet dual-licensed MIT ou Apache 2.0 :
   → **`MIT OR Apache-2.0`**

2. Du code GPL v2+ avec l'exception Classpath :
   → **`GPL-2.0-or-later WITH Classpath-exception-2.0`**

3. Un projet qui nécessite à la fois MIT et BSD-3-Clause :
   → **`MIT AND BSD-3-Clause`**

**Rappel des opérateurs :**
- `OR` : L'utilisateur peut choisir l'une ou l'autre licence
- `AND` : Les deux licences s'appliquent simultanément
- `WITH` : Licence avec une exception

---

### 6.3 Analyse d'un projet réel — Exemple de réponse

**Projet choisi :** React (github.com/facebook/react)

1. **Licence principale :** MIT (fichier LICENSE)

2. **Headers de licence différents ?** Non, tout est MIT. Mais certains fichiers de test ou dépendances peuvent avoir d'autres licences.

3. **Licences des dépendances principales :**
   - La plupart sont MIT
   - Quelques BSD-3-Clause
   - Vérifiable via `npm ls --all` ou outils comme `license-checker`

4. **Identifiants SPDX ?** Oui, dans package.json : `"license": "MIT"`

---

## Exercice 7 — Identifier la licence d'un projet

### Tableau — CORRIGÉ

| Projet | URL | Licence | Type |
|--------|-----|---------|------|
| **React** | github.com/facebook/react | MIT | Permissif |
| **Linux** | github.com/torvalds/linux | GPL-2.0-only | Copyleft fort |
| **VS Code** | github.com/microsoft/vscode | MIT | Permissif |
| **Django** | github.com/django/django | BSD-3-Clause | Permissif |
| **Kubernetes** | github.com/kubernetes/kubernetes | Apache-2.0 | Permissif |
| **Mastodon** | github.com/mastodon/mastodon | AGPL-3.0 | Copyleft fort (+ réseau) |
| **Nextcloud** | github.com/nextcloud/server | AGPL-3.0 | Copyleft fort (+ réseau) |

---

### Questions

**1. Quel projet utilise AGPL et pourquoi ce choix est-il logique ?**

**Mastodon et Nextcloud** utilisent AGPL.

**Pourquoi c'est logique :**
- Ce sont des **applications serveur / SaaS**
- Sans AGPL, quelqu'un pourrait modifier le code et l'utiliser comme service sans partager ses modifications
- L'AGPL oblige à partager le code même quand le logiciel est utilisé via un réseau
- Protège la communauté contre la "privatisation" par les hébergeurs
- Cohérent avec leur modèle : instances fédérées où chaque opérateur doit pouvoir voir le code

---

**2. VS Code et Linux : licences très différentes, quelles conséquences ?**

| Aspect | VS Code (MIT) | Linux (GPL-2.0) |
|--------|---------------|-----------------|
| **Usage propriétaire** | ✅ Possible | ❌ Non |
| **Forks fermés** | ✅ Autorisés | ❌ Interdits |
| **Intégration** | Peut être intégré partout | Doit rester GPL |
| **Exemple concret** | VSCodium (fork MIT) | Android (contourne en user-space) |

**Conséquences pratiques :**
- **VS Code** : Microsoft peut créer une version propriétaire (VS Code ≠ VS Code OSS). Des extensions propriétaires existent.
- **Linux** : Nvidia doit créer des drivers séparés (pas dans le kernel) ou open-sourcer ses drivers. Tout le kernel reste libre.

**Ironie :** VS Code le produit (celui que vous téléchargez) inclut de la télémétrie et des extensions propriétaires. VS Code OSS (le repo GitHub) est MIT. La marque "Visual Studio Code" est propriétaire.

---

## Synthèse du TD

### Points clés à retenir

1. **MIT** = permissif maximal, une seule condition (attribution)

2. **GPL** = copyleft, garantit que le code reste libre pour tous

3. **Compatibilité** : Permissif → Copyleft ✅ | Copyleft → Permissif ❌

4. **AGPL** = GPL + obligation de partager même pour les services réseau

5. **SPDX** = standard pour identifier les licences (`MIT`, `GPL-3.0-only`, etc.)

6. **Choisir une licence** :
   - Adoption maximale → MIT/Apache
   - Code reste libre → GPL
   - Protection SaaS → AGPL
   - Bibliothèque mixte → LGPL/MPL

7. **Dual licensing** = modèle économique (GPL gratuit + commercial payant)

---

## Barème indicatif

| Exercice | Points |
|----------|--------|
| Exercice 1 — Lecture de licences | /4 |
| Exercice 2 — Classification | /3 |
| Exercice 3 — Cas pratiques droits/obligations | /4 |
| Exercice 4 — Compatibilité | /4 |
| Exercice 5 — Choisir une licence | /3 |
| Exercice 6 — SPDX (bonus) | /1 |
| Exercice 7 — Identifier licences (bonus) | /1 |
| **Total** | **… / 20** |
