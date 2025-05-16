#import "../protocol.tpl.typ": protocol-template

#protocol-template(
  meeting_type: "Design Review",
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
  doc_date: "30. April 2025",
  meeting_date: "30. April 2025",
  time: ("14:30", "14:55"),
  participants: (
    (
      name: "Roxane Kaspa",
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
    (
      name: "Alexandra Usuanlele",
      present: true
    )
  ),
  goal: [
    + Korrektur des Lastenhefts gemeinsam durchgehen
    + Überzeugung des Arbeitgebers, vertreten durch Roxane Kaspa, dass unsere Lösung funktioniert
    + Sanity-Check zur Machbarkeit unserer Lösung mit Roxane Kaspa
    + Einholung von Feedback zu unserem Design durch Roxane Kaspa
  ],
  topics: (
    (
      title: "Meetingablauf",
      description: [
        Wie läuft das Design Review ab?
      ],
      notes: [
        + Feedback zu diesem Protokoll
        + Überarbeitung dieses Protokolls
        + Abgabe des Protokolls auf Moodle

        === Feedback
        - Inhalt ist gut
        - Detaillierterer Ablaufplan
        - Skizzen zur Veranschaulichung
      ]
    ),
    (
      title: "Roboter-Design",
      description: [
        Wie wird der Roboter physisch aufgebaut und zusammengesetzt sein? Welche Mechanik wird verwendet?
      ],
      notes: [
        === Idee
        - Roboter mit vertikalem Arm zum Aufheben der Steine
        - Er kann sich um die vertikale Achse Drehen
        - Er hat einen eingebauten Farbscanner am Arm (über/unter dem Greifer)
      ]
    ),
    (
      title: "Programmierung",
      description: [
        Wie wird der Roboter programmiert? Welche Programmiersprache wird verwendet? Welche Design-Prinzipien werden angewendet?
      ],
      notes: [
        === Idee
        - MicroPython auf PyBricks
      ]
    ),
    (
      title: "Ablaufplan",
      description: [
        Wie wird der Roboter gesteuert? Welche Befehle werden verwendet? Wo befindet sich sein Startpunkt? Wie erreicht er sein Ziel?
      ],
      notes: [
        === Idee
        + Scannt Fläche bis neuer Stein erkannt wird
        + Roboter hebt den Stein mit seinem Arm auf
        + Roboter dreht sich um die vertikale Achse, um den Stein über den Zielbereich zu transportieren
        + Wenn Farbe bereits berarbeitet, positioniert er den Stein bei bereits bekannter Farbposition
        + Wenn Farbe noch nicht berarbeitet, legt Stein bei neuer Position ab und merkt sich diese
        + Fährt zurück zum Steinebereich
      ]
    ),
  ),
  future: [
    *Code Review*: wann?
  ],
)
