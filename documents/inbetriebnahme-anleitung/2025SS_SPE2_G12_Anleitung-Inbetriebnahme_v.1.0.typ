#import "../../doc.tpl.typ": spe-template

#show: spe-template.with(
  title: "Inbetriebnahme-Anleitung",
  subtitle: "Anleitung für die Inbetriebnahme des LEGO-Roboters",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "Alexander Kranl",
  team: ("Moritz Kieselbach", "Tim Wahlmüller", "Tim Peko", "Alexander Kranl", "Alexandra Usuanlele"),
  version: "1.0",
  date: "15. Juni 2025",
  show-cover-page: false,
)
#show link: it => {
  underline(text(blue.lighten(25%), it))
}

= Inbetriebnahme

== Platzierung des Roboters

#block(
  width: 100%,
)[
  #box(
    width: 50%,
  )[
    Der Roboter muss so nahe wie möglich am Steinebereich platziert werden, sodass der Arm des Roboters beim parallelen
    Entlangfahren am Balken keine Steine berührt. Dabei muss beachtet werden, dass der Roboter beim Schwenken genügend
    Platz hat, um sich zu drehen. Es sollte dafür im Radius von einer Armlänge plus 5 cm Puffer Platz sein.
  ]

  #place(right + top)[
    #figure(caption: "Platzierung des Roboters", box()[
      #box(clip: true, height: 10em, image("assets/2025-05-08_arena_aufstellung_skizze.svg", height: 21em))

      #align(left)[
        #text(blue)[#sym.fence ... Steinebereich]\
        #text(black)[#sym.fence ... Arbeitsfläche]\
        #text(green)[#sym.fence ... Mögliche Startpunkte]
      ]
      #v(0.5em)
    ])
  ]
  #v(7em)
]

== Start des Durchlaufs

#box(width: 1fr, inset: (right: 1em), baseline: -2em)[
Der Roboter wird über den Startknopf am Roboter gestartet. Folgen Sie dazu diesem Ablauf:

+ Einschalten durch Drücken des mittleren dunkelgrauen Knopfes für 3 Sekunden
  - Tastenbeleuchtung: Status-LED leuchtet kurz rot
  - Während des Bootvorgangs blinkt die LED orange
  - Betriebsbereit: LED leuchtet grün
+ File Browser mit Druck auf den mittleren Knopf öffnen
+ Zum Eintrag "Tournament_Win/" scrollen und mit dem mittleren Knopf auswählen
+ Zu "main.py" scrollen und mit dem mittleren Knopf auswählen

Der Durchlauf startet automatisch.
]
#box(width: 30%)[
  #figure(caption: "Pybricks Programmauswahl", image("assets/ev3-start.png", width: 100%))
]

= Wartung

Um den zuverlässigen Betrieb des Roboters zu gewährleisten, muss dieser regelmäßig gewartet werden. Der Roboter
muss für jede Wartung ausgeschaltet sein.

== Überprüfung von Verschleißteilen

Die Verschleißteile des Roboters sollten regelmäßig überprüft werden. Bei visuellen oder funktionellen Anzeichen von
Abnutzung muss das entsprechende Teil mit einem identischen, neuen Teil ausgetauscht werden.

== Wechseln der Batterien

Die Batterien müssen bei Bedarf, insbesondere bei niedriger Ladung, ausgetauscht werden. Folgen Sie dazu diesem Ablauf:

+ Batterieabdeckung auf der Rückseite des EV3-Bricks entfernen
+ Alte Batterien entfernen und fachgerecht entsorgen
+ Neue, vollgeladene Batterien in die Batteriehalterung einstecken
+ Batterieabdeckung wieder aufsetzen, sodass die Batterien sicher fixiert sind

= Installation der Software

Die Software für den Roboter wird über die EV3 Pybricks installiert. Die offizielle Dokumentation finden Sie unter folgendem
Link:

#link("https://docs.pybricks.com/en/v2.0/start_ev3.html")

== Benötigte Materialien

Folgende Materialien werden benötigt:

- Windows 10 oder MacOS Rechner
- Internet- sowie Administratorzugriff
- microSDHC-Karte (4GB - 32GB)
- microSD-Slot oder -Reader
- mini-USB-Kabel

#figure(caption: "EV3-Brick Installation Übersicht", image("assets/ev3-setup-cables.png", width: 75%))

== PC vorbereiten

+ Visual Studio Code herunterladen
+ Den Anweisungen auf dem Bildschirm folgen, um die Anwendung zu installieren
+ Visual Studio Code starten
+ Den Erweiterungen-Tab öffnen
+ Die `LEGO® MINDSTORMS® EV3 MicroPython` Erweiterung installieren

== microSD-Karte vorbereiten

+ EV3 MicroPython microSD-Karten-Image herunterladen und an einem geeigneten Ort speichern (ca. 360 MB, nicht entpacken)
+ Ein microSD-Karten-Flashtool wie Etcher herunterladen und installieren
+ microSD-Karte in den Computer oder Kartenleser einstecken
+ Flashtool starten und den Bildschirmanweisungen folgen:
  - EV3 MicroPython microSD-Karten-Image auswählen
  - microSD-Karte auswählen (Gerät und Größe müssen übereinstimmen)
  - Flashing-Prozess starten (kann mehrere Minuten dauern)
  - Karte erst nach Abschluss des Prozesses entfernen

== Nutzung am EV3-Brick

Stellen Sie sicher, dass der EV3-Brick ausgeschaltet ist.

+ microSD-Karte in den microSD-Slot des EV3-Bricks stecken
+ EV3-Brick einschalten durch Drücken des mittleren Knopfes für 3 Sekunden
+ Während des Bootvorgangs blinkt die Status-LED orange und es erscheint Text auf dem Display
+ Der EV3-Brick ist einsatzbereit, sobald die Status-LED grün leuchtet

== Verbindung zum EV3-Brick mit Visual Studio Code

Um Code auf den EV3-Brick zu übertragen, muss dieser zunächst mit dem Computer verbunden werden:

+ EV3-Brick einschalten
+ EV3-Brick mit dem mini-USB-Kabel an den Computer anschließen
+ USB-Verbindung wie in @ev3-connecting konfigurieren

#figure(
  caption: "USB-Verbindung zwischen Computer und EV3-Brick konfigurieren",
  image("assets/ev3-connecting.png", width: 75%),
) <ev3-connecting>

== Programm übertragen und ausführen

Das Programm kann mit der F5-Taste gestartet werden. Alternativ kann es manuell über den Debug-Tab mit dem grünen
Start-Pfeil gestartet werden.

Während der Ausführung erscheint eine Toolbar zum Stoppen des Programms. Das Programm kann auch jederzeit mit der
Zurück-Taste am EV3-Brick beendet werden.

Ausgaben des Programms (print-Befehle) werden im Ausgabefenster angezeigt.

