= TD 4 — Comprendre le droit du logiciel libre

== Objectifs

- Comprendre les implications pratiques du droit d'auteur pour un développeur
- Identifier qui détient les droits selon le statut \(salarié, stagiaire, freelance)
- Analyser un cas juridique emblématique
- Réfléchir aux enjeux des brevets logiciels et de l'interopérabilité

#line(length: 100%)

== Exercice 1 — Qui détient les droits sur votre code ? \(25 min)

=== Scénarios

Pour chaque scénario, déterminez qui détient les droits d'auteur sur le code produit.

*Scénario A :*
Marie est développeuse salariée chez TechCorp. Dans le cadre de son travail, elle développe une application de gestion de stock pendant ses heures de bureau, sur son ordinateur professionnel.

→ Qui détient les droits patrimoniaux ? \_\_\_\_\_\_\_\_
→ Quel article du CPI s'applique ? \_\_\_\_\_\_\_\_

#line(length: 100%)

*Scénario B :*
Le week-end, Marie développe chez elle une application de gestion de photos personnelles, sans rapport avec son travail. Elle utilise son ordinateur personnel et ses propres outils.

→ Qui détient les droits ? \_\_\_\_\_\_\_\_
→ Pourquoi ? \_\_\_\_\_\_\_\_

#line(length: 100%)

*Scénario C :*
Marie a une idée d'outil open source pendant ses vacances. Elle le développe chez elle le soir, mais utilise parfois son ordinateur professionnel pour tester. L'outil n'a aucun rapport avec l'activité de TechCorp.

→ Qui détient les droits ? \_\_\_\_\_\_\_\_
→ Quels risques pour Marie ? \_\_\_\_\_\_\_\_

#line(length: 100%)

*Scénario D :*
Paul est étudiant et fait un stage rémunéré de 6 mois chez StartupXYZ. Pendant son stage, il développe un module important pour leur produit principal. La convention de stage ne mentionne pas la propriété intellectuelle.

→ Qui détient les droits selon la loi française ? \_\_\_\_\_\_\_\_
→ Pourquoi cette situation est-elle différente d'un salarié ? \_\_\_\_\_\_\_\_
→ Que devrait prévoir StartupXYZ pour sécuriser la situation ? \_\_\_\_\_\_\_\_

#line(length: 100%)

*Scénario E :*
Sophie est freelance. Elle développe un site web pour un client. Le contrat ne mentionne pas la propriété intellectuelle.

→ Qui détient les droits en France par défaut ? \_\_\_\_\_\_\_\_
→ Pourquoi est-ce un problème pour le client ? \_\_\_\_\_\_\_\_
→ Que devrait prévoir le contrat ? \_\_\_\_\_\_\_\_

#line(length: 100%)

*Scénario F :*
Lucas contribue bénévolement à un projet open source sous licence MIT pendant son temps libre. Il est salarié par ailleurs.

→ Qui détient les droits sur ses contributions ? \_\_\_\_\_\_\_\_
→ Ces contributions peuvent-elles poser problème avec son employeur ? \_\_\_\_\_\_\_\_

#line(length: 100%)

== Exercice 2 — Oracle vs Google : l'affaire des APIs Java \(20 min)

=== Contexte

En 2010, Oracle \(qui avait racheté Sun Microsystems et donc Java) a poursuivi Google pour avoir copié les APIs Java dans Android.

=== Les faits

- Google a réimplémenté environ 11 500 lignes de "déclarations" d'APIs Java
- Google n'a pas copié l'implémentation, seulement les signatures des méthodes
- Objectif : permettre aux développeurs Java d'écrire du code pour Android

=== Extrait d'une API

```java
// Déclaration (ce que Google a copié)
public static int max(int a, int b)

// Implémentation (ce que Google a réécrit)
public static int max(int a, int b) {
    return (a >= b) ? a : b;
}
```

=== Chronologie

#table(columns: 2, align: (auto, auto),
  table.header([Année], [Événement]),
  [2010], [Oracle poursuit Google],
  [2012], [Jury : APIs non protégeables par copyright],
  [2014], [Cour d'appel : APIs protégeables],
  [2016], [Jury : Google gagne sur le "fair use"],
  [2018], [Cour d'appel : Pas de fair use],
  [2021], [Cour Suprême : Google gagne \(fair use)],
)

=== Questions

+ Pourquoi Oracle considérait-il que les APIs Java devaient être protégées par le droit d'auteur ?
+ Quels arguments Google a-t-il avancés pour sa défense ?
+ Qu'est-ce que le "fair use" \(usage équitable) en droit américain ? Pourquoi la Cour Suprême l'a-t-elle appliqué ici ?
+ Si Oracle avait gagné, quelles auraient été les conséquences pour :
  - Les développeurs ?
  - L'interopérabilité des logiciels ?
  - Les langages de programmation ?
+ Cette affaire aurait-elle eu la même issue en Europe ? Pourquoi ? \(Pensez à la directive sur l'interopérabilité)

#line(length: 100%)

== Exercice 3 — Interopérabilité et reverse engineering \(15 min)

=== Cas Wine et Samba

*Wine* est une implémentation des APIs Windows permettant d'exécuter des applications Windows sur Linux. *Samba* est une implémentation du protocole SMB/CIFS de Microsoft pour le partage de fichiers.

=== Questions

+ Ces projets ont-ils eu besoin de "décompiler" du code Microsoft pour fonctionner ?
+ Comment la technique "clean room" a-t-elle été utilisée pour ces projets ?
+ En Europe, la décompilation pour interopérabilité est autorisée sous certaines conditions. Quelles sont ces conditions ? \(Directive 91/250/CE)
+ Pourquoi Microsoft ne peut-il pas empêcher juridiquement l'existence de Samba en Europe ?

#line(length: 100%)

== Exercice 4 — Débat : Pour ou contre les brevets logiciels ? \(15 min)

=== Arguments à examiner

*Arguments en faveur des brevets logiciels :*

A. "Les brevets protègent l'investissement en R&D des entreprises innovantes."

B. "Sans brevets, les grandes entreprises copieraient les innovations des startups."

C. "Les brevets encouragent la divulgation des innovations \(vs le secret)."

#line(length: 100%)

*Arguments contre les brevets logiciels :*

D. "L'industrie du logiciel a innové pendant 50 ans sans brevets."

E. "Les brevets logiciels sont souvent trop larges et vagues."

F. "Les 'patent trolls' utilisent les brevets pour extorquer de l'argent, pas pour innover."

G. "Les petites entreprises n'ont pas les moyens de se défendre contre les litiges."

#line(length: 100%)

=== Questions

+ Pour chaque argument \(A-G), donnez un exemple concret ou un contre-exemple.
+ Pourquoi les brevets logiciels sont-ils exclus "en tant que tels" en Europe mais acceptés aux États-Unis ?
+ Quelle position l'écosystème open source adopte-t-il généralement face aux brevets ?
+ Certaines entreprises \(ex: Tesla, IBM dans certains cas) ouvrent leurs brevets. Pourquoi feraient-elles cela ?

#line(length: 100%)

== Exercice 5 — Les marques dans l'open source \(si temps restant)

=== Cas Firefox / Iceweasel

Debian, distribution Linux connue pour son respect strict des principes du logiciel libre, a renommé Firefox en "Iceweasel" entre 2006 et 2016.

=== Questions

+ Pourquoi Debian a-t-il dû renommer Firefox ?
+ Le code de Firefox est-il libre ? Le nom et le logo sont-ils libres ?
+ Trouvez d'autres exemples de logiciels libres avec des marques protégées \(indice : Red Hat, Docker...).
+ Une marque protégée est-elle compatible avec les principes du logiciel libre ? Argumentez.

#line(length: 100%)

== Pour aller plus loin

=== Lectures

- *Directive européenne sur le droit d'auteur des logiciels* \(91/250/CEE, mise à jour 2009/24/CE)
- *Oracle v. Google* — Décision de la Cour Suprême \(2021)
- *Article 52 de la Convention de Munich* — Exclusion des logiciels du brevet

=== Ressources françaises

- *INPI* : https://www.inpi.fr — Institut National de la Propriété Industrielle
- *Legifrance* — Article L.113-9 CPI \(salariés) et textes sur le droit d'auteur des logiciels

=== Questions pour la séance 5

+ Qu'est-ce qui distingue une licence "copyleft" d'une licence "permissive" ?
+ Pouvez-vous citer 3 licences open source courantes ?
+ Lisez la licence MIT \(30 secondes de lecture). Que vous autorise-t-elle à faire ?