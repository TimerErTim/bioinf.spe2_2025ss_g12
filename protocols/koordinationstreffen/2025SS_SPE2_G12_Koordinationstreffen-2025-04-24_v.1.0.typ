#import "../protocol.tpl.typ": protocol-template

#protocol-template(
  meeting_type: "Koordinationsgruppentreffen",
  semester: "SS 2025",
  group: "12",
  author: "Moritz Kieselbach",
  corrector: "Tim Peko",
  team: (
    "Moritz Kieselbach",
    "Tim Wahlmüller",
    "Tim Peko",
    "Alexander Kranl",
    "Alexandra Usuanlele"
  ),
  version: "1.0",
  doc_date: "24. April 2025",
  meeting_date: "24. April 2025",
  time: ("8:00", "9:50"),
  participants: (
    (
      name: "Moritz Kieselbach",
      present: true
    ),
    (
      name: "Restliche Koordinationsgruppenmitglieder",
      present: true
    )
  ),
  goal: [
    - Klärung offener Fragen
    - Bekanntgabe wichtiger Hinweise
    - Regeln für die Testtage
  ],
  topics: (
    (
      title: "Aufgabenumsetzung",
      description: "Wichtige Hinweise & Regeln",
      notes: [
        === Zielbereich & Punktevergabe
          
        Ziel: Steine im Zielbereich platzieren (Ort und Platzierung egal).
        
        Gültige Wertung:
        - Wenn der Stein von oben gesehen vom Roboter berührt wird → zählt als im Zielbereich.
        - 1 Stein = 1 Punkt
        - 2 gleichfarbige Steine übereinander = 5 Punkte
        - Jeder zusätzliche gleichfarbige Stein oben drauf: +3 Punkte
        
        Strafe:
        - Wenn gleichfarbige Steine nicht korrekt gestapelt sind → Minuspunkte
        - Höchster gültiger Stapel zählt.
        - Sonderfälle (z. B. verschiedene Farben) werden noch definiert.
        
        Abzug bei Fehlern:
        - Stein fällt vom Tisch oder auf die andere Seite des Holzbalkens → –2 Punkte
        
        === Ablauf des Durchgangs
        
        Ende:
        - Wenn Zeit abgelaufen oder alle Steine aus dem Ursprung genommen sind.
        
        Dauer:
        - ca. 3 Minuten
        
        Anzahl:
        - max. ca. 10 Steine
        
        Stapeln verschiedener Farben:
        - Noch unklar, ob erlaubt oder Minuspunkte bringt.
        - Währenddessen gelten Steine im Ursprung als neutral.
        
        Zielbereich:
        - Breiter als das Fahrzeug.
        - Verteilung der Steine ist gleich für alle Gruppen, evtl. zufallsbasiert.
        - Genaue Infos zum Zielbereich kommen am Tag vor dem Betatest.
      ]
    ),
    (
      title: "Alpha-Testtag (geplant)",
      notes: [
        === Ziele & Rahmenbedingungen
        
        - Es werden verschiedene Farben getestet, um zu prüfen, welche zuverlässig erkannt werden.
        - Ziel: mind. 3 Farben sollen zuverlässig erkannt werden.
        - Einflussfaktoren wie Lichtverhältnisse werden dabei getestet.
        - Startbereich des Roboters wird noch festgelegt (Wünsche möglich).
        - Alle Ergebnisse werden dokumentiert und gesammelt.
        - Das Fahrzeug muss nicht zwingend Kurven fahren, nur vorwärts/rückwärts.
        - Startposition des Roboters: noch offen (random, von anderer Gruppe gewählt oder selbst bestimmt). Wird noch festgelegt.
        - Testen ist essenziell – je mehr, desto besser.
      ]
    ),
    (
      title: "Getroffene Entscheidungen",
      notes: [
        === Entnahmebereich:
        
        - Dicker Holzbalken mit breitem Balken am Boden wurden gewählt.
        - Vorteile: stabiler, weniger Risiko zu fallen.
        - Abstimmung:
          - Dick: 10 Stimmen
          - Dünn: 1 Stimme
          - Eine Gruppe war nicht anwesend und eine hat nicht abgestimmt
        
        === Fahrzeuggröße:
        
        Maximale Maße:
        - Länge: 60 cm
        - Breite: 30 cm
        - Höhe: 60 cm
        - Minimale Maße (werden im nächsten Treffen festgelegt).
        - Messpunkte am Fahrzeug müssen klar markiert sein/ In der Doku.
        
        === Steinanordnung im Entnahmebereich:
        
        - Steine liegen in einer Reihe.
        - Abstand zum Rand und zwischen den Steinen: 20 cm
      ]
    ),
    (
      title: "Weitere Hinweise",
      notes: [
        === Pflichtenheft & Umgebung:
        
        - Änderungen an der Umgebung nur noch bis nächste Woche möglich, 
          danach fix bis Semesterende.
        
        === Tipps:
        
        - Code-Review kann auch am Alpha-Testtag durchgeführt werden.
        - Im E-Learning stehen zusätzliche Hinweise.
        - Alle sollen anwesend sein (die erfahrenen sind ausgenommen von der Anwesenheitspflicht).
      ]
    ),
  ),
  future: [
    + Wir werden unsere offenen Fragen für das nächste Koordinationstreffen vorbereiten und dokumentieren.
    
    + Die Projektgruppe wird die festgelegten Entscheidungen in unsere Planungen/Pflichtenheft einarbeiten:
      - Anpassung an die definierten maximalen Fahrzeugmaße
      - Berücksichtigung der Steinanordnung im Entnahmebereich
      - Vorbereitung auf den gewählten Entnahmebereich
    
    === Aktueller Stand (bis Alpha-Testtag)
    Offene Fragen von unserer Seite:\
    (werden im nächsten Treffen besprochen)
    
    === Nächstes Treffen
    In zwei Wochen
  ],
)
