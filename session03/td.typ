= TD 3 — Histoire du logiciel libre (1990-aujourd'hui)

== Objectifs

- Analyser les principes de "The Cathedral and the Bazaar"
- Comprendre le virage "Open Source" de 1998
- Réfléchir aux évolutions récentes de l'écosystème

#line(length: 100%)

== Exercice 1 — The Cathedral and the Bazaar (20 min)

=== Les principes d'Eric Raymond

Eric Raymond énonce 19 "leçons" dans son essai. En voici quelques-unes :

*Leçon 1 :* "Every good work of software starts by scratching a developer's personal itch."
(Tout bon logiciel commence par résoudre un problème personnel du développeur.)

*Leçon 4 :* "If you have the right attitude, interesting problems will find you."
(Si vous avez la bonne attitude, les problèmes intéressants vous trouveront.)

*Leçon 6 :* "Treating your users as co-developers is your least-hassle route to rapid code improvement."
(Traiter vos utilisateurs comme des co-développeurs est le chemin le plus simple vers une amélioration rapide du code.)

*Leçon 8 :* "Given a large enough beta-tester and co-developer base, almost every problem will be characterized quickly and the fix obvious to someone." (Loi de Linus)

*Leçon 11 :* "The next best thing to having good ideas is recognizing good ideas from your users."
(Juste après avoir de bonnes idées, il y a reconnaître les bonnes idées de vos utilisateurs.)

=== Questions

+ Pour la *Leçon 1* : Donnez un exemple de logiciel célèbre qui illustre ce principe (le créateur résolvait son propre problème).
+ Pour la *Leçon 8* (Loi de Linus) : Pensez-vous que ce principe s'applique à tous les types de bugs ? Y a-t-il des contre-exemples ?
+ Comparez les modèles "Cathédrale" et "Bazar" :

#table(columns: (auto, auto, auto),
  table.header([Critère], [Cathédrale], [Bazar]),
  [Fréquence des releases], [], [],
  [Taille de l'équipe core], [], [],
  [Rôle des utilisateurs], [], [],
  [Planification], [], [],
  [Exemple de projet], [], [],
)

4. Un projet peut-il combiner les deux approches ? Comment ?

#line(length: 100%)

== Exercice 2 — L'annonce de Netscape (15 min)

Le 22 janvier 1998, Netscape annonce qu'il va libérer le code source de son navigateur.

=== Extrait du communiqué de presse

#block(inset: (left: 1em), stroke: (left: 2pt + luma(200)))[
"Netscape Communications Corporation today announced bold plans to make the source code for the next generation of its Netscape Communicator client software available for free licensing on the Internet. \[...\] By giving away the source code for future versions, Netscape will be able to harness the creative power of thousands of programmers on the Internet."
]

=== Questions

+ Quel était le contexte commercial de Netscape début 1998 ? (Indice : quelle était sa part de marché face à Internet Explorer ?)
+ Quels bénéfices Netscape espérait-il tirer de cette décision ?
+ Le projet Mozilla a-t-il été un succès ? Retracez brièvement son évolution jusqu'à Firefox.
+ Pensez-vous que Netscape aurait pu "gagner" contre Microsoft s'il avait libéré son code plus tôt ?

#line(length: 100%)

== Exercice 3 — "Open Source" vs "Free Software" (15 min)

=== Le débat

En 1998, un groupe de développeurs décide de créer le terme "Open Source" pour remplacer "Free Software".

=== Citation de Richard Stallman

#block(inset: (left: 1em), stroke: (left: 2pt + luma(200)))[
"Open source is a development methodology; free software is a social movement. For the free software movement, free software is an ethical imperative, essential respect for the users' freedom. By contrast, the philosophy of open source considers issues in terms of how to make software 'better' — in a practical sense only."
]

=== Citation d'Eric Raymond

#block(inset: (left: 1em), stroke: (left: 2pt + luma(200)))[
"We realized it was time to dump the confrontational attitude that has been associated with 'free software' in the past and sell the idea strictly on \[...\] pragmatic, business-case grounds."
]

=== Questions

+ Résumez en une phrase la différence fondamentale entre les deux approches.
+ Pourquoi les fondateurs de l'OSI pensaient-ils que le terme "Free Software" était un frein ?
+ Du point de vue d'une entreprise qui évalue un logiciel, quelle approche est la plus convaincante ? Pourquoi ?
+ Pensez-vous que cette distinction est toujours pertinente aujourd'hui ?

#line(length: 100%)

== Exercice 4 — Évolution récente (si temps restant)

=== Le retournement de Microsoft

En 2001, Steve Ballmer (CEO de Microsoft) qualifiait Linux de "cancer". En 2014, le nouveau CEO Satya Nadella déclare "Microsoft loves Linux".

=== Questions

+ Qu'est-ce qui explique ce changement de position ?
+ Listez au moins 5 actions concrètes de Microsoft en faveur de l'open source depuis 2014.
+ Ce changement est-il sincère ou purement stratégique ? Argumentez.
+ Quels risques ce rapprochement représente-t-il pour l'écosystème open source ?

=== Le rachat de Red Hat par IBM (2018)

IBM a racheté Red Hat pour 34 milliards de dollars.

+ Pourquoi un tel montant pour une entreprise qui distribue des logiciels "gratuits" ?
+ Qu'est-ce qui fait la valeur de Red Hat ?

#line(length: 100%)

== Pour aller plus loin

=== Lectures & Vidéos

- *"The Cathedral and the Bazaar"* (complet) : http://www.catb.org/~esr/writings/cathedral-bazaar/
- *"Just for Fun"* (autobiographie de Linus Torvalds)
- *"Code Rush"* (film que la "libération" du code de Netscape) - https://en.wikipedia.org/wiki/Code\_Rush
- *"Revolution OS"* (documentaire, 2001) — disponible sur YouTube

=== Chronologie détaillée

- https://en.wikipedia.org/wiki/History\_of\_free\_and\_open-source\_software

=== Préparation séance 4

+ Qu'est-ce que le droit d'auteur (copyright) ?
+ Quelle est la différence entre un brevet et un droit d'auteur ?
+ Pourquoi les brevets logiciels sont-ils controversés ?