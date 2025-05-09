#import "../../doc.tpl.typ": spe-template
#import "../structure.tpl.typ": base-structure

#show: spe-template.with(
  title: "Pflichtenheft - LEGO Roboter Projekt",
  subtitle: "Pflichtenheft der Projektgruppe G12 im 2. Semester",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "Moritz Kieselbach",
  team: ("Moritz Kieselbach", "Tim Wahlmüller", "Tim Peko", "Alexander Kranl", "Alexandra Usuanlele"),
  version: "2.0",
  date: "09. Mai 2025",
)

#show: base-structure.with(
  bold_words: ("Koordinationsgruppe", "Partnergruppe", "Kursleiter", "G12", "FH Hagenberg", "Projektteam"),
  definitions: (
    (
      word: "Steinebereich",
      definition: "Fläche, auf der die Steine initial liegen; Fläche, von der die Steine entnommen werden",
    ),
    (word: "Zielbereich", definition: "Fläche, auf der die Steine nach Farben sortiert gestapelt werden"),
    (
      word: "Arbeitsfläche",
      definition: "Fläche, auf der sich der Roboter befindet und er seine Aufgabe erfüllen muss; Voraussichtlich die gleiche Fläche wie der Zielbereich",
    ),
    (word: "Alpha-Version", definition: "Erste lauffähige Version des Roboters mit grundlegender Funktionalität"),
    (word: "Alpha-Testtag", definition: "Tag des ersten Testens der Alpha-Version in der Testumgebung"),
    (
      word: "Beta-Version",
      definition: "Funktionsfähige Version des Roboters, die noch Optimierungsbedarf bei nicht-funktionalen Anforderungen hat",
    ),
    (word: "Beta-Testtag", definition: "Tag des Testens der Beta-Version in der Testumgebung"),
    (
      word: "Meilensteintag",
      definition: "Tag, an dem die Projektgruppen ihre aktuelle Lösung vorstellen und testen; Tage des Wettbewerbs, Alpha- und Beta-Testens",
    ),
    (
      word: "Wettbewerb",
      definition: "Tag des finalen Wettbewerbs; Alle Projektgruppen treten mit ihrer Lösung gegeneinander an",
    ),
    (
      word: "Pflichtenheft",
      definition: "Dokument, das die vom Auftragnehmer umzusetzenden Anforderungen detailliert beschreibt; es wird das konkrete \"Wie?\" beschrieben",
    ),
    (
      word: "Lastenheft",
      definition: "Dokument, das die Gesamtheit der Anforderungen des Auftraggebers an die Lieferungen und Leistungen eines Auftragnehmers enthält; es wird das \"Was?\" beschrieben",
    ),
    (
      word: "Ressourcen",
      definition: "Mittel, die zur Durchführung des Projekts benötigt werden, wie Hardware, Software, Zeit und Personal",
    ),
    (
      word: "Stakeholder",
      definition: "Personen oder Gruppen, die ein Interesse am Projektverlauf oder -ergebnis haben und diese direkt oder indirekt beeinflussen können",
    ),
    (
      word: "Projektteam",
      definition: "Die behandelnde Projektgruppe G12, die diese hiermit dokumentierte Projektausführung umsetzt",
    ),
    (
      word: "Betriebsumgebung",
      definition: "Die Umgebung, in der der Roboter seine Aufgabe erfüllen muss; Umgebung beim Wettbewerb",
    ),
    (
      word: "Testumgebung",
      definition: "Umgebung, in der die Funktionalität des Roboters getestet wird; Umgebung offiziell von Kursleitung bereitgestellt",
    ),
    (
      word: "Audimax",
      definition: "Hörsaal, in dem typischerweise die Vorlesungen und Übungen des Kurses stattfinden; Ort des finalen Wettbewerbs",
    ),
    (
      word: "Tutor",
      definition: "Höhersemestrige Studenten, die den Kursleiter im Rahmen der Lehrveranstaltung unterstützen",
    ),
    (
      word: "Peripheriegerät",
      definition: "Gerät, das an den EV3-Mono-Brick angeschlossen wird; Sensoren (z.B. Farbsensor, Gyrosensor) und auch Aktoren (z.B. Motoren)",
    ),
    (
      word: "NXT RGB-Sensor",
      definition: [Farbsensor, mit 3 Empfänger, beschriftet mit "RGB"; altes Modell; im Lego-Mindstorms-EV3-Set unter gleichen Namen
        enthalten],
    ),
    (
      word: "Neu RGB-Sensor",
      definition: "Farbsensor, mit 1 Empfänger; neues Modell; im Lego-Mindstorms-EV3-Set namenlos enthalten",
    ),
  ),
  appendix: [
    == Teammitglieder der Gruppe G12

    - Moritz Kieselbach
    - Tim Wahlmüller
    - Tim Peko
    - Alexander Kranl
    - Alexandra Usuanlele
  ],
)

= Einleitung
Im Rahmen des Sommersemesters 2025 wird im Modul Software-Projekt Engineering 2 ein Projekt durchgeführt. Dieses Projekt
dient als Übung, um die Kursteilnehmer mit klassischem Projektmanagement für Softwareprojekte vertraut zu machen und sie
auf organisatorische Strukturen und Konventionen in der freien Wirtschaft vorzubereiten.

Das Projektteam in dieser Projektausführung ist die Gruppe G12, deren Partnergruppe G11 ist. Die Partnergruppen müssen
sich _Ressourcen_ teilen. In diesem Projekt wird das ein Lego-Mindstorms-Roboter sein. Unter Industriebedingungen könnte
dies ein größerer Rechenserver sein, dessen _Ressourcen_ auf mehrere Teams verteilt werden müssen.

Die konkreten Teammitglieder des Projektteams G12 werden im Anhang angeführt.

#pagebreak()
#set heading(numbering: "1.1.1.a")
= Einführung in das Projekt

Dieses Projekt umfasst die Entwicklung eines Lego-Mindstorms-Roboters, der in der Lage sein muss, Lego-Blöcke von einem
erhöhten _Steinebereich_ auf einen niedrigeren _Zielbereich_ zu transportieren und dabei nach Farben sortiert zu
stapeln. Ort und Platzierung der Blöcke auf dem _Zielbereich_ sind irrelevant. Der Roboter muss autonom arbeiten und
seine Aufgabe ohne menschliches Eingreifen erfüllen können.

== Stakeholder

Im Rahmen dieses Projekts wurden folgende _Stakeholder_ identifiziert:

=== Kursleiter FH-Prof. DI Dr. Herwig Mayr
Der *Kursleiter* FH-Prof. DI Dr. Herwig Mayr stellt die Aufgabenstellung, die Ziele des Projekts sowie die benötigten _Ressourcen_ und
Rahmenbedingungen bereit. Er fungiert zugleich als Auftraggeber des Projekts.

=== Partnergruppe G11
Die Partnergruppe G11 arbeitet parallel an derselben Aufgabenstellung und teilt die _Ressourcen_ mit der Gruppe G12.
Dies erfordert eine enge Kooperation zur gemeinsamen Nutzung des Lego-Mindstorms-Roboters und eine sorgfältige
Abstimmung der Arbeitszeiten und -abläufe zwischen den Gruppen.

*Projektleiterin*: Madlen Moldaschl

=== Koordinationsgruppe

Die Koordinationsgruppe vertritt die Gesamtheit aller Projektgruppen und fungiert als offizielle Schnittstelle zwischen
diesen und dem Kursleiter. Sie definiert in etwa Bewertungskriterien, genaue Umgebungsmaße oder spricht allgemeine
Probleme mit dem Kursleiter an.

*Vertreterin der G12*: Alexandra Usuanlele

== Zeitlicher Rahmen
Das Projekt folgt einem strukturierten Zeitplan mit drei definierten Meilensteinen, auch _Meilensteintag_\e genannt:

- 2025-05-08: Der erste Meilenstein am 08.05.2025 markiert die Fertigstellung einer lauffähigen _Alpha-Version_ des
  Roboters. Diese Version sollte die grundlegende Funktionalität demonstrieren, muss aber noch nicht alle Anforderungen
  vollständig erfüllen.

- 2025-05-22: Der zweite Meilenstein am 22.05.2025 ist der Tag der Fertigstellung einer _Beta-Version_, die bereits alle
  funktionalen Anforderungen erfüllt, aber noch Optimierungsbedarf bei nicht-funktionalen Anforderungen haben kann.

- 2025-06-18: Der dritte und finale Meilenstein am 18.06.2025 ist der Tag des finalen _Wettbewerb_\s und zugleich der
  Abgabetermin für das Projekt. Zu diesem Zeitpunkt muss das Projekt vollständig fertiggestellt sein und alle funktionalen
  sowie nicht-funktionalen Anforderungen erfüllen.

#pagebreak()
= Ausgangssituation (Istzustand)

Der für das Projekt zu verwendende Lego-Mindstorms-Roboter wird aus einem vergangenen Projekt übernommen. Seine
Grundkonfiguration war dadurch bereits vorhanden und wird nachfolgend genauer beschrieben. Der Roboter muss jedoch
konkret an dieses Projekt angepasst werden. Die bereits vorhandene Grundkonfiguration darf - muss aber nicht - erhalten
bleiben.

== Lego-Mindstorms-Roboter

Der Roboter wird übernommen mit:
- Einem groben Fahrwerk
- Einem losen Greifarm
- Einem betriebsfähigen EV3-Controller
- Mehreren losen Lego-Technik-Teilen
- Mehreren Batterien
- Unterschiedlichen Sensoren/Motoren

#pagebreak()
= Aufgabenstellung (Sollzustand)

Es ist eine automatisierte Lösung für das Stapeln von Lego-Steinen nach Farbe zu entwickeln. Der zu entwickelnde Roboter
muss in der Lage sein, Lego-Blöcke anhand ihrer Farbe zu erkennen, diese von einem erhöhten _Steinebereich_ zu greifen
und auf einem _Zielbereich_ nach Farben sortiert zu stapeln. Diese Aufgabe muss autonom erledigt werden.

Der Umgebungsaufbau sowie sonstige Gegebenheiten werden im Folgenden detailliert beschrieben. Im @design wird das Design
Konzept der Projektgruppe beschrieben.

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

=== Aufbau

#figure(caption: "Skizze des Umgebungsaufbaus vom Kursleiter")[
  #image("assets/skizze_umgebungsaufbau.jpg")
]

==== Steinebereich

Die Lego-Blöcke befinden sich auf einem erhöhten, ebenen, geraden, rechteckigen _Steinebereich_ (z.B. ein Holzbalken),
der auf einem Holztisch platziert ist.

Die Blöcke liegen in einer Reihe auf dem Steinebereich und haben zum Rand und zu anderen Steine einen Abstand von 20cm.
Die Farbe der Blöcke ist zufällig und folgt keinem Muster. Jedoch ist sie für alle Projektgruppen gleich.

Dicker Holzbalken mit breitem Balken am Boden:
- Vorteile: stabiler, weniger Risiko zu fallen.

==== Zielbereich

Der rechteckige _Zielbereich_ befindet sich neben dem _Steinebereich_ auf demselben Untergrund, auf dem sich auch der
Roboter befindet. Er ist also auch gleichzeitig die _Arbeitsfläche_ und wird so groß gewählt, dass genügend Platz für
den Roboter und die zu bildenden Stapel ist.

Es ist zu beachten, dass bei größeren Arbeitsflächen möglicherweise mehrere Tische zusammengestellt werden, was zu
leichten Unebenheiten führen kann.

==== Sonstiges

Folgende Aspekte werden am Tag vorm Alpha-Testtag festgelegt:

- Beschaffenheit des Tisches
- Dimensionen des Tisches, _Steinebereich_ und _Zielbereich_
- Höhendifferenz zwischen _Steinebereich_ und _Zielbereich_

=== Markierungen

Es gibt keine Markierungen auf dem Tisch, die der Roboter als Orientierung verwenden könnte. Diese dürfen auch nicht vom
Projektteam angebracht werden.

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
- 2x Farbsensoren
  - NXT RGB-Sensor
  - Neu RGB-Sensor
- 1x Gyrosensor

Zusätzlich steht ein Lego-Technik-Set zur Verfügung, das für den Aufbau des Roboters genutzt werden kann.

Das Hinzufügen neuer Teile oder Komponenten ist nicht erlaubt. Der Kursleiter bietet auf Anfrage die Möglichkeit,
kaputte oder fehlende Teile zu ersetzen.

#pagebreak()
= Schnittstellenanforderungen

Dieses Kapitel beschreibt die Schnittstellen, die der Roboter unterstützen muss, um seine Aufgabe erfüllen zu können.

== Hardware-Umgebung Schnittstelle

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
ausgegangen werden. Es sind höchstens #sym.tilde\10 Steine pro Durchlauf zu stapeln.

Die Blöcke auf dem _Steinebereich_ sind niemals verdeckt, bedeutet es gibt keine Situation, in der ein Block nur
teilweise oder von hinten durch einen anderen Block verdeckt wird.

== Hardware-Benutzer Schnittstelle

Der Roboter ist bereits vorprogrammiert und muss nur noch analog, manuell von einem Benutzer gestartet werden. Danach
läuft der Roboter autonom ohne menschlichen Eingriff. Beim _Wettbewerb_ wird das Programm von einem _Tutor_ gestartet.

Der Roboter muss kein Feedback an den Benutzer geben. Es ist keine Statusanzeige oder Ton bei Schlüssel- oder
Endereignissen (wie Beendigung des Durchlaufs) zu implementieren.

== Hardware-Software Schnittstelle

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

#table(
  columns: 4,
  [],
  [*Länge*],
  [*Breite*],
  [*Höhe*],
  [Minimum],
  [ausstehend],
  [ausstehend],
  [ausstehend],
  [Maximum],
  [60 cm],
  [30 cm],
  [60 cm],
)

Die Messpunkte dafür am Roboter müssen vom Projektteam selbst festgelegt und dokumentiert werden. Dazu reicht das
Pflichtenheft.

== Software
Es wird eine geeignete Entwicklungsumgebung zur Programmierung des Lego-Mindstorms EV3 benötigt.

== Implementierung

Es besteht keine Anforderung an den konkreten Ablauf eines Durchlaufs. Es muss lediglich die grundlegende Anforderung
erfüllt werden:
+ Die Lego-Steine werden von einem Steinebereich entnommen
+ Sie werden in Form von Stapeln auf einem Zielbereich abgelegt
+ Dabei wird nach Farben sortiert

#pagebreak()
= Betriebsanforderungen

Die Betriebsanforderungen beschreiben die Bedingungen, unter denen der Roboter seine Aufgabe erfüllen kann, sowie
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
  - Nicht konvex
  - Nicht konkav
- Nicht rutschig
- Nicht relevant schief (gemessen nach Wasserwaage)

== Beleuchtung

Die Umgebung wird mittels Tageslicht sowie künstlichem Raumlicht beleuchtet. Die Beleuchtung des _Audimax_ wird so
eingestellt, dass eine möglichst hohe Helligkeit erreicht wird. Da die Vorhänge allerdings manchmal geschlossen und
geöffnet werden, ist eine gewisse Variation der Beleuchtung zu erwarten.

== Betriebsdauer
Der Roboter muss in der Lage sein, seinen Arbeitsauftrag bzw. einen Durchlauf einmalig vollständig durchzuführen. Es
gibt keine Anforderung an den Roboter, mehrere Durchläufe kontinuierlich abarbeiten zu können.

Der Roboter schließt einen Durchlauf in #sym.tilde\3 Minuten ab.

== Fehlerbehandlung

Der Roboter muss tendenziell nicht in der Lage sein, im Fehlerfall automatisch einen Neustart auszuführen. Es muss nicht
auf verschiedene Fehlerarten (Prozess-, Umgebungs-, Bedienungsfehler) reagiert werden.

Je nach Fehlerart und -grad ist dies dennoch sinnvoll, um seine Aufgabe erfüllen zu können. Die Implementierung der
Fehlerbehandlung erfolgt daher nach den besten Möglichkeiten anhand der _Ressourcen_ des durchführenden Projektteams.

=== Typische Fehlerfälle

Zu den typischen Fehlerfällen, die berücksichtigt werden sollten, gehören:

- *Fehlgeschlagene Farberkennung*: Der Roboter kann die Farbe des Blocks nicht erkennen.
  - *Vorgabe*: Jeder Block ist eindeutig erkennbar, es kann also keine Fehlerbehandlung für diesen Fall stattfinden.
- *Heruntergefallener Block*: Ein Block fällt während des Transports herunter.
  - Mögliche Maßnahme: Es sollte versucht werden, mit dem nächsten Block fortzufahren, anstatt zu versuchen, den verlorenen
    Block wiederzufinden.
- *Kollision mit Hindernissen*: Der Roboter kollidiert mit einem Hindernis.
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

Es muss jedoch verhindert werden, dass der Roboter selbst von der _Arbeitsfläche_ fällt.

== Ressourceneffizienz

Es dürfen so viele Ressourcen wie nötig für einen Durchlauf verwendet werden, solange der Roboter in der Lage bleibt,
seinen Durchlauf zu beenden.

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

=== Punktevergabe

Die Punktevergabe erfolgt nach folgenden Kriterien:

- 1. Stein des Stapels: 1 Punkt
- 2 Steine übereinander: 5 Punkte
- jeder weitere Stein: +3 Punkte

- Falschfarbiger Stein im Stapel: -X Punkte
- Stein endet außerhalb des Zielbereichs: -2 Punkte

- Unplatzierte Steine noch immer im Steinebereich: +0 Punkte

Dabei wird der höchste Stapel gezählt.

=== Alpha-Testtag

Am _Alpha-Testtag_ werden verschiedene Farben getestet, um zu prüfen, welche zuverlässig vom Roboter erkannt werden
können. Das Ziel ist, dass mindestens drei Farben zuverlässig erkannt werden. Dabei werden auch Einflussfaktoren wie
Lichtverhältnisse berücksichtigt und getestet.

Der Startbereich des Roboters wird noch festgelegt, wobei Wünsche des _Projektteams_ berücksichtigt werden können. Alle
Ergebnisse werden dokumentiert und gesammelt, um eine fundierte Basis für die Weiterentwicklung zu schaffen.

Es ist zu beachten, dass das Fahrzeug nicht zwingend Kurven fahren muss, sondern lediglich vorwärts und rückwärts fahren
können sollte. Die Startposition des Roboters ist noch offen und kann zufällig, von einer anderen Gruppe gewählt oder
selbst bestimmt sein. Die endgültige Entscheidung wird noch festgelegt.

Für den Erfolg des Projekts ist das Testen essenziell – je mehr Tests durchgeführt werden, desto besser wird das
Endergebnis sein.

#pagebreak()
= Design <design>

#let bordered_figure(caption: "", inset: 0em, doc) = {
  box(figure(caption: caption, box(inset: inset, stroke: 1pt, doc)))
}

Dieses Kapitel beschreibt die konkret geplante Umsetzung des zu entwickelnden Lego-Mindstorms-Roboters, basierend auf
der Aufgabenstellung und den gegebenen Rahmenbedingungen. Die Abschnitte unterteilen sich in Hardware, Programmierung
sowie Ablaufsteuerung.

== Hardware

=== Basisplattform

Der Roboter basiert auf einer feststehenden Plattform.

Bewegung erfolgt über einen parallel betriebenen Kettenantrieb entlang einer translativen Achse (vor/zurück).

Diese Konfiguration erlaubt das sequentielle Abarbeiten der Blöcke auf dem Steinebereich.

=== Greifarm

Zentral montiertes Drehgelenk erlaubt das Schwenken über mehr als 180°, wodurch der Arm von der Entnahme- zur
Ablagestelle bewegt werden kann.

Der Arm ist mit einem Greifer ausgestattet, der über eine mechanische Klammer die Blöcke aufnimmt.

Der Farbsensor ist direkt am Arm montiert, über oder unter dem Greifer, um die Farbe jedes Blocks vor dem Ablegen zu
bestimmen.

=== Peripherie

- 3x Motoren:
  + Antrieb der Plattform (vor/zurück)
  + Drehgelenk des Arms
  + Greifmechanik
- 1x Farbsensor für Farberkennung (RGB)\
  - 2 verfügbare Farbsensoren:
    + NXT RGB-Sensor
    + Neu RGB-Sensor #text(blue.darken(25%))[#sym.arrow.l #text(8pt)[Gewählter Sensor]]

Es werden keine weiteren Peripheriegeräte benötigt. 4 Geräte belegen alle 4 Ports des EV3-Mono-Bricks, es können also
keine weiteren Geräte angeschlossen werden.

==== Vergleich der beiden Farbsensoren

Es wurden beide Farbsensoren getestet indem die Farbe der verschieden farbigen Blöcke mit beiden Farbsensoren ermittelt
und dessen Zuverlässigkeit bewertet wurde.

Dabei konnte die Verwendung des NXT RGB-Sensors ausgeschlossen werden, da dieser unter PyBricks nicht unterstützt wird.

#box[
  #table(
    columns: 3,
    [*Steinfarbe*],
    [*NXT RGB*],
    [*Neu RGB*],
    highlight(fill: yellow)[Gelb],
    [-],
    [ok],
    highlight(fill: green)[Grün],
    [-],
    [ok],
    highlight(fill: red)[Rot],
    [-],
    [gut],
    highlight(fill: blue)[Blau],
    [-],
    [ok],
    highlight(fill: silver)[Weiß],
    [-],
    [nicht gewünscht],
  )
]
#h(1em)
#box[
  *Skala*:
  + #text(green)[gut]
  + #text(orange)[ok]
  + #text(red)[nicht gewünscht]
]

=== Skizze

#bordered_figure(caption: "Roboter-Skizze", inset: 0em)[
  #image("assets/2025-04-30_robot_skizze.png", width: 40%)
]

== Programmierung

Programmiert wird in MicroPython unter Verwendung von PyBricks.

Aufbau nach modularer Struktur:
+ *Farberkennung*: Erkennung und Unterscheidung der Blockfarben
+ *Bewegungssteuerung*: Ansteuerung der Motoren für Vor-/Rückwärtsbewegung sowie Armsteuerung
+ *Greifmechanik*: Ansteuerung der Greifmechanik
+ *Positionsverwaltung*: Zuweisung von Ablagepositionen je Farbe, basierend auf ersten Fundstellen

== Ablaufplan

=== Startkonfiguration

Der Roboter startet parallel zur Reihe der Blöcke im Steinebereich, mit idealem Abstand zur Greifposition.

Alle Steine können durch Translation entlang der Parallelen zum Steinebereich erreicht werden.

#bordered_figure(caption: "Zulässige Startpositionen des Roboters", inset: 0em)[
  #box(clip: true, height: 15em, image("assets/2025-05-09_arena_aufstellung_skizze.svg", height: 30em))
  #v(-1em)
  #align(left, box(inset: (left: 1em))[
    #text(blue)[#sym.fence ... Steinebereich]\
    #text(black)[#sym.fence ... Arbeitsfläche]\
    #text(green)[#sym.fence ... Mögliche Startpunkte]
  ])
  #v(1em)
]

=== Durchlauf

+ *Scan der Steine*: Der Roboter fährt entlang der Steine, bis ein Block erkannt wird.
+ *Greifen & Scannen*: Der Greifer nimmt den Block auf, der Farbsensor erkennt die Farbe.
+ *Zielposition ermitteln*:
  - Falls Farbe bereits begegnet: Verwende gespeicherte Zielposition.
  - Falls Farbe unbekannt: Lege neue Position fest und speichere sie.
+ *Transport & Ablegen*:
  - Roboter fährt zur Zielposition, Arm schwenkt über Kopf.
  - Block wird stabil abgelegt.
+ *Zurücksetzen & Wiederholen*: Arm schwenkt zurück, Roboter sucht nächsten Block.

=== Programmfluss

#bordered_figure(caption: "Programmfluss eines Durchlaufs", inset: 0.5em)[
  #image("assets/2025-04-30_flowchart_skizze.svg", width: 90%)
]

=== Teilabläufe

Detaillierte Beschreibung der einzelnen Teilabläufe aus dem Durchlauf.

==== Steine zur Entnahme erkennen

Wie wird erkannt, dass es sich auf dem Steinebereich um einen Stein handelt, der gestapelt werden soll?

Der Farbsensor misst periodisch die Farbe nahe vor dem Sensor. Bei Erkennung einer Farbe, die einem potenziellen Stein
entspricht, gilt ein Stein als gefunden. Da der Farbsensor auf dem Greifarm montiert ist, kann jener Stein gleich
aufgehoben werden.

==== Erkennung des Verlusts eines Steins aus dem Greifarm

Ist der Stein erfolgreich gehoben worden? Fiel der Stein unbeabsichtigt aus dem Greifarm?

Der Farbsensor wird verwendet, um periodisch die Farbe des Steins im Greifarm zu messen. Weicht diese vom Sollwert ab
(Sollwert entspricht nach Aufheben der Farbe des aktuell zu transportierenden Steins), wissen wir, dass der Stein nicht
erfolgreich gehoben wurde bzw. verloren ging.

