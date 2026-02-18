# TD 4 — Comprendre le droit du logiciel libre

## Objectifs

- Comprendre les implications pratiques du droit d'auteur pour un développeur
- Identifier qui détient les droits selon le statut (salarié, stagiaire, freelance)
- Analyser un cas juridique emblématique
- Réfléchir aux enjeux des brevets logiciels et de l'interopérabilité

---

## Exercice 1 — Qui détient les droits sur votre code ? (25 min)

### Scénarios

Pour chaque scénario, déterminez qui détient les droits d'auteur sur le code produit.

**Scénario A :**
Marie est développeuse salariée chez TechCorp. Dans le cadre de son travail, elle développe une application de gestion de stock pendant ses heures de bureau, sur son ordinateur professionnel.

→ Qui détient les droits patrimoniaux ? ________
→ Quel article du CPI s'applique ? ________

---

**Scénario B :**
Le week-end, Marie développe chez elle une application de gestion de photos personnelles, sans rapport avec son travail. Elle utilise son ordinateur personnel et ses propres outils.

→ Qui détient les droits ? ________
→ Pourquoi ? ________

---

**Scénario C :**
Marie a une idée d'outil open source pendant ses vacances. Elle le développe chez elle le soir, mais utilise parfois son ordinateur professionnel pour tester. L'outil n'a aucun rapport avec l'activité de TechCorp.

→ Qui détient les droits ? ________
→ Quels risques pour Marie ? ________

---

**Scénario D :**
Paul est étudiant et fait un stage rémunéré de 6 mois chez StartupXYZ. Pendant son stage, il développe un module important pour leur produit principal. La convention de stage ne mentionne pas la propriété intellectuelle.

→ Qui détient les droits selon la loi française ? ________
→ Pourquoi cette situation est-elle différente d'un salarié ? ________
→ Que devrait prévoir StartupXYZ pour sécuriser la situation ? ________

---

**Scénario E :**
Sophie est freelance. Elle développe un site web pour un client. Le contrat ne mentionne pas la propriété intellectuelle.

→ Qui détient les droits en France par défaut ? ________
→ Pourquoi est-ce un problème pour le client ? ________
→ Que devrait prévoir le contrat ? ________

---

**Scénario F :**
Lucas contribue bénévolement à un projet open source sous licence MIT pendant son temps libre. Il est salarié par ailleurs.

→ Qui détient les droits sur ses contributions ? ________
→ Ces contributions peuvent-elles poser problème avec son employeur ? ________

---

## Exercice 2 — Oracle vs Google : l'affaire des APIs Java (20 min)

### Contexte

En 2010, Oracle (qui avait racheté Sun Microsystems et donc Java) a poursuivi Google pour avoir copié les APIs Java dans Android.

### Les faits

- Google a réimplémenté environ 11 500 lignes de "déclarations" d'APIs Java
- Google n'a pas copié l'implémentation, seulement les signatures des méthodes
- Objectif : permettre aux développeurs Java d'écrire du code pour Android

### Extrait d'une API

```java
// Déclaration (ce que Google a copié)
public static int max(int a, int b)

// Implémentation (ce que Google a réécrit)
public static int max(int a, int b) {
    return (a >= b) ? a : b;
}
```

### Chronologie

| Année | Événement |
|-------|-----------|
| 2010 | Oracle poursuit Google |
| 2012 | Jury : APIs non protégeables par copyright |
| 2014 | Cour d'appel : APIs protégeables |
| 2016 | Jury : Google gagne sur le "fair use" |
| 2018 | Cour d'appel : Pas de fair use |
| 2021 | Cour Suprême : Google gagne (fair use) |

### Questions

1. Pourquoi Oracle considérait-il que les APIs Java devaient être protégées par le droit d'auteur ?

2. Quels arguments Google a-t-il avancés pour sa défense ?

3. Qu'est-ce que le "fair use" (usage équitable) en droit américain ? Pourquoi la Cour Suprême l'a-t-elle appliqué ici ?

4. Si Oracle avait gagné, quelles auraient été les conséquences pour :
   - Les développeurs ?
   - L'interopérabilité des logiciels ?
   - Les langages de programmation ?

5. Cette affaire aurait-elle eu la même issue en Europe ? Pourquoi ? (Pensez à la directive sur l'interopérabilité)

---

## Exercice 3 — Interopérabilité et reverse engineering (15 min)

### Cas Wine et Samba

**Wine** est une implémentation des APIs Windows permettant d'exécuter des applications Windows sur Linux. **Samba** est une implémentation du protocole SMB/CIFS de Microsoft pour le partage de fichiers.

### Questions

1. Ces projets ont-ils eu besoin de "décompiler" du code Microsoft pour fonctionner ?

2. Comment la technique "clean room" a-t-elle été utilisée pour ces projets ?

3. En Europe, la décompilation pour interopérabilité est autorisée sous certaines conditions. Quelles sont ces conditions ? (Directive 91/250/CE)

4. Pourquoi Microsoft ne peut-il pas empêcher juridiquement l'existence de Samba en Europe ?

---

## Exercice 4 — Débat : Pour ou contre les brevets logiciels ? (15 min)

### Arguments à examiner

**Arguments en faveur des brevets logiciels :**

A. "Les brevets protègent l'investissement en R&D des entreprises innovantes."

B. "Sans brevets, les grandes entreprises copieraient les innovations des startups."

C. "Les brevets encouragent la divulgation des innovations (vs le secret)."

---

**Arguments contre les brevets logiciels :**

D. "L'industrie du logiciel a innové pendant 50 ans sans brevets."

E. "Les brevets logiciels sont souvent trop larges et vagues."

F. "Les 'patent trolls' utilisent les brevets pour extorquer de l'argent, pas pour innover."

G. "Les petites entreprises n'ont pas les moyens de se défendre contre les litiges."

---

### Questions

1. Pour chaque argument (A-G), donnez un exemple concret ou un contre-exemple.

2. Pourquoi les brevets logiciels sont-ils exclus "en tant que tels" en Europe mais acceptés aux États-Unis ?

3. Quelle position l'écosystème open source adopte-t-il généralement face aux brevets ?

4. Certaines entreprises (ex: Tesla, IBM dans certains cas) ouvrent leurs brevets. Pourquoi feraient-elles cela ?

---

## Exercice 5 — Les marques dans l'open source (si temps restant)

### Cas Firefox / Iceweasel

Debian, distribution Linux connue pour son respect strict des principes du logiciel libre, a renommé Firefox en "Iceweasel" entre 2006 et 2016.

### Questions

1. Pourquoi Debian a-t-il dû renommer Firefox ?

2. Le code de Firefox est-il libre ? Le nom et le logo sont-ils libres ?

3. Trouvez d'autres exemples de logiciels libres avec des marques protégées (indice : Red Hat, Docker...).

4. Une marque protégée est-elle compatible avec les principes du logiciel libre ? Argumentez.

---

## Pour aller plus loin

### Lectures
- **Directive européenne sur le droit d'auteur des logiciels** (91/250/CEE, mise à jour 2009/24/CE)
- **Oracle v. Google** — Décision de la Cour Suprême (2021)
- **Article 52 de la Convention de Munich** — Exclusion des logiciels du brevet

### Ressources françaises
- **INPI** : https://www.inpi.fr — Institut National de la Propriété Industrielle
- **Legifrance** — Article L.113-9 CPI (salariés) et textes sur le droit d'auteur des logiciels

### Questions pour la séance 5
1. Qu'est-ce qui distingue une licence "copyleft" d'une licence "permissive" ?
2. Pouvez-vous citer 3 licences open source courantes ?
3. Lisez la licence MIT (30 secondes de lecture). Que vous autorise-t-elle à faire ?
