#import "../../doc.tpl.typ": spe-template
#import "../structure.tpl.typ": base-structure

#show: spe-template.with(
  title: "Risiko-Top-N-Liste",
  subtitle: "Liste der wichtigsten Risiken und deren Behandlungsplan",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "Alexander Kranl",
  team: (
    "Moritz Kieselbach",
    "Tim Wahlmüller",
    "Tim Peko", 
    "Alexander Kranl",
    "Alexandra Usuanlele"
  ),
  version: "1.0",
  date: "03. April 2025",
)

= Einleitung

Diese Liste wurde durch folgende Schritte erstellt:
+ Die Risiken des Projekts wurden individuell identifiziert.
+ Die Risiken wurden bei Absprache des Projektteams in eine gemeinsame Liste zusammengefasst.
+ Die Risiken wurden mittels Planning Poker bezüglich der Wahrscheinlichkeit/des Erwartungswerts und des Schadenspotenzials bewertet.
  - #link("https://www.pointingpoker.com") 
+ Die Risiken wurden nach der Wichtigkeit sortiert.
+ Es wurden die Top 5 Risiken ausgewählt.
+ Es wurden mögliche Behandlungsmöglichkeiten für die Risiken erarbeitet.

= Risiko-Top-N-Liste
#let risk-entry(
  current-rank,
  title,
  description,
  probability,
  impact,
  recording-date,
  potential-treatment,
  state-of-treatment,
  previous-rank: none,
) = {
  let factor = probability * impact

  [== #current-rank. #title]
  box(
    inset: 1em,
    radius: 0.5em,
    fill: rgb(250,250,250),
    //stroke: rgb(240,240,240)
  )[
    #description

    #show math.equation: set text(font: "Cambria Math")
    #math.equation[$
      #text(color.maroon, size: 1.25em)[
        $limits(#$factor$)^
        #box(inset: 0.5em)[#underline[Risikofaktor]]$
      ]
      #h(1em)
      #sym.arrow.l
      #text(color.eastern)[
        $limits(#$probability$)^
        #box(inset: 0.5em)[Erwartungswert]$
      ]
      times  
      #text(color.fuchsia)[
        $limits(#$impact$)^
        #box(inset: 0.5em)[Schadenspotential]$
      ]
    $]

    #text(size: 0.9em, color.darken(gray, 50%))[
      Mögliche Maßnahmen
    ]\
    #potential-treatment
    
    #text(size: 0.9em, color.darken(gray, 50%))[
      Behandlungsfortschritt
    ]\
    #state-of-treatment

    #recording-date.display("[day].[month].[year]")
    #text(size: 0.9em, color.darken(gray, 50%))[
      in der Liste aufgenommen
    ]
    #h(1fr)
    #if previous-rank != none {
      text(size: 0.9em, color.darken(gray, 50%))[
        Rang in der vorherigen Version: 
      ]
      [#previous-rank]
      if current-rank > previous-rank {
        text(size: 0.9em, color.green)[
          #sym.arrow.b
          +#(current-rank - previous-rank)
        ]
      } else if current-rank < previous-rank {
        text(size: 0.9em, color.red)[
          #sym.arrow.t -#(previous-rank - current-rank)
        ]
      } else {
        text(size: 0.9em, color.gray.darken(25%))[
          #math.stretch(sym.tilde.basic)
        ]
      }
    } else {
      text(size: 0.9em)[
        Neu in die Liste aufgenommen
      ]
    }
  ]
}

#let risk-entries(
  show-top-n: none,
  ..entries,
) = {
  let sorted-entries = entries.pos().sorted(key: it => it.impact * it.probability).rev()
  let top-n = if show-top-n == none { sorted-entries.len() } else { calc.min(show-top-n, sorted-entries.len()) }

  let top-n-entries = sorted-entries.slice(0, top-n)
  for (index, entry) in top-n-entries.enumerate() {
    risk-entry(
      index + 1,
      entry.title,
      entry.description,
      entry.probability,
      entry.impact,
      entry.recording-date,
      entry.potential-treatment,
      entry.at("state-of-treatment", default: [#text(gray)[Kein Fortschritt in der Behandlung]]),
      previous-rank: entry.at("previous-rank", default: none),
    )
  }
}

#risk-entries(
  show-top-n: 5,
  // Mechanische Risiken
  (
    title: "Fehlkonstruktion des Greifarms",
    description: "Instabile Konstruktion des Greifarms beeinträchtigt die Fähigkeit, Steine sicher und zuverlässig aufzuheben, erheblich",
    probability: 5,
    impact: 8,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Regelmäßige Überprüfung und Wartung der mechanischen Teile
      - Verstärkung der Struktur durch zusätzliche Stützelemente
    ],
  ),
  (
    title: "Instabilität des Roboters",
    description: "Instabilität während des Betriebes führt zur Beeinträchtigung der richtigen Steinablage oder -entnahme",
    probability: 5,
    impact: 5,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Optimierung der Software zur Stabilisierung der Bewegungsabläufe
      - Einsatz von hochwertigeren und präziseren Sensoren zur Lageerkennung
    ],
  ),
  (
    title: "Verschleiß der Bauteile",
    description: "Verschleiß der Bauteile behindert den Roboter merklich in der Fähigkeit, die Aufgabe auszuführen, in Relation zum neugebauten Zustand",
    probability: 2,
    impact: 7,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Schnellen Austausch von Bauteilen unterstützen
      - Plan für Ersatzteile erstellen und diese im Lager halten
      - Regelmäßige Inspektionen und vorbeugende Wartung
    ],
  ),
  
  // Sensor- und Erkennungsprobleme
  (
    title: "Fehlerhafter Farbsensor",
    description: "Farbsensor kann aufgrund interner (z.B. Kalibrierungs-) Fehler Farben nicht eindeutig zuordnen",
    probability: 5,
    impact: 6,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Regelmäßige Kalibrierung der Sensoren
      - Einsatz redundanter Sensortechnologie zur Fehlerminimierung
    ],
  ),
  (
    title: "Fehlinterpretation",
    description: "Der Roboter kann Blöcke nicht korrekt erkennen",
    probability: 6,
    impact: 4,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Verbesserung der Algorithmen zur Mustererkennung
      - Training der Erkennungssoftware mit diverseren Datensätzen
    ],
  ),
  (
    title: "Störungen durch Blockposition",
    description: "Gewisse Orientierungen des Blocks könnten die Farberkennung stören",
    probability: 3,
    impact: 5,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Entwicklung eines adaptiven Beleuchtungssystems, das auf Veränderungen in der Umgebungsbeleuchtung reagiert
      - Implementierung eines Feedback-Systems zur sofortigen Korrektur der Erkennungsfehler
    ],
  ),
  
  // Software- und Programmierfehler
  (
    title: "Mangelnde Ausnahmebehandlung",
    description: [
      Es tritt ein Ereignis auf, für das keine Fehlerbehandlung möglich ist:
      - Block fällt vom Tisch
      - Stapel fällt um
      - Motor fällt aus
      #v(-0.75em)
      ...
    ],
    probability: 5,
    impact: 6,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Entwicklung eines umfassenden Fehlerbehandlungsprotokolls
      - Regelmäßige Überprüfung und Aktualisierung der Software zur Erkennung neuer Fehlerquellen
    ],
  ),
  
  // Timing-Probleme
  (
    title: "Timing-Probleme",
    description: "Falls die Bewegungsabläufe nicht gut synchronisiert sind, könnte der Roboter Blöcke umstoßen",
    probability: 2,
    impact: 7,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Optimierung der Steuerungssoftware zur Verbesserung der Synchronisation
      - Einführung strengerer Testszenarien zur frühzeitigen Erkennung von Timing-Problemen
    ],
  ),
  (
    title: "Endlosschleifen oder Abstürze",
    description: "Fehler im Code könnten dazu führen, dass der Roboter stehen bleibt oder nicht richtig funktioniert",
    probability: 3,
    impact: 7,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Implementierung von Watchdog-Timern zur Überwachung und Neustart bei Software-Hängen
      - Regelmäßige Code-Reviews und Stresstests zur Identifikation potenzieller Schwachstellen
    ],
  ),
  
  // Umweltfaktoren
  (
    title: "Ungleicher Untergrund",
    description: "Unebene Flächen können die Fahrbewegungen des Roboters stören (z.B. zusammengeschobene Tische)",
    probability: 3,
    impact: 5,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Entwicklung eines adaptiven Fahrwerks, das auf Bodenunebenheiten reagieren kann
      - Einsatz von Umgebungsscannern zur frühzeitigen Erkennung und Anpassung an Bodenverhältnisse
    ],
  ),
  (
    title: "Hindernisse",
    description: "Falls sich andere Objekte im Bewegungspfad befinden, könnte der Roboter bei falscher Reaktion Schaden verursachen",
    probability: 3,
    impact: 5,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Integration eines fortschrittlichen Kollisionserkennungs- und -vermeidungssystems
      - Regelmäßige Schulungen des Bedienpersonals zur Vermeidung von Hindernissen
    ],
  ),
  (
    title: "Lichtverhältnisse",
    description: "Starke Schatten oder wechselndes Licht könnten die Farberkennung erschweren",
    probability: 6,
    impact: 6,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Installation von konsistenten und kontrollierbaren Lichtquellen im Arbeitsbereich
      - Anpassung der Sensorparameter an unterschiedliche Lichtbedingungen
    ],
  ),
  
  // Zeitmanagement und Teamarbeit
  (
    title: "Unklare Aufgabenverteilung",
    description: "Falls nicht klar ist, wer für welche Aufgaben zuständig ist, kann es zu Verzögerungen kommen",
    probability: 2,
    impact: 5,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Einführung eines klaren und transparenten Aufgabenverteilungssystems
      - Regelmäßige Besprechungen zur Überprüfung und Anpassung der Aufgabenverteilung
    ],
  ),
  (
    title: "Zeitdruck",
    description: "Zu wenig Zeit, um die geltenden Anforderungen bis zum Meilensteintag mit momentanen Personalressourcen umzusetzen, könnte die Qualität und auch den Erfolg des Projekts gefährden",
    probability: 7,
    impact: 5,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Priorisierung von Aufgaben nach Dringlichkeit und Wichtigkeit
      - Einsatz zusätzlicher Ressourcen und Personal bei Bedarf
    ],
  ),
  (
    title: "Kommunikationsprobleme",
    description: "Missverständnisse jeglicher Art im Team könnten zu Konflikten und Verzögerungen führen",
    probability: 4,
    impact: 5,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Implementierung effektiver Kommunikationstools und -protokolle
      - Regelmäßige Workshops zur Verbesserung der Teamkommunikation
    ],
  ),
  (
    title: "Ausfall eines Teammitglieds",
    description: "Der langfristige Ausfall eines Teammitglieds könnte die restlichen Teammitglieder stark behindern",
    probability: 2,
    impact: 7,
    recording-date: datetime(year: 2025, month: 03, day: 31),
    potential-treatment: [
      - Entwicklung eines Notfallplans für den Ausfall von Schlüsselpersonal
      - Kreuzschulung der Teammitglieder zur Erhöhung des Bus-Faktors
    ],
  ),
)
