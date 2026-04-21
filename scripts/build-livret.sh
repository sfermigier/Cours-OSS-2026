#!/usr/bin/env bash
#
# Génère le livret du cours en agrégeant les notes des 10 sessions.
#
# Étapes :
#   1. Pour chaque session01..session10, convertit notes.md en Typst via md2typst.
#   2. Concatène les fragments dans livret/livret-body.typ.
#   3. Compile livret/livret.typ en livret/livret.pdf avec Typst.
#
# Usage :
#   scripts/build-livret.sh          # build complet
#   scripts/build-livret.sh --body   # régénère seulement le corps (pas de PDF)
#
# Dépendances : md2typst, typst.

set -euo pipefail

# Racine du projet (le script peut être lancé de n'importe où)
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

BODY="livret/livret-body.typ"
MAIN="livret/livret.typ"
PDF="livret/livret.pdf"

# Vérifie les dépendances
for cmd in md2typst typst; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    echo "Erreur : '$cmd' introuvable." >&2
    exit 1
  fi
done

mkdir -p livret

echo "→ Génération du corps du livret dans $BODY"
: > "$BODY"

SESSIONS=(01 02 03 04 05 06 07 08 09 10)
for i in "${SESSIONS[@]}"; do
  src="session$i/notes.md"
  if [[ ! -f "$src" ]]; then
    echo "  ⚠️  $src absent, ignoré."
    continue
  fi
  echo "  • session$i"
  # Conversion Markdown → Typst avec md2typst (sortie sur stdout via -o -).
  md2typst "$src" -o - >> "$BODY"
  printf '\n\n' >> "$BODY"
done

if [[ "${1:-}" == "--body" ]]; then
  echo "✓ Corps généré ($BODY). Arrêt avant compilation."
  exit 0
fi

echo "→ Compilation Typst : $MAIN → $PDF"
typst compile "$MAIN" "$PDF"

echo "✓ Livret généré : $PDF"
