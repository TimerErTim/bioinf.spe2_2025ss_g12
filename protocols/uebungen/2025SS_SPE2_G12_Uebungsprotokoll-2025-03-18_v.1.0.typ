#import "../protocol.tpl.typ": protocol-template

#protocol-template(
  meeting_type: "Übung",
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
  doc_date: "18. März 2025",
  meeting_date: "18. März 2025",
  time: ("16:25", "16:30"),
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
    === Ablauf
    - 16:20 - 16:30
      - Aufbau der Testumgebungen
    - 16:30 - 17:30
      - Erstellen HW
      - Testprogramme (gewählter Umgebung)
    - 17:30 - 17:45
      - Feedback zu Organigramm & Produktvergleich
    - 16:30 - 19:15
      - Arbeiten an Dokumenten, insb. Lastenheft bzw. Risikoliste
    - 17:30 - 18:00
      - 1. Sitzung der Koordinationsgruppe
    - 17:30 - 19:15
      - freies Testen
    - 18:00 - 19:15
      - Erstellen Testprogramme + Testen
    - 19:15 - 19:35
      - Abbau der Testumgebungen

    === Vorgenommene Ergebnisse
    - Erster Prototyp vom Roboter
    - Entwicklungsumgebung aufsetzen
    - Erster Prototyp des Lastenhefts
  ],
  topics: (
    (
      title: "Aufgabe",
      description: [
        Nähere Erläuterungen zur Aufgabe
      ],
      notes: [
        Steine nach Farbe sortiert übereinander stapeln.

        Aufnahmebereich der Steine ist eben aber erhöht. Ablagebereich der Steine ist eben.

        Im Wettbewerb gibt es mehrere Farben, welche genau erfahren wir kurz vorher. Erhöhung kann sich verändern.
      ]
    ),
    (
      title: "Aufgabenverteilung",
      notes: [
        *Legomeister (Roboter Bauer)*\
        Versuchen, einen Roboterarm zusammen zu bauen.
        - Moritz Kieselbach
        - Alexandra Usuanlele

        *Programmierer*\
        Sind mit Aufsetzen der Programmierumgebung beschäftigt.
        - Alexander Kranl
        - Tim Wahlmüller

        *Dokumentation*
        Lastenheft erstellen.
        - Tim Peko
      ]
    ),
    (
      title: "Testumgebungen",
      description: [
        Aufbau der Testumgebungen
      ],
      notes: [
        - Rote und Grüne Steine
          - Legosteine 3.3cmx3.3cm
          - Erhöhung #math.tilde\3.3cm
        - Blau und Gelbe Steine
          - Legosteine 3.3cmx3.3cm
          - Erhöhung #math.tilde\3.3cm
      ]
    ),
    (
      title: "Bewertung der Übung",
      description: [
        Gibt es Punkte für bestimmte Leistungen?  
      ],
      notes: [
        In dieser Übung gibt es keine Punkte für bestimmte Leistungen.

        Bei späteren Übungen wird es aber sicherlich Punkte für bestimmte Leistungen geben.
      ]
    ),
    (
      title: "Dokumente Feedback",
      description: [
        Feedback zu Dokumente bis jetzt aus diesem Semester: Stellenbeschreibung, Produktvergleich, Organigramm
      ],
      notes: [
        - Stellenbeschreibung
          - Qualifikationen fehlt
          - Direkte Vorgesetzten fehlt
          - Mehr Stichwortmäßig, sehr condensed
            
        - Produktvergleich
          - #text(green)[In Ordnung]
        - Organigramm
          - Gendern inkonsistent
          - Ausdrucksfehler aus dem Vorsemester
      ]
    ),
    (
      title: "Koordinationsgruppe",
      notes: [
        - Alexandra geht alleine zur Koordinationsgruppe
        - viele neue Informationen
        - Mitschrift wichtig
      ]
    ),
    (
      title: "Rahmenbedingungen",
      description: [Wie werden Rahmenbedingungen festgelegt?],
      notes: [
        Wird prinzipiell von der Projektgruppe festgelegt, muss aber abgestimmt und explizit erwähnt werden.

        Ansonsten werden Rahmenbedingungen von Kursleiter festgelegt zum Wettbewerbszeitpunkt.
      ]
    )
  ),
  future: [
    - Lastenheft fertigstellen
    - Testumgebungen privat prüfen?
    - Aufgrund von grober mündlicher Beschreibung von Robotermotoren beim Programm weiter arbeiten
    - Alexander behält die SD-Karte von Tim Peko in seinem Computer bis auf weiteres
  ],
)