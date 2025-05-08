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
  doc_date: "31. März 2025",
  meeting_date: "31. März 2025",
  time: ("21:00", "23:00"),
  participants: (
    (
      name: "Tim Peko",
      present: true
    ),
    (
      name: "Moritz Kieselbach",
      present: true
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
    - Risiko-Identifikation
    - Risiko-Analyse
    - Risiko-Top-N-Liste
  ],
  topics: (
    (
      title: "Dokumentumfang",
      description: [
        Wie groß muss die Risiko-Top-N-Liste sein?
      ],
      notes: [
        Etwa 2 Seiten lang (recht kompakt)

        Deckblatt relevant? #math.arrow Moritz noch in Abklärung

        Wie allgemein/spezifisch soll die Liste sein? Breite vs. Tiefe #math.arrow Moritz noch in Abklärung mit Roxane Kaspa
      ]
    ),
    (
      title: "Umgang mit Projekt",
      notes: [
        Projekt wie ein simuliertes Projekt oder wie das Projekt faktisch ist (FH Scope)? #math.arrow Muss Projektgruppenintern abgestimmt werden
      ]
    ),
    (
      title: "Risiko-Top-N-Liste",
      notes: [
        Abwiegung zwischen
        - Konkretere Risiken
        - Allgemein Formuliert, Worst-Case Schadensannahme
        - #text(green)[*Allgemein Formuliert, Average-Case Schadensannahme*] #sym.arrow.l

        Ermittlung der Risiken vorab und gemeinsame Abstimmung

        Bestimmung des Erwartungswerts und des Schadenspotenzials mittels Planning Poker
      ]
    ),
  ),
  future: [
    + Tim Peko wird die Risiko-Top-N-Liste erstellen auf Basis der Ergebnisse dieser Besprechung. Er ergänzt die Risiken um mögliche Behandlungsmaßnahmen. Diese und die gesamte Liste werden asynchron in der Projektgruppe abgestimmt.

    + Dafür stellt er Zwischenversionen der Dokumente im OneDrive der Projektgruppe bereit.

    === Offene Fragen
    #sym.arrow Moritz Kieselbach noch in Abklärung
    - Dürfen wir Blöcke vom Tisch aufheben?
    - Ist ein Deckblatt optional erlaubt?
    - Breite vs. Tiefe der Risiken in der Liste?
  ],
)
