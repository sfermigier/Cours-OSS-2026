// Feuille de style du livret — Introduction aux logiciels libres
//
// Importée par livret.typ. Modifier ici les réglages globaux (page,
// polices, couleurs, titres, tableaux, liens…).

#let accent = rgb("#1d4e89")
#let muted  = rgb("#6b6b6b")

// ---------------------------------------------------------------------------
// Fonction principale : à appliquer en tête du document cible.
// ---------------------------------------------------------------------------
#let livret(
  title: "Introduction aux logiciels libres",
  subtitle: "Notes de cours",
  author: "Stéphane Fermigier",
  affiliation: "Université Paris-Cité / EPITA — M1",
  edition: "Édition 2025-2026",
  body,
) = {
  // Métadonnées PDF
  set document(title: title, author: author)

  // Mise en page
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
    numbering: "1",
    number-align: center,
  )

  // Typographie
  set text(lang: "fr", size: 11pt)
  set par(justify: true, leading: 0.65em, spacing: 0.8em, first-line-indent: 0pt)

  // Liens
  show link: it => text(fill: accent, it)

  // Code inline et blocs
  show raw.where(block: false): it => box(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 2pt),
    radius: 2pt,
    text(font: "DejaVu Sans Mono", size: 0.9em, it),
  )
  show raw.where(block: true): it => block(
    fill: luma(245),
    inset: 10pt,
    radius: 3pt,
    width: 100%,
    text(font: "DejaVu Sans Mono", size: 0.88em, it),
  )

  // Citations (blockquotes en markdown)
  show quote: it => block(
    stroke: (left: 3pt + accent),
    inset: (left: 12pt, y: 4pt),
    text(style: "italic", fill: muted, it.body),
  )

  // Titres
  show heading: set block(above: 1.4em, below: 0.8em)

  // Niveau 1 = chapitre / session : saut de page + grand titre coloré
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(1em)
    set text(size: 22pt, weight: "bold", fill: accent)
    it
    v(0.5em)
    line(length: 100%, stroke: 0.6pt + accent)
    v(0.8em)
  }

  // Niveau 2 = partie / section
  show heading.where(level: 2): it => {
    v(0.4em)
    set text(size: 14pt, weight: "bold", fill: accent.darken(10%))
    it
  }

  // Niveau 3 = sous-section
  show heading.where(level: 3): it => {
    v(0.2em)
    set text(size: 12pt, weight: "bold")
    it
  }

  // Tableaux
  set table(
    stroke: 0.4pt + luma(180),
    inset: (x: 8pt, y: 6pt),
  )
  show table.cell.where(y: 0): set text(weight: "bold")
  show table: set block(breakable: true)

  // Listes
  set list(indent: 1em, body-indent: 0.4em, marker: ([•], [–], [·]))
  set enum(indent: 1em, body-indent: 0.4em)

  // -------------------------------------------------------------------------
  // Couverture
  // -------------------------------------------------------------------------
  page(numbering: none)[
    #v(1fr)
    #align(center)[
      #text(size: 30pt, weight: "bold", fill: accent)[#title]
      #v(0.8em)
      #text(size: 18pt)[#subtitle]
      #v(4em)
      #text(size: 14pt, weight: "semibold")[#author]
      #v(0.5em)
      #text(size: 12pt, fill: muted)[#affiliation]
    ]
    #v(1fr)
    #align(center)[
      #text(size: 10pt, fill: muted)[#edition]
    ]
  ]

  // -------------------------------------------------------------------------
  // Table des matières
  // -------------------------------------------------------------------------
  page(numbering: none)[
    #show outline.entry.where(level: 1): it => {
      v(0.8em, weak: true)
      strong(it)
    }
    #outline(title: [Table des matières], depth: 2, indent: auto)
  ]

  // -------------------------------------------------------------------------
  // Corps
  // -------------------------------------------------------------------------
  counter(page).update(1)
  body
}
