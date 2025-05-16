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
  version: "0.3",
  doc_date: "30. April 2025",
  meeting_date: "30. April 2025",
  time: ("14:30", "14:55"),
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
    (
      name: "Alexandra Usuanlele",
      present: true
    )
  ),
  goal: [
    #strike[+ Korrektur des Lastenhefts gemeinsam durchgehen]
    + Überzeugung des Arbeitgebers, vertreten durch Roxane, dass unsere Lösung funktioniert
    + Sanity-Check zur Machbarkeit unserer Lösung mit Roxane
    + Einholung von Feedback zu unserem Design durch Roxane
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
        Der Roboter besteht aus einer festen Plattform, einem parallel betriebenen Kettenantrieb und einem Greifarm.

        === Mechanik und Aufbau
        + Basisplattform
          - Feststehende Plattform
          - Kettenantrieb zur Bewegung in einer translativen Achse
          - Ermöglicht es, den gesamten Steinebereich abzuarbeiten

        + Drehgelenk des Greifarms
          - Zentral montiereter Motor ermöglicht Bewegung um rotatorische Achse
          - Erlaubt das Schwenken des Arms über den Roboter selbst (>180° Stellungsbereich)
          - Ermöglicht das Absetzen des Greifers

        + Armmechanik
          - Greifer: Wird mechanisch durch dritten Motor betrieben
          - Farbsensor: Direkt am Arm über/unter dem Greifer montiert; erkennt die Farbe des Steins vor dem Ablegen

        === Skizze
        #box(figure(
          box(stroke: 1pt, inset: 0em, 
            image(
              "assets/2025-04-30_robot_skizze.png",
              width: 34%
            )
          ),
          caption: "Roboter-Skizze",
        ))

        === Verwendete Peripheriegeräte
        - Farbsensor
        - 3x Motoren
          + Vor-/Zurückfahren des gesamten Roboters
          + Auf- und Abbewegung des Arms\ Über Kopf schwenken möglich
          + Offnen und Schließen des Greifers
      ]
    ),
    (
      title: "Programmierung",
      description: [
        Wie wird der Roboter programmiert? Welche Programmiersprache wird verwendet? Welche Design-Prinzipien werden angewendet?
      ],
      notes: [
        _MicroPython_ auf _PyBricks_

        Die Programmierung orientiert sich an modularen Prinzipien und ereignisgesteuerten Abläufen. 
        Die Steuerlogik ist in mehrere Module wie 
        - Farberkennung
        - Bewegungssteuerung 
        - Positionsverwaltung 
        unterteilt.
      ]
    ),
    (
      title: "Ablaufplan",
      description: [
        Wie wird der Roboter gesteuert? Welche Befehle werden verwendet? Wo befindet sich sein Startpunkt? Wie erreicht er sein Ziel?
      ],
      notes: [
        === Idee
        *Startpunkt*: der Roboter startet im idealen Abstand zum Steinebereich und wird so positioniert, dass er durch bloßes Vor- und Zurückfahren alle Steine abarbeiten kann. #sym.arrow Parallel zur gebildeten Steinereihe auf dem Steinebereich.

        + *Ermittlung eines validen Steins aus dem Steinebereich*: der Roboter scannt den Steinebereich sequentiell bis er einen Stein erkennt. Dieser wird dann aufgehoben.
        + *Ermittlung der Farbe des Steins*: der Roboter scannt die Oberfläche des Steins mit dem Farbsensor, der ebenfalls am Greifarm montiert ist.
        + *Ermittlung der Zielposition*: Wenn der Roboter diese Farbe bereits einmal abgearbeitet hat, wird die dazu abgespeicherte Position verwendet. Andernfalls wird eine neue Zielposition ermittelt und zur jeweiligen Farbe abgespeichert.
        + *Ablage im Zielbereich*: Der Roboter schwenkt den Arm über Kopf und positioniert sich durch Vor-/Zurückfahren an die Zielposition im Zielbereich. Zum Schluss wird der Stein abgelegt.
        + *Wiederholung*: Der Roboter schwenkt den Arm zurück und wiederholt den gesamten Vorgang bis keine Steine mehr im Steinebereich erkannt werden.

        === Flowchart
        Dieses Flowchart zeigt den logischen Ablauf eines Durchlaufs:
        
        #figure(
          box(stroke: 1pt, inset: 1em, 
            image(
              "assets/2025-04-30_flowchart_skizze.svg",
            )
          ),
          caption: "Programmfluss eines Durchlaufs",
        )
      ]
    ),
  ),
  future: [
    *Code Review*: wann?

    *Tim Peko*:
    + Korrektur vom Lastenheft einarbeiten
    + Überarbeitung des Protokolls
      - Nach Abschluss in Projektgruppe schicken für Feedback
      - Protokoll auf Moodle hochladen
    + Pflichtenheft fertigstellen
  ],
  definitions: (
    (
      word: "Steinebereich",
      definition: "Fläche, auf der die Steine initial liegen; Fläche, von der die Steine entnommen werden",
    ),
    (
      word: "Zielbereich",
      definition: "Fläche, auf der die Steine nach Farben sortiert gestapelt werden",
    ),
    (
      word: "Arbeitsfläche",
      definition: "Fläche, auf der sich der Roboter befindet und er seine Aufgabe erfüllen muss; Gleiche Fläche wie der Zielbereich",
    ),
  ),
)
