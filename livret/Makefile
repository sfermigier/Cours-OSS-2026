# Makefile du livret — Introduction aux logiciels libres
#
# Cibles :
#   make            # build complet (body + PDF)
#   make body       # régénère seulement livret-body.typ
#   make watch      # recompile en continu (typst watch)
#   make open       # ouvre le PDF (macOS)
#   make clean      # supprime les fichiers générés
#
# Le script scripts/build-livret.sh fait le travail réel ; ce Makefile
# ajoute simplement des raccourcis, les dépendances make-idiomatiques,
# et quelques cibles utilitaires (watch, open, clean).

ROOT      := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/..)
SCRIPT    := $(ROOT)/scripts/build-livret.sh
NOTES     := $(wildcard $(ROOT)/session??/notes.md)
BODY      := livret-body.typ
MAIN      := livret.typ
STYLE     := style.typ
PDF       := livret.pdf

.PHONY: all body watch open clean help

all: $(PDF)

# Recompile le PDF si le corps, le template ou la feuille de style changent.
$(PDF): $(BODY) $(MAIN) $(STYLE)
	typst compile $(MAIN) $(PDF)

# Régénère le corps dès qu'une note change (ou si le script change).
$(BODY): $(NOTES) $(SCRIPT)
	$(SCRIPT) --body

body: $(BODY)

watch: $(BODY)
	typst watch $(MAIN) $(PDF)

open: $(PDF)
	open $(PDF)

clean:
	rm -f $(BODY) $(PDF)

help:
	@echo "Cibles disponibles :"
	@echo "  make         Build complet (body + PDF)"
	@echo "  make body    Régénère $(BODY) seulement"
	@echo "  make watch   Recompilation live avec 'typst watch'"
	@echo "  make open    Ouvre $(PDF) (macOS)"
	@echo "  make clean   Supprime les fichiers générés"
