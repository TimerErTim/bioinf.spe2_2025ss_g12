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
  version: "0.2",
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
        _Nicht mit PyBricks kompatibel_

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
        Die folgende Dokumentation erfolgte chronologisch:

        === Greifarm Tests

        _Erkenntnisse_
        - Port _D_ funktioniert nicht
          - Zwei damit verbundene Sensoren funktionieren nicht
          - Auf anderen Ports funktionieren die beiden Sensoren

        === Heben & Niederlassen von Arm
        Anheben hat funktioniert, danach nichts mehr. Auch keine Konsolenausgaben. 
        
        *Wechseln des EV3-Bricks* aufgrund von oben genannten Problemen.

        === Farbsensor zur Überprüfung der Steinaufnahme

        Prototypisierung, ob sich der Farbsensor auch dazu verwenden lässt, um zu erkennen, ob Steine erfolgreich aufgehoben wurden und noch immer im Greifarm sind:

        *Ergebnis*: vielversprechend, erste Tests erfolgreich
      ]
    ),
    (
      title: "Tests mit Tutorin",
      description: [
        Welche Tests wurden mit der Tutorin durchgeführt? Was sind die Ergebnisse?
      ],
      notes: [
        === Wie Steine gefunden und erkannt werden

        Die Steine werden mit dem *Farbsensor Neue 1-Diode* erkannt. Dieser misst periodisch die Farbe in kurzem Abstand vorher. Bei Erkennung einer Farbe, die einem potentiellen Stein entspricht, gilt ein Stein als gefunden. Es wurde ebenso die Farberkennung wie aus Kapitel _Farberkennung_ demonstriert.

        === Warum welcher Sensor für Erkennung der Steinfarbe verwendet wird

        Der Farbsensor *Neue 1-Diode* wurde verwendet, da dieser gute Erkennungswerte hat. Außerdem ist die einzige Alternative, die zur Verfügung steht (NXT RGB), für das Projekt nicht geeignet.

        === Wie erkannt wird, dass ein Stein erfolgreich gehoben wurden

        Der Farbsensor wird verwendet, um die Farbe des Steins im Greifarm zu messen. Divergiert diese vom Sollwert (nach Aufheben die Farbe des aktuell transportierten Steins), wissen wir, dass der Stein nicht erfolgreich gehoben wurde. 

        Dies wurde erfolgreich anhand vom grünen Stein und rünterkippen per Finger demonstriert. Das Programm gab die erwartete Ausgabe zurück.

        === Wo und wie ein Stein abgelegt/gestapelt wird

        _Die Implementierung ist noch nicht in einem testbaren Zustand._
      ]
    ),
    (
      title: "Arena Startpunkt",
      description: [
        Wo in der Arena gestartet werden soll? Wo nicht?
        #sym.arrow *Skizze*
      ],
      notes: [
        === Skizze

        #box(clip: true, height: 20em,
          image(
            "assets/2025-05-08_arena_aufstellung_skizze.svg", height: 40em
        ))

        === Legende
        #text(blue)[#sym.fence ... Steinebereich]\
        #text(black)[#sym.fence ... Arbeitsfläche]\
        #text(green)[#sym.fence ... Mögliche Startpunkte]
      ]
    )
  ),
  future: [
    - Pflichtenheft verbessern
      - Tim
  ],
)