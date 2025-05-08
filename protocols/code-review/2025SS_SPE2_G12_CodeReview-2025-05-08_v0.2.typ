#import "../protocol.tpl.typ": protocol-template

#protocol-template(
  meeting_type: "Code Review",
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
  version: "0.2",
  doc_date: "08. Mai 2025",
  meeting_date: "08. Mai 2025",
  time: ("18:20", "18:42"),
  participants: (
    (
      name: "Roxane Kaspar",
      present: true
    ),
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
  ),
  goal: [
    Feedback zum Code erhalten
  ],
  topics: (
    (
      title: "Stapelposition",
      notes: [
        *Anmerkung*: Bestimmung zur Stapelposition fehlend (nicht auffindbar im Code)

        *Erklärung*: Es wird gespeichert, wo der Stapel zu einer gewissen Farbe liegt. Dieser wird initial bei neuer Anlage eines Stapels bestimmt.
      ]
    ),
    (
      title: "Sicherheitsstop",
      notes: [
        *Anmerkung*: Nicht vom Tisch zu fallen scheint recht simpel, aber kein schlechter Ansatz.
      ]
    ),
    (
      title: "Sensoren",
      notes: [
        *Anmerkung*:\
        Zwar eher HW-Punkt: Kein IR-Sensor, sondern Touch und Ultraschallsensor, um am Tisch zu bleiben.
        Wieso? Entscheidung unklar, aber nicht falsch.
      ]
    ),
    (
      title: "Überprüfung der Steinaufnahme",
      notes: [
        *Anmerkung*: Nach Steinaufnahme gibt es keine Überprüfung ob der Stein aufgehoben wurde. Kein Problem sofern Aufheben zuverlässig funktioniert, aber andere Gruppe haben auch Software-Lösungen dafür.

        *Idee der Gruppe*: Farbe des Farbsensors darf sich nicht ändern. Falls doch, bedeutet Stein ist nicht mehr im Greifarm.
      ]
    ),
    (
      title: "Testen",
      notes: [
        *Intern*: Code ist noch nicht durchgetestet.
      ]
    ),
    (
      title: "Weiteres",
      notes: [
        Speichern der Ablageposition und Bestimmungslogik im gleichen Zuge wurde positiv angemerkt.
      ]
    ),
  )
)
