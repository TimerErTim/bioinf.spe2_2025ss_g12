#import "../../doc.tpl.typ": spe-template

#set table(
  fill: (_, row) => if calc.even(row) { rgb(230, 230, 230) } else { white },
  align: (col, row) => if col == 0 { right } else { left },
  stroke: 1pt,
)

#show: spe-template.with(
  title: "Lastenheft - LEGO Roboter Projekt",
  subtitle: "Lastenheft der Projektgruppe G12 im 2. Semester",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "Tim Wahlmüller",
  team: ("Moritz Kieselbach", "Tim Wahlmüller", "Tim Peko", "Alexander Kranl", "Alexandra Usuanlele"),
  version: "1.1",
  date: "26. März 2025",
)

#show outline.entry: it => text(size: 12pt - 6pt * calc.log(it.element.level))[#h(2em * (it.element.level - 1))#it]
#outline(title: "Inhaltsverzeichnis", indent: 0pt)

// Bold elements
#show "Koordinationsgruppe": text.with(weight: "bold")
#show "Partnergruppe": text.with(weight: "bold")
#show "Kursleiter": text.with(weight: "bold")
#show "G11": text.with(weight: "bold")
#show "G12": text.with(weight: "bold")
#show "FH Hagenberg": text.with(weight: "bold")
#show "Projektteam": text.with(weight: "bold")

#pagebreak()
= Einleitung
Im Rahmen des Sommersemesters 2025 wird im Modul Software-Projekt Engineering 2 ein Projekt durchgeführt. Dieses Projekt
dient als Übung, um die Kursteilnehmer mit klassischem Projektmanagement für Softwareprojekte vertraut zu machen und sie
auf organisatorische Strukturen und Konventionen in der freien Wirtschaft vorzubereiten.

Das Projektteam in dieser Projektausführung ist die Gruppe G12. Dessen Partnergruppe ist G11. Die Partnergruppen müssen
sich gemeinsame _Ressourcen_ teilen. In diesem Projekt wird das ein Lego-Mindstorms-Roboter sein. Unter
Industriebedingungen könnte dies ein größerer Rechenserver sein, dessen _Ressourcen_ auf mehrere Teams verteilt werden
müssen.

Die konkreten Teammitglieder des Projektteams G12 werden im Anhang aufgeführt.

#pagebreak()
#set heading(numbering: "1.1.1.a")
= Einführung in das Projekt

Dieses Projekt umfasst die Entwicklung eines Lego-Mindstorms-Roboters, der in der Lage sein muss, Lego-Blöcke von einem
erhöhten _Steinebereich_ auf einen niedrigeren _Zielbereich_ zu transportieren und dabei nach Farben sortiert zu
stapeln. Der Roboter muss autonom arbeiten und seine Aufgabe ohne menschliches Eingreifen erfüllen können.

== Stakeholder

_Stakeholder_ sind Personen, die an einem Projekt direkt oder indirekt interessiert sind und dessen Ergebnisse
beeinflussen können.

Im Rahmen dieses Projekts wurden folgende _Stakeholder_ identifiziert:

=== Kursleiter FH-Prof. DI Dr. Herwig Mayr
Der *Kursleiter* FH-Prof. DI Dr. Herwig Mayr stellt die Aufgabenstellung, die Ziele des Projekts sowie die benötigten _Ressourcen_ und
Rahmenbedingungen bereit. Er fungiert zugleich als Auftraggeber des Projekts.

=== Partnergruppe G11
Die Partnergruppe G11 arbeitet parallel an derselben Aufgabenstellung und teilt die _Ressourcen_ mit der Gruppe G12.
Dies erfordert eine enge Kooperation zur gemeinsamen Nutzung des Lego-Mindstorms-Roboters und eine sorgfältige
Abstimmung der Arbeitszeiten und -abläufe zwischen den Gruppen.

=== Andere Projektgruppen

Die anderen Projektgruppen arbeiten an der gleichen Aufgabenstellung unter vergleichbaren Umständen und Voraussetzungen.
Der Erfolg jeder einzelnen Ausführung des Projektes wird in einem _Wettbewerb_ gegen die anderen Projektgruppen
entschieden.

=== Koordinationsgruppe

Die Koordinationsgruppe vertritt die Gesamtheit aller Projektgruppen und fungiert als offizielle Schnittstelle zwischen
diesen und dem Kursleiter. Sie definiert in etwa Bewertungskriterien, genaue Umgebungsmaße oder spricht allgemeine
Probleme mit dem Kursleiter an.

== Zeitlicher Rahmen
Das Projekt folgt einem strukturierten Zeitplan mit drei definierten Meilensteinen, auch _Meilensteintag_\e genannt:

- 2025-05-08: Der erste Meilenstein am 08.05.2025 markiert die Fertigstellung einer lauffähigen _Alpha-Version_ des
  Roboters. Diese Version sollte die grundlegende Funktionalität demonstrieren, muss aber noch nicht alle Anforderungen
  vollständig erfüllen.

- 2025-05-22: Der zweite Meilenstein am 22.05.2025 beinhaltet die Fertigstellung einer _Beta-Version_, die bereits alle
  funktionalen Anforderungen erfüllt, aber noch Optimierungsbedarf bei nicht-funktionalen Anforderungen haben kann.

- 2025-06-18: Der dritte und finale Meilenstein am 18.06.2025 ist der Tag des finalen _Wettbewerb_\s und zugleich der
  Abgabetermin für das Projekt. Zu diesem Zeitpunkt muss das Projekt vollständig fertiggestellt sein und alle funktionalen
  sowie nicht-funktionalen Anforderungen erfüllen.

#pagebreak()
= Ausgangssituation (Istzustand)

Aktuell existiert weder eine Lösung noch ein Prozess für das im Projekt geschilderte Problem. Es ist unabhängig und
separiert von anderen Prozessen in der Anwendungsdomäne und kann daher nicht auf ein bestehendes System aufbauen bzw.
dieses erweitern.

Der für das Projekt zu verwendende Lego-Mindstorms-Roboter wird aus einem vergangenen Projekt übernommen. Seine
Grundkonfiguration ist bereits vorhanden, muss jedoch an die spezifischen Anforderungen dieses Projekts angepasst
werden.

#pagebreak()
= Aufgabenstellung (Sollzustand)

Im Rahmen dieses Projekts ist eine automatisierte Lösung für das Stapeln von Lego-Steinen nach Farbe zu entwickeln. Der
zu entwickelnde Roboter muss in der Lage sein, Lego-Blöcke anhand ihrer Farbe zu erkennen, diese von einem erhöhten _Steinebereich_ zu
greifen und auf einem _Zielbereich_ nach Farben sortiert zu stapeln. Diese Aufgabe muss autonom erledigt werden.

== Grundanforderungen

=== Stapel

Die gebildeten Stapel dürfen nur genau eine Farbe beinhalten. Sie müssen stabil stehen bleiben, ansonsten gibt es keine
Präzisionsanforderungen. Eine maximale Stapelhöhe ist nicht vorgegeben, wobei ein möglichst hoher Stapel anzustreben
ist.

#figure(caption: "Stapeldimensionen")[
  #table(columns: 2, [*Messgröße*], [*Wertvorgabe*], [Höhe], [
    Minimal: 1 Block \
    Maximal: *unbegrenzt*
  ], [Abstand zu anderen Stapeln], [
    Minimal: 0 cm
  ], [Grundfläche], [
    Genau: 1x1 Block
  ], [Anzahl Farben], [
    Genau: 1
  ])
]

Die einzelnen Blöcke eines Stapels dürfen in jeglicher Rotation platziert werden. Ein von der _Arbeitsfläche_ heruntergefallener
Block gilt als verloren und darf nicht wieder aufgehoben werden.

== Rahmenbedingungen

Die folgenden Rahmenbedingungen sind für die Durchführung des Projekts festgelegt. Nicht explizit definierte Bedingungen
können von der Projektgruppe in Absprache mit dem *Kursleiter* selbst festgelegt werden.

=== Hardwarekomponenten

#figure(caption: "Reale Darstellung eines Lego-Mindstorms-Roboters")[
  #image("assets/lego-mindstorms-example.jpg", width: 50%)
]

Als Basis für den Roboter dient ein Lego-Mindstorms-EV3-Mono-Brick, der mit Batterien betrieben wird. Folgende
Peripheriegeräte sind ebenfalls verfügbar:

- 3x Motoren
- 1x Ultraschallsensor
- 1x Farbsensor
- 1x Gyrosensor

Zusätzlich steht ein Lego-Technik-Set zur Verfügung, das für den Aufbau des Roboters genutzt werden kann.

Das Hinzufügen neuer Teile oder Komponenten ist nicht erlaubt. Der Kursleiter bietet auf Anfrage die Möglichkeit,
kaputte oder fehlende Teile zu ersetzen.

#pagebreak()
= Schnittstellenanforderungen

Dieses Kapitel beschreibt die Schnittstellen, die der Roboter unterstützen muss, um seine Aufgabe erfüllen zu können.

== Physische Schnittstellen

Der Roboter muss physisch mit seiner Umgebung interagieren können. Die Konstruktion des Roboters muss robust genug sein,
um seine Aufgaben zuverlässig ausführen zu können, auch wenn leichte Variationen in der Umgebung oder den Eigenschaften
der Blöcke auftreten.

=== Lego-Blöcke

Die Lego-Blöcke haben die gleiche Form und Größe.

#figure(caption: "Lego-Blöcke Dimensionen")[
  #table(columns: 2, [*Größe*], [*Wert*], [Höhe], [
    #math.tilde\3,15 cm
  ], [Breite], [
    #math.tilde\3,3 cm
  ], [Länge], [
    #math.tilde\3,3 cm
  ])
]

Sie unterscheiden sich nur in der Farbe.

Die konkreten Farben werden am _Alpha-Testtag_ basierend auf der Zuverlässigkeit der Sensoren festgelegt. Es kann von $3 <= n <= 10$ Farben
ausgegangen werden.

Die Blöcke auf dem _Steinebereich_ sind niemals verdeckt, bedeutet es gibt keine Situation, in der ein Block nur
teilweise oder von hinten durch einen anderen Block verdeckt wird.

=== Aufbau

#figure(caption: "Skizze des Umgebungsaufbaus vom Kursleiter")[
  #image("assets/skizze_umgebungsaufbau.jpg")
]

==== Steinebereich

Die Lego-Blöcke befinden sich auf einem erhöhten, ebenen, geraden, rechteckigen _Steinebereich_ (z.B. ein Holzbalken),
der auf einem Holztisch platziert ist.

Die Blöcke sind in einer ungefähr geraden Linie angeordnet, wobei nicht von einer exakten geraden Linie ausgegangen
werden kann. Die Reihenfolge der Blöcke ist zufällig und folgt keinem Muster.

Ansonsten können auch sonst keine genauen Angaben über die Position der Blöcke gemacht werden.

==== Zielbereich

Der rechteckige _Zielbereich_ befindet sich neben dem _Steinebereich_ auf demselben Untergrund, auf dem sich auch der
Roboter befindet. Er ist also auch gleichzeitig die _Arbeitsfläche_ und wird so groß gewählt, dass genügend Platz für
den Roboter und die zu bildenden Stapel ist.

Es ist zu beachten, dass bei größeren _Arbeitsfläche_\n möglicherweise mehrere Tische zusammengestellt werden, was zu
leichten Unebenheiten führen kann.

==== Sonstiges

Folgende Aspekte müssen erst noch genau festgelegt werden:

- Beschaffenheit des Tisches
- Dimensionen des Tisches, _Steinebereich_ und _Zielbereich_
- Höhendifferenz zwischen _Steinebereich_ und _Zielbereich_

=== Markierungen

Es gibt keine Markierungen auf dem Tisch, die der Roboter als Orientierung verwenden könnte. Diese dürfen auch nicht vom
Projektteam angebracht werden.

== Menschliche Interaktion

Der Roboter ist bereits vorprogrammiert und muss nur noch analog, manuell von einem Benutzer gestartet werden. Danach
läuft der Roboter autonom ohne menschlichen Eingriff. Beim _Wettbewerb_ wird das Programm von einem _Tutor_ gestartet.

Der Roboter muss kein Feedback an den Benutzer geben. Es ist keine Statusanzeige oder Ton bei Schlüssel- oder
Endereignissen (wie Beendigung des Durchlaufs) zu implementieren.

== Programmierung

Für die Programmierung wird eine Standard-EV3-Umgebung vorausgesetzt, wobei PyBricks oder vergleichbare
Programmierumgebungen eingesetzt werden können. Die Wahl der Programmiersprache liegt im Ermessen der Projektgruppe und
sollte auf Basis der verfügbaren Kenntnisse und der Eignung für die Aufgabe getroffen werden.

#pagebreak()
= Systemanforderungen

Die Systemanforderungen definieren die Hardware- und Softwarevoraussetzungen sowie die an das zu entwickelnde System.

== Hardware
Für die Umsetzung des Projekts wird ein Lego-Mindstorms-EV3-Roboter mit allen notwendigen Komponenten benötigt. Zur
Programmierung des Roboters wird benötigt:
+ eine Micro-SD-Karte vom Typ SDHC (4GB - 32GB)
+ einen Laptop für die Entwicklung der Programme
+ ein Mini-USB-Kabel zur Übertragung

Die zulässigen Maße für den zusammengebauten Roboter werden später genauer festgelegt. Es ist jedoch zu erwarten, dass
diese praktisch irrelevant sind, solange der Roboter durch die Tür des _Audimax_ passt.

== Software
Es wird eine geeignete Entwicklungsumgebung zur Programmierung des Lego-Mindstorms EV3 benötigt. Die Wahl der konkreten
Programmiersprache liegt im Ermessen der Projektgruppe und sollte auf Basis der verfügbaren Kenntnisse und der Eignung
für die Aufgabe getroffen werden.

== Implementierung

Es besteht keine Anforderung an den konkreten Ablauf eines Durchlaufs. Es muss lediglich die grundlegende Funktionalität
umgesetzt werden.

#pagebreak()
= Betriebsanforderungen

Die Betriebsanforderungen beschreiben die Bedingungen, unter denen der Roboter betrieben werden soll, sowie
Anforderungen an seine Laufzeit und Fehlerbehandlung.

== Bedienung

Der Roboter muss seine Aufgabe ohne zusätzliche manuelle Eingriffe ausführen können. Davon ausgenommen sind:

- Aufsetzen der Betriebsumgebung
- Positionierung des Roboters
- Programmstart

== Untergrund

Der Roboter ist darauf ausgelegt, unter folgenden Untergrundbedingungen zu arbeiten. Die Funktionsfähigkeit muss auf
anderen Untergründen nicht gewährleistet werden.

- Holz (Tisch)
- Grundsätzlich eben
  - Kleine Spalten zwischen zusammengeschobenen Tischen sind zulässig
- Horizontal unverformt
  - Nicht korvex
  - Nicht konkav
- Nicht rutschig
- Nicht relevant schief (gemessen nach Wasserwaage)

== Beleuchtung

Die Umgebung ist aktiv beleuchtet. Die Beleuchtung des _Audimax_ wird so eingestellt, dass eine möglichst hohe
Helligkeit erreicht wird. Da die Vorhänge allerdings manchmal geschlossen und geöffnet werden, ist eine gewisse
Variation der Beleuchtung zu erwarten.

== Betriebsdauer
Der Roboter muss in der Lage sein, seinen Arbeitsauftrag einmalig vollständig durchzuführen. Es gibt keine explizite
Anforderung an eine ununterbrochene Betriebsdauer über diesen einzelnen Durchlauf hinaus.

== Fehlerbehandlung

Der Roboter muss tendenziell nicht in der Lage sein, im Fehlerfall automatisch einen Neustart auszuführen. Es muss nicht
auf verschiedene Fehlerarten (Prozess-, Umgebungs-, Bedienungsfehler) reagiert werden.

Je nach Fehlerart und -grad ist dies dennoch sinnvoll, um seine Aufgabe erfüllen zu können. Die Implementierung der
Fehlerbehandlung erfolgt daher nach den besten Möglichkeiten anhand der _Ressourcen_ des durchführenden Projektteams.

=== Typische Fehlerfälle

Zu den typischen Fehlerfällen, die berücksichtigt werden sollten, gehören:

- *Fehlgeschlagene Farberkennung*: Der Roboter kann die Farbe des Blocks unabhängig von der Ursache nicht erkennen.
  - *Vorgabe*: Jeder Block ist eindeutig erkennbar, es kann also keine Fehlerbehandlung für diesen Fall stattfinden.
- *Heruntergefallener Block*: Ein Block fällt während des Transports herunter.
  - Mögliche Maßnahme: Es sollte versucht werden, mit dem nächsten Block fortzufahren, anstatt zu versuchen, den verlorenen
    Block wiederzufinden.
- *Kollision mit Hindernissen*: Der Roboter droht mit Hindernissen zu kollidieren.
  - Mögliche Maßnahme: Der Roboter fährt aus der Kollisionsrichtung aus.
  - Mögliche Maßnahme: Der Roboter führt einen Notstopp durch.
- *Instabilität des Stapels*: Es wird erkannt, dass ein Stapel instabil wird.
  - Mögliche Maßnahme: Der oberste Lego-Block wird neu positioniert.
  - Mögliche Maßnahme: Es wird ein neuer Stapel begonnen.

Detaillierte Anforderungen zur Fehlerbehandlung sind innerhalb des Projektteams abzustimmen und sollten in das _Pflichtenheft_ aufgenommen
werden.

#pagebreak()
= Qualitätsanforderungen

Die Qualitätsanforderungen definieren die nicht-funktionalen Aspekte des Systems, die für einen erfolgreichen Betrieb
erforderlich sind. Allgemein kann angenommen werden, dass Prioritäten `Genauigkeit = Zuverlässigkeit > Geschwindigkeit > Ressourceneffizienz` gelten.

Zusätzlich hat das Projektteam im Vorsemester bereits eigene Qualitätsmerkmale definiert. Diese müssen im Rahmen dieses
Projekts überprüft werden. Ausmaß und Priorität wurden zum aktuellen Zeitpunkt noch nicht festgelegt.

== Genauigkeit

Die Genauigkeit beim Stapeln der Lego-Blöcke muss ausreichend sein, damit die Stapel nicht umfallen und stabil stehen
bleiben, auch nachdem der Roboter seine Aufgabe beendet hat. Dies erfordert eine präzise Steuerung der Bewegungen des
Roboters und eine genaue Positionierung der Blöcke beim Stapeln.

== Geschwindigkeit

Der Roboter bekommt einen fix definierten Zeitslot beim _Wettbewerb_ zur Verfügung. Dieser Zeitslot darf nicht
überschritten werden und wird später genauer bekanntgegeben.

== Zuverlässigkeit

Der Roboter darf eine Fehlerrate von 100% haben, anzustreben ist eine Fehlerrate von 0%. Die akzeptable Fehlertoleranz
wird durch den _Wettbewerb_, also den Vergleich zu anderen Projektgruppen, entschieden. Die absolute Fehlerrate hat
keinen Einfluss auf die Bewertung des Projekterfolgs.

Die Robustheit des Systems gegenüber leichten Variationen in der Umgebung oder den Eigenschaften der Blöcke ist ein
wichtiger Aspekt der Zuverlässigkeit und sollte durch umfangreiche Tests sichergestellt werden.

== Sicherheit

Es sind keine Sicherheitsfunktionen wie etwa ein Notstopp-Knopf oder eine Pause-Funktion erforderlich.

Es muss jedoch verhindert werden, dass der Roboter selbst von der _Arbeitsfläche_ fällt. Dieses Ereignis stellt einen
Fehldurchlauf dar.

== Ressourceneffizienz

Es gibt keine Limits für den Ressourcenverbrauch in einem einzelnen Durchlauf. Der Roboter muss lediglich in der Lage
sein, seinen Arbeitsauftrag einmalig vollständig durchzuführen.

#pagebreak()
= Anforderungen an die Projektentwicklung

Dieses Kapitel beschreibt die methodischen und organisatorischen Anforderungen an die Durchführung des Projekts.

== Entwicklungsmethodik <entwicklungsmethodik>

Die Entwicklung orientiert sich an einem klassischen (nicht agilen) Vorgehensmodell. Im Rahmen des Projekts sind ein _Lastenheft_ sowie
ein _Pflichtenheft_ zu erstellen. Zusätzlich müssen ein Organigramm sowie Stellenbeschreibungen des Projektteams
erarbeitet werden, um die Verantwortlichkeiten und Kommunikationswege klar zu definieren.

== Dokumentation <dokumentations-methodik>

Neben den im obigen @entwicklungsmethodik angeführten Dokumenten müssen einzelne Dokumente im Rahmen der
Lehrveranstaltung erstellt werden. Die konkreten Anforderungen an die Dokumente werden dabei näher definiert.
Zusätzliche Dokumentation erfolgt im Eigeninteresse des Projektteams, um ein möglichst reibungsloses Projektmanagement
zu gewährleisten.

Informationen, die erst zu einem späteren Zeitpunkt bekannt gegeben werden, sollten im _Pflichtenheft_ aufgenommen
werden, können aber auch separat festgehalten werden.

Alle Dokumente, die im Rahmen dieses Projekts erstellt werden, müssen sich an folgende Richtlinien halten:

- Konsistentes Layout
- Befolgen des Namensschemas
- Korrekte Versionierung `x.y`
  - x Inkrement für offiziell publizierte oder abgegebene Versionen
  - y Inkrement für im Projektteam intern publizierte Versionen 
- Deckblatt bei mehr als 3 Seiten
- Korrekturlesung durch ein anderes Teammitglied

== Tests

Die Tests werden vom Projektteam manuell in einer selbst nachgestellten Umgebung durchgeführt. Die Exzessivität der
Tests sollte vom Projektteam selbstständig so gewählt werden, dass eine qualitative Umsetzung des Projekts
sichergestellt werden kann.

== Kommunikationswege

Es gibt bevorzugte Kommunikationswege für die verschiedenen _Stakeholder_.

=== Kursleiter

#figure(caption: "Kommunikationswege mit Kursleiter")[
  #table(
    columns: 3,
    [*Kommunikationsweg*],
    [*Zeitlicher Rahmen*],
    [*Unter welchen Umständen*],
    [Mündlich],
    [Unmittelbar zu Vorlesungen oder Übungen],
    [Bei schnellen Fragen oder Anliegen],
    [E-Mail],
    [
      - Rund um die Uhr
      - Antwortet meist innerhalb von 24h
    ],
    [
      - Bei weniger dringenden Anliegen
      - Bei umfangreicheren Themen
    ],
    [Koordinationsgruppe],
    [Hauptsächlich zu geplanten Besprechungen],
    [Bei Anliegen (fast) aller Projektgruppen betreffend],
  )
]

Der Kursleiter ist grundsätzlich mit der Festlegung zusätzlicher Kommunikationswege einverstanden. Dies erfolgt auf
Absprache und wird von der Projektgruppe G12 initiiert.

Der Kursleiter versucht, typisches Kommunikationsverhalten von realen Auftraggebern zu imitieren. Das beinhaltet:

- Manchmal zu beschäftigt für eine Antwort
- Schlechtere Antworten bei unpräzisen Fragen
- ...

=== Partnergruppe G11

Grundsätzlich ist die Kommunikation mit der Partnergruppe G11 der behandelnden Gruppe G12 überlassen. Es muss sich
hierbei selbst koordiniert werden.

=== Gruppeninterne Kommunikation

Die gruppeninterne Kommunikation unterliegt dem gruppeneigenen Ermessen. Es gibt hierbei kein Standardprozedere oder
andere Vorgaben.

#pagebreak()
= Szenario-Beschreibung

Um die Funktionsweise des zu entwickelnden Roboters zu veranschaulichen, wird im Folgenden ein exemplarischer Ablauf der
Aufgabe beschrieben:

1. *Initialisierung:* Der Roboter wird eingeschaltet und positioniert sich zwischen dem _Steinebereich_ und dem _Zielbereich_.
  Er kalibriert seine Sensoren und bereitet sich auf die Aufgabe vor.

2. *Erkennung der Blöcke:* Der Roboter wendet sich dem _Steinebereich_ zu und scannt die dort aufgereihten Lego-Blöcke. Er
  identifiziert die Positionen und Farben der einzelnen Blöcke.

3. *Greifvorgang:* Der Roboter fährt zum ersten Block, positioniert seinen Greifmechanismus und hebt den Block von dem _Steinebereich_.

4. *Transport:* Mit dem gegriffenen Block bewegt der Roboter seinen Arm in Richtung des _Zielbereich_\s.

5. *Farbbasierte Entscheidung:* Basierend auf der erkannten Farbe des Blocks entscheidet der Roboter, an welcher Position
  auf dem _Zielbereich_ der Block abgelegt werden soll, um nach Farben sortierte Stapel zu bilden.

6. *Ablage und Stapeln:* Der Roboter platziert den Block präzise auf der _Zielbereich_, entweder als Grundstein eines neuen
  Stapels oder auf einem bereits vorhandenen Stapel der gleichen Farbe.

7. *Wiederholung:* Der Roboter dreht sich zurück zum _Steinebereich_, um den nächsten Block zu greifen. Die Schritte 3-6
  werden wiederholt, bis alle Blöcke transportiert und gestapelt sind.

8. *Abschluss:* Nach dem Transport des letzten Blocks fährt der Roboter in eine definierte Endposition und signalisiert die
  erfolgreiche Beendigung der Aufgabe.

Dieser Ablauf verdeutlicht die Komplexität der Aufgabe und die verschiedenen Teilschritte, die der Roboter bewältigen
muss. Die genaue Implementierung kann je nach gewähltem Konstruktions- und Programmieransatz variieren.

Dies stellt keine geforderte Ablaufreihenfolge dar, sondern eine mögliche Umsetzung der Aufgabe.

#pagebreak()
= Vorprüfung

Das Projekt wurde einer theoretischen Vorprüfung unterzogen, deren Ziel es war, die generelle Machbarkeit zu überprüfen.
Aufgrund der überschaubaren Komplexität des Projekts wurde von einer vollständigen prototypischen Vorprüfung abgesehen.
Stattdessen wurden die folgenden Aspekte theoretisch evaluiert:

== Machbarkeit

Die Machbarkeit des Projekts wurde als realistisch eingestuft. Alle erforderlichen Komponenten (EV3 Brick, Sensoren,
Motoren) stehen zur Verfügung, und der Roboter kann mit den vorhandenen Laptops programmiert werden. Ein Vergleich
verschiedener Programmiersprachen und EV3-Umgebungen wurde bereits durchgeführt, um die optimale Kombination für dieses
Projekt zu identifizieren. Zudem wurden ähnliche Projekte in früheren Semestern und von anderen Gruppen erfolgreich
umgesetzt, was die grundsätzliche Machbarkeit bestätigt.

== Minimalität

Die Aufgabenstellung wurde auf die wesentlichen Anforderungen reduziert: Erkennung verschiedener Farben, Transport von
Lego-Steinen und Stapeln nach Farben. Diese Reduktion auf das Wesentliche trägt zur Klarheit der Aufgabe bei und erhöht
die Wahrscheinlichkeit einer erfolgreichen Umsetzung.

== Eindeutigkeit

Die Aufgabenstellung und Anforderungen wurden klar definiert und lassen wenig Interpretationsspielraum. Dies erleichtert
die Umsetzung. Das Bewertungssystem für den Projekterfolg ist ebenfalls unmissverständlich definiert.

== Plausibilität

Die Anforderungen wurden als plausibel und mit den vorhandenen _Ressourcen_ umsetzbar bewertet. Die zur Verfügung
stehenden technischen Mittel sind für die gestellte Aufgabe angemessen.

== Modifizierbarkeit

Das Projekt erlaubt Anpassungen und Modifikationen, sowohl in der Hardware (Roboterkonfiguration) als auch in der
Software. Dies ermöglicht eine flexible Reaktion auf unvorhergesehene Herausforderungen während der Entwicklung.

== Überprüfbarkeit
Der Projekterfolg kann durch den finalen _Wettbewerb_ eindeutig ermittelt werden. Die definierten funktionalen und
nicht-funktionalen Anforderungen bieten klare Kriterien für die Überprüfung der Projektumsetzung.

#pagebreak()
= Abnahmekriterien

Diese Projektausführung muss seine Anforderungen besser im Vergleich zu anderen Projektgruppen erfüllen. Es werden dafür
die nachfolgenden Kriterien verwendet, wobei sich diese im Laufe der Zeit noch erweitern und konkretisieren können. Sie
werden durch die Koordinationsgruppe und den Kursleiter festgelegt.

== Dokumente

Geforderte Dokumente sind:

- _Lastenheft_
- _Pflichtenheft_
- _Organigramm_
- _Stellenbeschreibungen_

Zusätzlich gibt es individuell geforderte Dokumente.

Prinzipiell müssen alle Dokumente die im @dokumentations-methodik angegebenen Kriterien erfüllen.

== Wettbewerb bzw. Testtage

Genaue Kriterien werden erst am Tag des _Wettbewerb_\s und am _Alpha-Testtag_ bzw. _Beta-Testtag_ entsprechend bekannt
gegeben. Grob gestaltet sich die Bewertung wie folgt, wobei erstere Aspekte stärker gewichtet werden:

+ Erreichte Punkte steigen exponentiell mit der Höhe der Stapel
+ Die Einhaltung des zugeordneten Zeitslots entscheidet bei Gleichstand

Punkte können beim Testen in der offiziellen _Testumgebung_ unter Aufsicht von _Tutor_\en an Testtagen erzielt werden.
Das geschieht unter den für diesen Tag festgelegten Kriterien.

#pagebreak()
#set heading(numbering: none)
= Anhang

== Begriffe

#table(
  columns: 2,
  [*Steinebereich*],
  [Fläche, auf der die Steine initial liegen; Fläche, von der die Steine entnommen werden],
  [*Zielbereich*],
  [Fläche, auf der die Steine nach Farben sortiert gestapelt werden],
  [*Arbeitsfläche*],
  [Fläche, auf der sich der Roboter befindet und er seine Aufgabe erfüllen muss; Vorraussichtlich die gleiche Fläche wie
    der _Zielbereich_],
  [*Alpha-Version*],
  [Erste lauffähige Version des Roboters mit grundlegender Funktionalität],
  [*Alpha-Testtag*],
  [Tag des ersten Testens der Alpha-Version in der Testumgebung],
  [*Beta-Version*],
  [Funktionsfähige Version des Roboters, die noch Optimierungsbedarf bei nicht-funktionalen Anforderungen hat],
  [*Beta-Testtag*],
  [Tag des Testens der Beta-Version in der Testumgebung],
  [*Meilensteintag*],
  [Tag, an dem die Projektgruppen ihre aktuelle Lösung vorstellen und testen; Tage des Wettbewerbs, Alpha- und Beta-Testens],
  [*Wettbewerb*],
  [Tag des finalen Wettbewerbs; Alle Projektgruppen treten mit ihrer Lösung gegeneinander an],
  [*Pflichtenheft*],
  [Dokument, das die vom Auftragnehmer umzusetzenden Anforderungen detailliert beschreibt],
  [*Lastenheft*],
  [Dokument, das die Gesamtheit der Anforderungen des Auftraggebers an die Lieferungen und Leistungen eines Auftragnehmers
    enthält],
  [*Ressourcen*],
  [Mittel, die zur Durchführung des Projekts benötigt werden, wie Hardware, Software, Zeit und Personal],
  [*Stakeholder*],
  [Personen oder Gruppen, die ein Interesse am Projektverlauf oder -ergebnis haben und diese direkt oder indirekt
    beeinflussen können],
  [*Projektteam*],
  [Die behandelnde Projektgruppe G12, die diese hiermit dokumentierte Projektausführung umsetzt],
  [*Betriebsumgebung*],
  [Die Umgebung, in der der Roboter seine Aufgabe erfüllen muss; Umgebung beim Wettbewerb],
  [*Testumgebung*],
  [Umgebung, in der die Funktionalität des Roboters getestet wird; Umgebung offiziell von Kursleitung bereitgestellt],
  [*Audimax*],
  [Hörsaal, in dem typischerweise die Vorlesungen und Übungen des Kurses stattfinden; Ort des finalen Wettbewerbs],
  [*Tutor*],
  [Höhersemestrige Studenten, die den Kursleiter im Rahmen der Lehrveranstaltung unterstützen],
)

== Teammitglieder der Gruppe G12

- Moritz Kieselbach
- Tim Wahlmüller
- Tim Peko
- Alexander Kranl
- Alexandra Usuanlele
