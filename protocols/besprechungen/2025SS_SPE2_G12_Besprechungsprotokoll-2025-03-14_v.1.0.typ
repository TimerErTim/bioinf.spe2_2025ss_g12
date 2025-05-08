#import "../protocol.tpl.typ": protocol-template

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
  time: ("7:00", "7:40"),
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