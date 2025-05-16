#import "../../doc.tpl.typ": spe-template
#import "../structure.tpl.typ": base-structure

#show: spe-template.with(
  title: "Beta-Testplan",
  subtitle: "Testplan für den Beta-Testtag des LEGO-Roboter-Projekts",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "TBD",
  team: (
    "Moritz Kieselbach",
    "Tim Wahlmüller",
    "Tim Peko", 
    "Alexander Kranl",
    "Alexandra Usuanlele"
  ),
  version: "0.2",
  date: "16. Mai 2025",
)

= Beschreibung

Der Roboter wird in der offiziellen Arena getestet und es wird ein kompletter Testlauf (Durchlauf) durchgeführt. Dieser Versuch dient als Anhaltspunkt für zu behebende Mängel und mögliche Verbesserungen.

Nach entsprechenden Anpassungen am Roboter wird erneut ein kompletter Testlauf durchgeführt. Das wird solange wiederholt, bis das Projektteam mit der Leistung des Roboter zufrieden ist.

Im Laufe dieses iterativen Prozesses werden alle unten angeführten Testfälle ausgeführt und die Ergebnisse dokumentiert. Die qualitativen Tests werden im Beisein unserer Tutorin durchgeführt. Diese gibt uns weitere qualitative Tests vor, die ebenfalls protokolliert werden.

= Funktionale Testfälle

Alle Testfälle, die die Funktionalität des LEGO-Roboter-Projekts testen.

== Konformanztests

Es wird von einer erfolgreichen Ausgangssituation ausgegangen.

=== Farberkennung – 3 Farben

#table(
  columns: (auto, auto),
  [*Ziel*], [
    Nachweis, dass der Roboter mindestens drei verschiedene Farben unter realen Lichtbedingungen zuverlässig erkennt und unterscheidet.\
    Die Farben sind:
    + Rot
    + Blau
    + Weiß
  ],
  [*Voraussetzung*], [Drei Blöcke in den Farben Rot, Blau und Weiß werden im Steinebereich in zufälliger Reihenfolge platziert. Die Beleuchtung entspricht den typischen Bedingungen im Audimax (Tageslicht + Raumlicht).],
  [*Durchführung*], [
    + Roboter in Startposition bringen, Programm starten.
    + Jeder Block wird nacheinander aufgenommen, die vom Roboter erkannte Farbe wird protokolliert (z.B. durch Ausgabe auf Konsole).
    + Reihenfolge der Blöcke wird mindestens dreimal variiert, Test jeweils wiederholen.
  ],
  [*Erwartetes Ergebnis*], [In mindestens 95% der Fälle wird die tatsächliche Farbe korrekt erkannt und dem richtigen Stapel zugeordnet.]
)

=== Farbsortiertes Stapeln

#table(
  columns: (auto, auto),
  [*Ziel*], [Überprüfen, dass der Roboter Blöcke gleicher Farbe zu einem gemeinsamen Stapel gruppiert.],
  [*Voraussetzung*], [Sechs Blöcke (je zwei in Rot, Blau, Weiß) liegen gemischt im Steinebereich.],
  [*Durchführung*], [
    + Roboter startet, nimmt alle Blöcke nacheinander auf und stapelt sie.
    + Nach Abschluss werden die Stapel gezählt und deren Farbhomogenität überprüft.
  ],
  [*Erwartetes Ergebnis*], [Es entstehen drei Stapel, jeder enthält ausschließlich Blöcke einer Farbe. Kein Stapel enthält Blöcke unterschiedlicher Farbe.]
)

=== Stabilität eines 3er-Stapels

#table(
  columns: (auto, auto),
  [*Ziel*], [Nachweis, dass ein Stapel aus drei gleichfarbigen Blöcken nach dem Ablegen stabil steht.],
  [*Voraussetzung*], [Drei Blöcke derselben Farbe liegen bereit.],
  [*Durchführung*], [
    + Roboter stapelt die drei Blöcke aufeinander.
    + Nach dem Ablegen wird der Stapel 30 Sekunden beobachtet, leichte Erschütterung des Tisches simuliert.
  ],
  [*Erwartetes Ergebnis*], [Der Stapel bleibt stehen, kein Block fällt herunter oder kippt um.]
)

=== Autonomer Durchlauf

#table(
  columns: (auto, auto),
  [*Ziel*], [Überprüfen, dass der Roboter einen kompletten Durchlauf ohne menschlichen Eingriff korrekt ausführt.],
  [*Voraussetzung*], [9 Blöcke (je drei in Rot, Blau, Weiß) liegen im Steinebereich, Roboter ist korrekt positioniert.],
  [*Durchführung*], [
    + Programm wird gestartet, keine weiteren Eingriffe.
    + Roboter erkennt, transportiert und stapelt alle Blöcke.
    + Zeit für den gesamten Durchlauf wird gemessen.
  ],
  [*Erwartetes Ergebnis*], [Alle 9 Blöcke werden korrekt erkannt, transportiert und im Zielbereich gestapelt. Der Durchlauf dauert maximal 3 Minuten.]
)

=== Roboter bleibt auf der Arbeitsfläche

#table(
  columns: (auto, auto),
  [*Ziel*], [Sicherstellen, dass der Roboter während des gesamten Durchlaufs die Arbeitsfläche nicht verlässt.],
  [*Voraussetzung*], [Arbeitsfläche mit klar definierten Grenzen (Tischkante).],
  [*Durchführung*], [
    + Roboter wird an den Rand der Arbeitsfläche gestellt, Programm gestartet.
    + Während des gesamten Testlaufs wird beobachtet, ob der Roboter die Fläche verlässt oder über die Kante fährt.
      - Besonders bei Durchsuchen des Steinebereichs in einer Richtung, in der keine Steine mehr liegen.
  ],
  [*Erwartetes Ergebnis*], [Der Roboter bleibt vollständig auf der Arbeitsfläche, kein Teil droht von der Tischkante zu fallen.]
)

=== Zielposition korrekt gespeichert

#table(
  columns: (auto, auto),
  [*Ziel*], [Überprüfen, dass der Roboter für jede Farbe die Zielposition korrekt speichert und wiederverwendet.],
  [*Voraussetzung*], [Zwei Blöcke derselben Farbe, dazwischen mindestens ein Block einer anderen Farbe.],
  [*Durchführung*], [
    + Roboter nimmt den ersten Block der Farbe X, legt ihn ab.
    + Danach wird ein Block anderer Farbe gestapelt.
    + Beim zweiten Block der Farbe X wird überprüft, ob der Roboter denselben Zielort wie beim ersten Mal ansteuert.
  ],
  [*Erwartetes Ergebnis*], [Beide gleichfarbigen Blöcke werden am exakt gleichen Ort gestapelt.]
)


== Nonkonformanztests

Diese Tests gehen von einem fehlerhaften Zustand aus und testen das Verhalten des Roboters in so einem Fall.

=== Falsche Farberkennung (Störlicht)

#table(
  columns: (auto, auto),
  [*Ziel*], [Testen, wie der Roboter auf fehlerhafte Farberkennung durch veränderte Lichtverhältnisse reagiert.],
  [*Voraussetzung*], [Ein Block wird unter wechselnder Beleuchtung (z.B. Taschenlampe, Abdunklung) platziert.],
  [*Durchführung*], [
    + Roboter nimmt den Block unter normalen Lichtbedingungen auf.
    + Während der Farberkennung wird die Beleuchtung verändert.
    + Die erkannte Farbe und das Stapelergebnis werden protokolliert.
  ],
  [*Erwartetes Ergebnis*], [
    - Der Roboter kann die Farbe ggf. falsch erkennen; das Fehlverhalten wird dokumentiert.
    - Der Roboter fährt mit dem nächsten Block fort.
  ]
)

=== Verlorener Stein beim Transport

#table(
  columns: (auto, auto),
  [*Ziel*], [Überprüfen, wie der Roboter reagiert, wenn ein Block während des Transports verloren geht.],
  [*Voraussetzung*], [Ein Block wird so platziert, dass er leicht aus dem Greifer fallen kann.],
  [*Durchführung*], [
    + Roboter nimmt den Block auf, während des Transports wird der Block absichtlich gelockert.
    + Beobachten, ob der Roboter den Verlust erkennt und wie er darauf reagiert (z.B. Fortsetzung mit nächstem Block).
  ],
  [*Erwartetes Ergebnis*], [
    Der Roboter erkennt den Verlust und fährt mit dem nächsten Block fort.
  ]
)

=== Kollision mit Hindernis

#table(
  columns: (auto, auto),
  [*Ziel*], [Testen, wie der Roboter auf ein unerwartetes Hindernis in seiner Fahrbahn reagiert.],
  [*Voraussetzung*], [Ein Hindernis (z.B. Block, Hand) wird in die Fahrbahn gestellt.],
  [*Durchführung*], [
    + Roboter startet, fährt auf das Hindernis zu.
    + Beobachten, ob der Roboter ausweicht, stoppt oder eine andere Reaktion zeigt.
  ],
  [*Erwartetes Ergebnis*], [
    - Der Roboter führt eine Ausweichbewegung oder einen Notstopp durch.
    - Der Roboter setzt den Durchlauf nicht ohne manuelle Intervention fort.
  ]
)

= Qualitative Testfälle

Diese Testfälle sind abgeleitet aus den im Wintersemester 2024 ausgearbeiteten Qualitätsmerkmalen und deren Messkriterien.

== Produktqualität: Leistungseffizienz

#table(
  columns: (auto, auto),
  [*Definition*], [Der Roboter muss die Anforderungen innerhalb gewisser Zeit durchführen],
  [*Priorität*], [Mittel],
  [*Maß*], [
    + Zeit zur Suche eines Blockes
    + Zeit beginnend ab erster Berührung des zu stapelnden Blockes bis hin zur vollständigen Stapelung
  ],
  [*Maßeinheit*], [Zeit in Sekunden],
  [*Art der Messung*], [Zeitmessung per Stoppuhr],
  [*Schwellenwert*], [
    + Maximal 10 Sekunden für Suche
    + Maximal 10 Sekunden für Stapelung
  ]
)

== Einsatzqualität: Effizienz

#table(
  columns: (auto, auto),
  [*Definition*], [Der Roboter sollte ressourcenschonend arbeiten, sowohl im Hinblick auf die Energieversorgung als auch die Materialwahl.],
  [*Priorität*], [Mittel],
  [*Maß*], [Energieverbrauch und Materialaufwand],
  [*Maßeinheit*], [_keine Maßeinheit_],
  [*Art der Messung*], [Messung des Stromverbrauchs während des Betriebs],
  [*Schwellenwert*], [Der Roboter darf nicht mehr als 10% seiner Batteriekapazität pro Aufgabe verbrauchen.]
)


