#import "../doc.tpl.typ": spe-template
#import "../documents/structure.tpl.typ": base-structure

#let protocol-template(
  meeting_type: "Besprechung",
  semester: none,
  group: "12",
  author: "Tim Peko",
  corrector: none,
  team: none,
  version: none,
  doc_date: none,
  meeting_date: none,
  time: [],
  participants: [],
  goal: [],
  future: none,
  topics: (),
  definitions: none,

) = {
  show: spe-template.with(
    title: "Protokoll",
    subtitle: [#meeting_type vom #meeting_date],
    date: doc_date,
    semester: semester,
    group: group,
    author: author,
    corrector: corrector,
    version: version,
    team: team,
  )

  let doc = [
    #set text(size: 12pt)
    #set par(justify: true)
    = Allgemeine Daten

    == Zeitpunkt
    #meeting_date, #time.at(0) - #time.at(1)
    
    == Teilnehmerliste
    #for (participant) in participants [
      - #if participant.present [
        #participant.name
      ] else [
        #strike[#participant.name] (Abwesend)
      ]
    ]
    
    == Ziel
    #goal

    #if future != none [
      == Nächste Schritte
      #future
    ]

    #if topics.len() > 0 [
      #pagebreak()

      = Inhalt
      #for topic in topics [
        #block(above: 1.5em)[
          == #topic.title
          #if "description" in topic.keys() [
            #text(size: 10pt)[
              #topic.description
            ]
          ]

          #block( 
            text(size: 12pt)[
              #topic.notes
            ]
          )
        ]
      ]
    ]
  ]

  if definitions != none {
    show: base-structure.with(definitions: definitions)
    doc
  } else {
    doc
  }
}

// Example usage
#protocol-template(
  meeting_type: "Besprechung",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "Moritz Kieselbach",
  team: (
    "Moritz Kieselbach",
    "Tim Wahlmüller",
    "Tim Peko", 
    "Alexander Kranl",
    "Alexandra Usuanlele"
  ),
  version: "1.0",
  doc_date: "14. März 2025",
  meeting_date: "14. März 2025",
  time: ("10:00", "12:00"),
  participants: (
    (
      name: "Tim Peko",
      present: true
    ),
    (
      name: "Moritz Kieselbach",
      present: false
    ),
    (
      name: "Tim Wahlmüller",
      present: true
    ),
    (
      name: "Alexander Kranl",
      present: true
    ),
    (
      name: "Alexandra Usuanlele",
      present: true
    )
  ),
  goal: [
    Ziel dieser Besprechung ist es, Tim Peko über den aktuellen Projektstand zu informieren, und finale Feinschliffe am Organigramm, der Stellenbeschreibung und dem EV3 Produktvergleich zu besprechen.
  ],
  topics: (
    (
      title: "Projektentscheidungen und Abgaben",
      description: [
        Überblick über die getroffenen technischen Entscheidungen und den Status der Dokumentenabgaben.
      ],
      notes: [
        Entscheidung für MicroPython PyBricks als Entwicklungsplattform 

        Organigramm und Stellenbeschreibung wurden als separate Dokumente erstellt und in gezippter Form über Moodle abgegeben 

        Produktvergleich (Bonusdokument) wurde vom Team abgesegnet und eingereicht
      ]
    ),
    (
      title: "Zusammenarbeit mit Partnergruppe",
      description: [
        Einführung in die gruppenübergreifende Zusammenarbeit und wichtige Richtlinien.
      ],
      notes: [
        Tim wurde in die WhatsApp-Gruppe der Partnergruppe aufgenommen
        
        Wichtige Richtlinien für die Zusammenarbeit:
          - Namenskonventionen für Dokumente
          - Rechtzeitige Abgabe von Dokumenten
          - Einheitliche Formatierung der Dokumente
      ]
    ),
    (
      title: "Organisatorische Änderungen",
      description: [
        Aktualisierung der Rollenverteilung und Definition der Koordinationsgruppenposition.
      ],
      notes: [
        Definition und Aufgaben des Koordinationsgruppenmitglieds wurden in die Stellenbeschreibung aufgenommen

        Positionstausch zwischen Koordinationsgruppenmitglied und Stellvertreter (auf Anweisung von Hr. Mayr)
        
        Rolle des Koordinationsgruppenmitglieds:
          - Regelmäßige Treffen mit Koordinationsgruppenmitgliedern anderer Gruppen und Hr. Mayr
          - Demokratische Entscheidungsfindung bei projektrelevanten Themen
          - Sicherstellung von Fairness im Projektablauf
      ]
    ),
    (
      title: "Zugang zum Lego Mindstorms EV3 Roboter",
      description: [
        Wie bzw. wer organisiert die Koordination mit der Partnergruppe?
      ],
      notes: [
        Moritz Kieselbach is abwesend #math.arrow Tim Peko als Stellvertreter beginnt mit Kontaktaufnahme zur Partnergruppe
      ]
    )
  ),
  future: [
    Tim Peko ist im Austausch mit der Partnergruppe und wird eine Koordination für die Verwendung des Lego Mindstorms EV3 Roboters übernehmen (In Vertretung von Moritz Kieselbach).
  ],
)
