= TD 6 — Contribuer à un projet open source

== Objectifs

- Explorer et évaluer des projets open source
- Identifier des opportunités de contribution
- Pratiquer le workflow fork/clone/branch

#line(length: 100%)

== Exercice 1 — Évaluer un projet \(20 min)

=== Instructions

Choisissez un projet open source parmi les suggestions ci-dessous \(ou un autre de votre choix) et évaluez-le selon les critères donnés.

*Suggestions de projets :*

- https://github.com/facebook/react
- https://github.com/django/django
- https://github.com/rust-lang/rust
- https://github.com/python/cpython
- https://github.com/microsoft/vscode
- https://github.com/mastodon/mastodon
- Un projet de votre choix

*Projet choisi :* \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

=== Grille d'évaluation

#table(columns: 3, align: (auto, auto, auto),
  table.header([Critère], [Valeur], [Commentaire]),
  [*Dernière activité* \(date du dernier commit)], [], [],
  [*Nombre de contributeurs* \(total)], [], [],
  [*Contributeurs actifs* \(commits récents)], [], [],
  [*Issues ouvertes*], [], [],
  [*PRs ouvertes*], [], [],
  [*Présence de CONTRIBUTING.md*], [Oui / Non], [],
  [*Présence de CODE\_OF\_CONDUCT.md*], [Oui / Non], [],
  [*Labels "good first issue"*], [Nombre :], [],
  [*Temps moyen de merge des PRs*], [], [],
)

=== Questions

+ Ce projet est-il "sain" pour un nouveau contributeur ? Justifiez.
+ Quels sont les points forts et les points faibles de ce projet pour un débutant ?
+ Recommanderiez-vous ce projet à quelqu'un qui veut faire sa première contribution ?

#line(length: 100%)

== Exercice 2 — Explorer la structure d'un projet \(15 min)

=== Instructions

Pour le projet choisi à l'exercice 1, explorez sa structure et répondez aux questions.

=== Fichiers à trouver

#table(columns: 3, align: (auto, auto, auto),
  table.header([Fichier], [Présent ?], [Contenu principal]),
  [README.md], [], [],
  [LICENSE], [], [],
  [CONTRIBUTING.md], [], [],
  [CODE\_OF\_CONDUCT.md], [], [],
  [CHANGELOG.md], [], [],
  [.github/ISSUE\_TEMPLATE/], [], [],
  [.github/PULL\_REQUEST\_TEMPLATE.md], [], [],
)

=== Questions sur CONTRIBUTING.md

Si le fichier existe, répondez à ces questions :

+ Comment doit-on reporter un bug ?
+ Y a-t-il un processus de discussion avant de coder une nouvelle feature ?
+ Quels sont les standards de code \(linter, formatage) ?
+ Y a-t-il un DCO ou CLA ?
+ Comment les commits doivent-ils être formatés ?

#line(length: 100%)

== Exercice 3 — Trouver des "Good First Issues" \(15 min)

=== Instructions

Utilisez les ressources suivantes pour trouver des issues adaptées aux débutants :

- Le projet choisi \(labels "good first issue", "help wanted")
- https://goodfirstissue.dev
- https://up-for-grabs.net

=== Tableau des issues trouvées

#table(columns: 5, align: (auto, auto, auto, auto, auto),
  table.header([Projet], [Issue \#], [Titre], [Langage], [Complexité estimée]),
  [], [], [], [], [],
  [], [], [], [], [],
  [], [], [], [], [],
)

=== Questions

+ Parmi les issues trouvées, laquelle vous semble la plus abordable ? Pourquoi ?
+ Que devriez-vous faire avant de commencer à travailler sur cette issue ?
+ Y a-t-il des commentaires sur l'issue qui donnent des indications sur l'approche à suivre ?

#line(length: 100%)

== Exercice 4 — Rédiger un rapport de bug \(15 min)

=== Contexte

Vous avez trouvé un bug dans un logiciel open source \(fictif). Rédigez un rapport de bug selon les bonnes pratiques.

*Scénario :*

- Logiciel : "AwesomeCalc" — une calculatrice en ligne de commande
- Bug : Quand on divise par un nombre décimal commençant par 0 \(ex: 0.5), le résultat est incorrect
- Vous êtes sous Ubuntu 22.04, Python 3.11, version 2.3.1 du logiciel

=== Votre rapport de bug

*Titre :* \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

*Description :*

```
[À compléter]
```

*Étapes pour reproduire :*

```
1.
2.
3.
```

*Résultat attendu :*

```
[À compléter]
```

*Résultat obtenu :*

```
[À compléter]
```

*Environnement :*

```
[À compléter]
```

=== Auto-évaluation

Vérifiez que votre rapport contient :

- \[ \] Un titre clair et descriptif
- \[ \] Des étapes de reproduction précises
- \[ \] Le résultat attendu vs obtenu
- \[ \] Les informations sur l'environnement
- \[ \] Un ton respectueux et professionnel

#line(length: 100%)

== Exercice 5 — Pratique du workflow \(si temps restant)

=== Instructions

Pratiquez le workflow de contribution sur un projet d'entraînement :

- https://github.com/firstcontributions/first-contributions
- Ou le dépôt de TD fourni par l'enseignant

=== Étapes à réaliser

+ \[ \] Forker le dépôt
+ \[ \] Cloner votre fork localement
  ```bash
  git clone git@github.com:VOTRE-USERNAME/first-contributions.git
  ```
+ \[ \] Ajouter le remote upstream
  ```bash
  git remote add upstream git@github.com:firstcontributions/first-contributions.git
  ```
+ \[ \] Créer une branche
  ```bash
  git checkout -b add-VOTRE-NOM
  ```
+ \[ \] Faire une modification \(ajouter votre nom au fichier Contributors.md)
+ \[ \] Commiter avec un message clair
  ```bash
  git add Contributors.md
  git commit -m "Add VOTRE-NOM to contributors list"
  ```
+ \[ \] Pousser la branche
  ```bash
  git push origin add-VOTRE-NOM
  ```
+ \[ \] Créer une Pull Request sur GitHub

=== Questions

+ Avez-vous rencontré des difficultés ? Lesquelles ?
+ Combien de temps s'est écoulé avant que votre PR soit mergée ?

#line(length: 100%)

== Pour aller plus loin

=== Ressources

- *First Contributions* : https://github.com/firstcontributions/first-contributions
- *Good First Issue* : https://goodfirstissue.dev
- *How to Contribute to Open Source* \(GitHub Guide) : https://opensource.guide/how-to-contribute/

=== Lectures recommandées

- *"Producing Open Source Software"* de Karl Fogel \(chapitre sur les contributions)
- Guide Mozilla : https://mozilla.github.io/open-leadership-training-series/

=== Préparation séance 7

+ Avoir complété au moins une fois le workflow fork → PR
+ Lire les conventions de messages de commit \(Conventional Commits)
+ Réfléchir aux bonnes pratiques de communication asynchrone