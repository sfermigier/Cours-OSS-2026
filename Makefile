# Makefile global — Cours « Introduction aux logiciels libres » (OSS 2026)
#
# Construit tous les PDF du cours en découvrant automatiquement chaque session :
#   sessionXX/slides.md        → sessionXX/slides.pdf       (via prezo)
#   sessionXX/td.md            → sessionXX/td.pdf           (via md2typst + typst)
#   sessionXX/td-corrige.md    → sessionXX/td-corrige.pdf   (idem)
#   sessionXX/notes.md         → sessionXX/notes.pdf        (idem)
#   sessionXX/notes-prof.md    → sessionXX/notes-prof.pdf   (idem)
#
# Plus le livret consolidé : livret/livret.pdf (via livret/Makefile).
#
# Prérequis : prezo, md2typst, typst (dans le PATH, ou PREZO défini).
#
# Cibles :
#   make / make all    Tout construire
#   make slides        Seulement les slides
#   make td            Seulement les TD (énoncés + corrigés)
#   make notes         Seulement les notes de cours + notes-prof
#   make livret        Seulement le livret
#   make <sessionXX>   Tout pour une session donnée (ex : make session03)
#   make clean         Supprimer tous les PDF générés + fichiers intermédiaires
#   make help          Afficher cette aide
#
# Astuce : `make -j` pour paralléliser.

PREZO ?= prezo

# ---------------------------------------------------------------------------
# Découverte des sessions et des sources
# ---------------------------------------------------------------------------
SESSIONS := $(sort $(wildcard session??))

SLIDES_MD     := $(wildcard $(addsuffix /slides.md,$(SESSIONS)))
TD_MD         := $(wildcard $(addsuffix /td.md,$(SESSIONS)))
TD_COR_MD     := $(wildcard $(addsuffix /td-corrige.md,$(SESSIONS)))
NOTES_MD      := $(wildcard $(addsuffix /notes.md,$(SESSIONS)))
NOTES_PROF_MD := $(wildcard $(addsuffix /notes-prof.md,$(SESSIONS)))

SLIDES_PDF    := $(SLIDES_MD:.md=.pdf)
TD_PDF        := $(TD_MD:.md=.pdf) $(TD_COR_MD:.md=.pdf)
NOTES_PDF     := $(NOTES_MD:.md=.pdf) $(NOTES_PROF_MD:.md=.pdf)
TYPST_PDF     := $(TD_PDF) $(NOTES_PDF)

# Fichiers .typ intermédiaires (générés par md2typst, à nettoyer)
TYPST_INTER   := $(TD_MD:.md=.typ) $(TD_COR_MD:.md=.typ) \
                 $(NOTES_MD:.md=.typ) $(NOTES_PROF_MD:.md=.typ)

# ---------------------------------------------------------------------------
# Cibles publiques
# ---------------------------------------------------------------------------
.PHONY: all slides td notes livret clean help $(SESSIONS)
.DEFAULT_GOAL := all

all: slides td notes livret

slides: $(SLIDES_PDF)
td:     $(TD_PDF)
notes:  $(NOTES_PDF)

livret:
	$(MAKE) -C livret

# Raccourci : `make session03` construit tout le contenu de session03.
$(SESSIONS):
	@target=$@; \
	files="$(filter $@/%,$(SLIDES_PDF) $(TYPST_PDF))"; \
	$(MAKE) $$files

help:
	@echo "Cibles disponibles :"
	@echo "  make            Tout construire (slides + TD + notes + livret)"
	@echo "  make slides     Slides PDF de toutes les sessions"
	@echo "  make td         TD (énoncés + corrigés) PDF"
	@echo "  make notes      Notes de cours + notes-prof PDF"
	@echo "  make livret     Livret consolidé (livret/livret.pdf)"
	@echo "  make sessionXX  Tout le contenu d'une session donnée"
	@echo "  make clean      Nettoyer tous les PDF et fichiers intermédiaires"
	@echo ""
	@echo "Sessions détectées : $(SESSIONS)"
	@echo "Astuce : 'make -j' pour compiler en parallèle."

# ---------------------------------------------------------------------------
# Règles de construction
# ---------------------------------------------------------------------------

# Slides (Markdown → PDF via prezo)
$(SLIDES_PDF): %.pdf: %.md
	$(PREZO) --export pdf --no-chrome --size 90x30 $<

# TD, notes, notes-prof (Markdown → Typst → PDF)
$(TYPST_PDF): %.pdf: %.md
	md2typst $< -o $*.typ
	typst compile $*.typ $@

# ---------------------------------------------------------------------------
# Nettoyage
# ---------------------------------------------------------------------------
clean:
	rm -f $(SLIDES_PDF) $(TYPST_PDF) $(TYPST_INTER)
	$(MAKE) -C livret clean
