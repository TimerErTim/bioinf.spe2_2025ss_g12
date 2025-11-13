#let spe-template(
  title: none,
  subtitle: "",
  semester: none,
  group: "12",
  author: "Tim Peko",
  corrector: none,
  team: (
    "Moritz Kieselbach",
    "Tim Wahlmüller",
    "Tim Peko", 
    "Alexander Kranl",
    "Alexandra Usuanlele"
  ),
  version: none,
  date: none,
  show-cover-page: none,
  doc
) = {
  // Set document-wide styles
  set text(font: "Calibri", lang: "de")
  set table(
    fill: (_, row) => if calc.even(row) { rgb(230,   230, 230) } else { white },
    align: (col, row) => if col == 0 { right } else { left },
    stroke: 1pt
  )
  show outline.entry: it => {
    text(size: 12pt - 6pt * calc.log(it.element.level), it)
  }
  set heading(numbering: none)
  show heading: it => {
    set block(above: 1.5em, below: 0.8em)
    it
  }
  set page(
    footer: grid(
      columns: (1fr, auto, 1fr),
      [#date], context[
        Seite *#counter(page).display("1")* von *#counter(page).final().at(0)*
      ], []
    )
  )

  // Cover page
  let cover-page = {
    align(center)[
      #text(16pt)[
        *Fachhochschule Hagenberg*
      ]
      #image("assets/fh-hagenberg-logo.png", height: 8em)
      #v(10%)
      #text(16pt)[
        Softwareprojekt-Engineering#if semester != none [, #semester]
      ]
      #v(1em)
      #text(24pt, weight: "bold")[
        #title
      ]

      #text(18pt)[
        #subtitle
      ]
      
      #v(3em)

      #text(14pt)[
        #if group != none [
          Gruppe #group
        ]
      ]
      
      
      #v(2em)

      #align(center)[
        *Autor* \
        #author
        
        #v(1em)
        *Korrekturleser* \
        #corrector
        
        #v(1em)
        *Teammitglieder*
        #v(-0.5em)
        #stack(dir: ttb, spacing: 0.5em, ..team)
      ]

      
      #v(1fr)
      #align(left)[
        #text(12pt)[
          #if version != none [
            Version #version
          ]
        ]
      ]
      #v(1em)
    ]

    pagebreak()
  }

  // By default, show the cover page if the document has at least 3 pages
  context[
    #let cover-page-visible = if show-cover-page == none { 
      counter(page).final().first() >= 3
    } else {
      show-cover-page 
    }
    #if cover-page-visible {
      cover-page
    }
  ]

  // Set up the header and footer
  set page(
    header: [
      #set text(size: 9pt)
      Gruppe #group \
      Version #version \
      Author: #author \
      Korrekturleser: #corrector \
      #line(length: 100%)
    ],
    header-ascent: 6pt,
  )

  doc
}

#show: spe-template.with(
  title: "Programmiersprachen für LEGO Mindstorms EV3",
  subtitle: "Vergleich & Entscheidung",
  date: "14. März 2025",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "Moritz Kieselbach",
  version: "1.0"
)
This is a test
