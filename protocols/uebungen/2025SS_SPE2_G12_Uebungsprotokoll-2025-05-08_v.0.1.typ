#import "../protocol.tpl.typ": protocol-template

#protocol-template(
  meeting_type: "Alphatesttag",
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
  version: "0.1",
  doc_date: "08. Mai 2025",
  meeting_date: "08. Mai 2025",
  time: ("16:20", "19:10"),
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
      present: false
    )
  ),
  goal: [
    #link("https://elearning.fh-ooe.at/pluginfile.php/1022561/mod_resource/content/6/2025ss%20U%20Alphatesttag%20-%20Planung%2BAufgaben%2BBericht.pdf")[#underline(text(blue, "PDF: Alphatesttag – Ablauf"))]

    ===  Alphatesttag – Ablauf
    - ✅ 2 × Anwesenheitskontrolle!

    - 🕓 16:15 – 16:30
      - Aufbau [T, HM]

    - 🕓 16:30 – 19:00
      - Testen (HW, SW) [S]
      - Erstellen Vorschläge für 4. Sitzung KG-Gruppe (→ Bericht) [S]

    - 🕓 17:00 – 19:00
      - Testen gemäß Vorgaben + frei testen; Tutor*innen zeigen (laut Angaben) [S, T]
        - dafür *bis zu 2 Punkte + 1 Punkt für Bericht*
      - Feedback zum Pflichtenheft [S, T]; PH überarbeiten (bis 16.5.) [S]
      - (evtl.) Codereview [S, T]

    - 🕖 19:00 – 19:10
      - Abbau [T, HM]

    - 🕖 19:10
      - Ende

    - 📅 Bis 9.5. 12:00
      - Erstellen Alphatest-Bericht [S]
    - 📅 Bis 16.5. 12:00
      - Finales Pflichtenheft abgeben [S]


    T ... Tutor\
    S ... Student\
    HM ... Herwig Mayr, Kursleiter

    === Aufgaben
    - Farbkalibrierung testen
    - Tutor*innen erklären/zeigen (in der Arena am konkreten Fahrzeug), 
      + wie Steine gefunden und erkannt werden;
      + warum welcher Sensor für Erkennung der Steinfarbe verwendet wird;
      + wie erkannt wird, dass ein Stein erfolgreich gehoben wurden;
      + wo und wie ein Stein abgelegt (optional gestapelt) wird;
      + (optional) Inbetriebnahmeanleitung\ (Betatest findet durch Tutor*in statt)
  ],
  topics: (
    (
      title: "Farberkennung",
      description: [
        Welcher Sensor kann wie gut mit einer Farbe umgehen?
      ],
      notes: [
        === Sensor NXT RGB

        _Erfüllt die Anforderungen nicht_\
        _Stellt nicht alle benötigten Funktionen bereit_\

        === Sensor Neue 1-Diode

        - #highlight(fill: yellow)[*Gelb*]: ok
          - erkennt oft als Braun, bei zu nahe/zu weit weg als Schwarz
          - optimal bei ~2cm Abstand
          - ab ~2,5cm als Braun
          - ab ~6cm als Schwarz
          - ab ~8cm nicht mehr erkennbar `None`
        
        - #highlight(fill: green)[*Grün*]: ok
          - bis ~2cm zuverlässig
          - ab ~2cm Schwarz
          - ab 4-5cm nicht mehr erkennbar `None`
        
        - #highlight(fill: red)[*Rot*]: gut
          - bis ~3cm zuverlässig
          - ab ~3cm Schwarz
          - ab 4-5cm nicht mehr erkennbar `None`
        
        - #highlight(fill: blue)[*Blau*]: ok
          - bis ~2,5cm zuverlässig
          - ab ~2,5cm Schwarz
          - ab ~5cm nicht mehr erkennbar `None`
        
        - #highlight(fill: silver)[*Weiß*]: nicht gut
          - bis ~2,5cm zuverlässig
          - ab ~2,5cm nicht mehr erkennbar `None`
          - ab ~3,5cm als Schwarz

        === Zusammenfassung

        #table(
          columns: 3,
          [*Farbe*], [*NXT RGB*], [*Neue 1-Diode*],
          highlight(fill: yellow)[Gelb], [-], [ok],
          highlight(fill: green)[Grün], [-], [ok],
          highlight(fill: red)[Rot], [-], [gut],
          highlight(fill: blue)[Blau], [-], [ok],
          highlight(fill: silver)[Weiß], [-], [nicht gewünscht],
        )

        ==== Benutzter Testcode
        #box(stroke: 1pt, inset: 1em, radius: 0.5em,
        ```py
        #!/usr/bin/env pybricks-micropython

        from pybricks.hubs import EV3Brick
        from pybricks.ev3devices import ColorSensor
        from pybricks.parameters import Port
        from time import sleep

        # === Init devices ===
        ev3 = EV3Brick()
        color_sensor = ColorSensor(Port.S2)

        # === Main Loop ===
        while True:
            current_color = color_sensor.color()
            print("Detected color:", current_color)
            sleep(0.1)
        ```)
      ]
    ),
    (
      title: "Freihe Tests",
      description: [
        Welche Tests wurden innerhalb der Gruppe durchgeführt zur internen Entwicklung?
      ],
      notes: [
        === Greifarm Tests
        
        *Erkenntnisse*
        - Port _D_ funktioniert nicht
          - Zwei damit verbundene Sensoren funktionieren nicht
          - Auf anderen Ports funktionieren die beiden Sensoren
      ]
    ),
    (
      title: "Tests mit Tutorin",
      description: [
        jk
      ],
      notes: [
        ====
        
      ]
    ),
    (
      title: "Arena Startpunkt",
      description: [
        Wo in der Arena gestartet werden soll? Wo nicht?
        #sym.arrow *Skizze*
      ],
      notes: [
        ==== kk
        jj
      ]
    )
  ),
  future: [
    TBD
  ],
)