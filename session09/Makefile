# Makefile for session03

PREZO = ~/projects/prezo/.venv/bin/prezo

.PHONY: all clean slides td

all: td slides

# Slides: markdown -> PDF via prezo
slides: slides.pdf

slides.pdf: slides.md
	$(PREZO) --export pdf --no-chrome --size 90x30 slides.md

# TD: markdown -> typst -> PDF
td: td.pdf td-corrige.pdf

td.pdf: td.md
	md2typst td.md -o td.typ
	typst compile td.typ

td-corrige.pdf: td-corrige.md
	md2typst td-corrige.md -o td-corrige.typ
	typst compile td-corrige.typ

clean:
	rm -f slides.pdf td.pdf td.typ
