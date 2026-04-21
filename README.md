# Cours : Introduction aux Logiciels Libres

**Master 1 — Université Paris-Cité**
**Année 2025-2026 - S2**

## Description

Ce cours offre une introduction complète au monde des logiciels libres et open source. Il couvre les aspects historiques, philosophiques, juridiques, techniques et économiques de l'écosystème open source.

## Objectifs pédagogiques

À l'issue du cours, l'étudiant sera capable de :

- Définir le logiciel libre et distinguer les différentes familles de licences
- Comprendre l'histoire et les enjeux du mouvement open source
- Analyser et choisir une licence adaptée à un projet
- Contribuer efficacement à un projet open source
- Évaluer la gouvernance et la santé d'un projet
- Comprendre les modèles économiques de l'open source
- Identifier les enjeux de sécurité liés à la supply chain logicielle

## Programme (10 sessions)

Chaque session comprend des slides de cours, des notes rédigées, et un TD (parfois accompagné d'un corrigé).

| # | Thème | Documents |
|---|-------|-----------|
| 1 | Introduction aux Logiciels Libres | [Slides](session01/slides.pdf), [notes de cours](session01/notes.pdf), [TD](session01/td.pdf) |
| 2 | Histoire du Logiciel Libre (1950-1990) | [Slides](session02/slides.pdf), [notes de cours](session02/notes.pdf), [TD](session02/td.pdf) |
| 3 | Histoire du Logiciel Libre (1990-aujourd'hui) | [Slides](session03/slides.pdf), [notes de cours](session03/notes.pdf), [TD](session03/td.pdf) |
| 4 | Droit et propriété intellectuelle du logiciel | [Slides](session04/slides.pdf), [notes de cours](session04/notes.pdf), [TD](session04/td.pdf), [corrigé](session04/td-corrige.pdf) |
| 5 | Maîtriser les licences libres | [Slides](session05/slides.pdf), [notes de cours](session05/notes.pdf), [TD](session05/td.pdf), [corrigé](session05/td-corrige.pdf) |
| 6 | Contribuer à un projet open source — Fondamentaux | [Slides](session06/slides.pdf), [notes de cours](session06/notes.pdf), [TD](session06/td.pdf), [corrigé](session06/td-corrige.pdf) |
| 7 | Contribuer efficacement — Bonnes pratiques | [Slides](session07/slides.pdf), [notes de cours](session07/notes.pdf), [TD](session07/td.pdf) |
| 8 | Gouvernance des projets open source | [Slides](session08/slides.pdf), [notes de cours](session08/notes.pdf), [TD](session08/td.pdf) |
| 9 | Modèles économiques et open source en entreprise | [Slides](session09/slides.pdf), [notes de cours](session09/notes.pdf), [TD](session09/td.pdf), [corrigé](session09/td-corrige.pdf) |
| 10 | Supply chain et sécurité | [Slides](session10/slides.pdf), [notes de cours](session10/notes.pdf), [TD](session10/td.pdf), [corrigé](session10/td-corrige.pdf) |

## Livret de cours

L'ensemble des notes de cours est également rassemblé dans un livret unique, plus pratique pour la lecture linéaire et l'impression :

- 📘 **[Livret complet (PDF)](livret/livret.pdf)** — *Introduction aux logiciels libres — Notes de cours* (80 pages environ)

## ⚠️ Remarques sur le contenu

> Les textes de ce dépôt (slides, notes, TD et livret) ont été relus mais contiennent **probablement encore des erreurs, des oublis ou des approximations excessives**.
>
> Si vous repérez une erreur (factuelle, juridique, typographique, etc.), une imprécision ou un passage à clarifier, **n'hésitez pas à la signaler via le [bug tracker](https://github.com/sfermigier/Cours-OSS-2026/issues)** du dépôt (ou par *pull request* si vous êtes à l'aise avec Git). Toute contribution est bienvenue et sera créditée.

## Évaluation

- **Examen partiel** (après la session 5) : 1 heure
- **Examen final** : 1 heure 1/2
- **Projet** : contribution à un projet open source existant

## Structure du dépôt

```
├── session01/ … session10/   # Slides, notes et TD (sources Markdown + PDF)
├── livret/                   # Livret compilé (Typst) à partir des notes
└── scripts/                  # Scripts de build (PDF, livret, etc.)
```

## Format des slides

Les présentations utilisent le format **Prezo** (similaire à Marp), compilé en PDF via `make`. Le livret et les notes sont produits avec **Typst** via **md2typst**.

## Ressources complémentaires

### Livres recommandés
- *The Cathedral and the Bazaar* — Eric S. Raymond (1999)
- *Free as in Freedom* — Sam Williams (2002) — biographie de RMS
- *The Art of Unix Programming* — Eric S. Raymond (2003)
- *Producing Open Source Software* — Karl Fogel (2005, mis à jour régulièrement en ligne)
- *Hackers: Heroes of the Computer Revolution* — Steven Levy (1984) — culture hacker, MIT AI Lab
- *A Quarter Century of Unix* — Peter Salus (1994) — histoire d'Unix
- *Le Hold-Up planétaire* — Roberto Di Cosmo & Dominique Nora (1998) — critique des monopoles logiciels
- *Just for Fun* — Linus Torvalds & David Diamond (2001) — autobiographie de Torvalds
- *Droit des logiciels* — François Pellegrini & Sébastien Canevet (PUF, 2013) — cadre juridique français
- *Working in Public* — Nadia Eghbal (2020) — économie et sociologie des mainteneurs

### Films documentaires
- *Revolution OS* (J.T.S. Moore, 2001) — documentaire sur la naissance du mouvement open source (Linus Torvalds, Richard Stallman, Eric Raymond, Bruce Perens…)
- *Code Rush* (D. Winton, 2000) — documentaire sur la libération du code de Netscape
- *Python: the Documentary* (I. L. Bechtle, 2025) - documentaire sur l'histoire de Python 

### Quelques sites de référence
- [GNU.org](https://www.gnu.org/) — Free Software Foundation
- [OpenSource.org](https://opensource.org/) — Open Source Initiative
- [SPDX License List](https://spdx.org/licenses/)
- [Choose a License](https://choosealicense.com/)

## Remerciements — sources d'inspiration

Ce cours doit beaucoup aux enseignants et chercheurs qui m'ont précédé sur ces sujets et dont les cours, articles et ouvrages ont nourri la réflexion, la structuration et parfois la substances des sessions.

- **Stefano Zacchiroli** (Télécom Paris / Institut Polytechnique de Paris, ex-Université Paris Diderot) — cours *Logiciels Libres* 2019-2020 (CC BY-SA 4.0). [Site du cours](https://upsilon.cc/zack/teaching/1920/loglib/).
- **Théo Zimmermann** (Télécom Paris / Inria), et **Marc Jeanmougin** (Télécom Paris) pour la promotion 2025 — cours *Logiciels Libres* et INF113 *Contribution à un logiciel libre* (2022, 2023, 2025).
- **Dirk Riehle** (Friedrich-Alexander University Erlangen-Nürnberg) — deux cours universitaires complets : **FOSS** (*Free/Libre and Open Source Software*) et **COSS** (*Commercial Open Source Software*), ainsi qu'une trentaine d'articles de recherche sur l'économie et la gouvernance de l'open source. Matériaux sous licence CC BY 4.0. [dirkriehle.com](https://dirkriehle.com/).
- **François Pellegrini** (Université de Bordeaux) — cours et ouvrage *Droit des logiciels* (avec Sébastien Canevet, PUF, 2013), référence francophone sur le cadre juridique du logiciel.
- **Roberto Di Cosmo** (Inria, ENS, directeur de **Software Heritage**) — co-auteur du *Hold-Up planétaire* (1998), pionnier en France de l'enseignement et de la défense du logiciel libre en milieu universitaire.

La section sur le **Cyber Resilience Act** (session 10) s'appuie largement sur le [guide CNLL / inno³](https://code.inno3.eu/ouvert/guide-cra) co-rédigé avec inno3.

Les erreurs et approximations qui subsistent sont, bien sûr, exclusivement de mon fait.

## Auteur & Licence

Stéfane Fermigier — Abilian SAS

Licence: Creative Commons CC-BY-SA
