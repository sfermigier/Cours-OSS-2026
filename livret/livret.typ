// Document principal du livret.
// Le corps est généré par scripts/build-livret.sh à partir des
// session*/notes.md, puis inclus ici.

#import "style.typ": livret

#show: livret.with(
  title: "Introduction aux logiciels libres",
  subtitle: "Notes de cours — 10 sessions",
  author: "Stefane Fermigier",
  affiliation: "Université Paris-Cité — M1",
  edition: "Année 2026",
)

#include "livret-body.typ"
