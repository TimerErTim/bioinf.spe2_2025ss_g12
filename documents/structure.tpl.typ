#let base-structure(
  bold_words: (),
  definitions: (),
  appendix: none,
  doc
) = {
  outline(title: "Inhaltsverzeichnis", indent: false, depth: 2)
  pagebreak()

  show: body => bold_words.fold(body, (body, word) => {
    show word: strong
    body
  })
  show: body => definitions.fold(body, (body, definition) => {
    show definition.word: emph
    body
  })

  doc

  if appendix != none or definitions.len() > 0 [
    #pagebreak()
    = Anhang

    #if appendix != none [
      #appendix
    ]

    #if definitions.len() > 0 [
      == Begriffe

      #table(
        columns: 2,
        ..for definition in definitions {
          (
            strong(emph(definition.word)), definition.definition
          )
        }
      )
    ]
  ]
}