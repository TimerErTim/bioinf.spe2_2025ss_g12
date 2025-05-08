#set heading(numbering: "1.")
#show heading.where(level: 2): it => [
  #set text(weight: "thin", size: 12pt)
  #it
  #v(0.25em)
]
#set text(font: "Arial")
#set page(numbering: "1 von 1", number-align: bottom + right, header: "SS 2025, SPE2")

#text(size: 20pt, weight: "bold")[
  Fragenkatalog der Gruppe 12 - Lastenheft
]

= Grundlagen

== Welche Anforderungen hinsichtlich der Autonomie des Roboters bestehen?

- Muss der Roboter komplett ohne manuellen Input seine Aufgabe erfüllen können?
- Muss der Roboter in der Lage sein, autonom einen Neustart bei Fehlererkennung durchzuführen?

== Gibt es eine vorgegebene Schrittreihenfolge, die der Roboter befolgen muss?

= Umgebungsspezifikationen

== Welche präzisen Dimensionen und welche Beschaffenheit hat die Arbeitsumgebung (Tisch, Entnahme- und Ablagefläche)?

- Mit welchen Oberflächenbeschaffenheiten muss der Roboter umgehen können?
- Muss der Roboter in der Lage sein, auf unebenen Flächen zu arbeiten (z. B. Spalte zwischen zusammengeschobenen Tischen)?
- Muss der Roboter in der Lage sein, auf schiefen Oberflächen zu arbeiten? Welche Limits gibt es?

== Welche Höhendifferenz zwischen Entnahme- und Ablagefläche ist vorgesehen?

- Was ist die maximale Höhe, die der Roboter unterstützen muss?

== Welche Orientierungspunkte oder Markierungen werden in der Arbeitsumgebung bereitgestellt?

- Gibt es Markierungen auf der Arbeitsoberfläche? Dürfen diese nachgezogen werden?
- Kann davon ausgegangen werden, dass die Position der Lego-Blöcke einer vordefinierten Regel folgt (z. B. 2 cm entfernt von der erhöhten Kante)?

== Welche Lichtverhältnisse sind als Mindestvoraussetzung definiert?

- Muss das Licht eingeschaltet sein?

== Ist davon auszugehen, dass die Blöcke auf der Entnahmefläche in einer geraden Linie angeordnet sind?

- Muss der Roboter andere Anordnungen unterstützen können?

= Objektspezifikationen

== Welche maximale Stapelhöhe ist vorgesehen oder zulässig?

- Welche Stapelhöhe muss der Roboter unterstützen können?

== Welcher Mindestabstand zwischen farblich unterschiedlichen Stapeln ist einzuhalten?

== Gibt es Präzisionsanforderungen für die Platzierung der Blöcke (in mm)?

== Welches Spektrum an Blockformen ist zu erwarten und muss vom Roboter gehandhabt werden können?

== Welche Anordnungsvarianten der Blöcke auf der Entnahmefläche sind zu berücksichtigen?

== Wie viele verschiedene Farben können innerhalb eines Durchlaufs auftauchen und müssen unterstützt werden?

= Anforderungen an die Erkennung und Verarbeitung

== Besteht eine Anforderung hinsichtlich der Blockerkennungsreihenfolge (vorab oder Just-in-Time)?

== Gibt es Vorgaben für den Umgang mit nicht eindeutig erkennbaren Blöcken?

- Soll der Durchlauf abgebrochen werden?
- Soll der Block übersprungen werden?
- Soll er dennoch auf einen zufälligen Stapel gelegt werden?

== Welche Mindesterkennungsrate für die Farbidentifikation muss der Roboter erfüllen?

- Wie hoch darf die Fehlerrate unter Betriebsbedingungen sein?

== Welche Erkennungsanforderungen bestehen bei teilweise verdeckten Blöcken?

= Fehlertoleranz und Robustheit

== Welche Fehlertoleranz ist für den Roboterbetrieb definiert (maximale Anzahl akzeptabler Fehler)?

- Wie oft darf ein Stapel umfallen (prozentual)?
- Wie oft darf ein Block herunterfallen?
- Wie oft darf ein Block übersehen werden?

== Welche Fehlerarten muss der Roboter erkennen und behandeln können?

- Müssen Bedienungsfehler erkannt werden?
- Müssen Umgebungsfehler erkannt werden?
- Müssen Prozessfehler erkannt werden?

== Welche Anforderungen bestehen an die Wiederaufnahme des Betriebs nach Unterbrechungen?

- Batterie leer während des Betriebs
- Roboter wird manuell von der Umgebung entfernt
- Durchlauf wird manuell, aber kontrolliert abgebrochen

== Welche präventiven Maßnahmen muss der Roboter bei drohender Stapelinstabilität vornehmen?

- Muss der Roboter den obersten Block neu positionieren?
- Reicht eine Korrektur bei der Ablage des nächsten Blocks?

== Welche Reaktionen sind bei unvorhergesehenen Hindernissen oder Umgebungsveränderungen zu erwarten?

- Roboter bricht Durchlauf ab?
- Roboter pausiert und wartet auf Freigabe durch den Benutzer?

= Benutzerinteraktionen

== Welche Statusanzeigen oder Signale muss der Roboter bereitstellen?

- Signalton bei Start, Problem, Abschluss etc.?
- LED-Statusanzeige?

== Welche Sicherheitsfunktionen sind erforderlich?

- Not-Aus?
- Pause?

== Wird ein konkretes Signal bei Aufgabenabschluss erwartet?

== Sind weitere Interaktionsmöglichkeiten mit dem Roboter während des Betriebs gefordert?

= Leistungsparameter

== Gibt es ein Zeitlimit für die Aufgabenerfüllung nach Start?

== Können wir annehmen, dass Präzision > Geschwindigkeit > Energieeffizienz?

== Welche Limits gibt es hinsichtlich des Ressourcenverbrauchs?

- Z. B. Roboter darf nicht mehr als 10 % Batterie pro Durchlauf verbrauchen.

== Gibt es ein bevorzugtes Kriterium zur Bewertung des Materialaufwands?

- Z. B.: Anzahl verbauter Teile + Gewicht des Roboters

= Bewertungskriterien

== Nach welchen konkreten Kriterien wird der Projekterfolg gemessen?

== Welchen Einfluss haben Fehler oder Ungenauigkeiten auf die Bewertung?

= Dokumentationsanforderungen

== Welche Dokumentationsumfänge sind für das Projekt gefordert?

- Protokolle der Übungsveranstaltungen?
- Besprechungsprotokolle?
- Pflichtenheft?
- Testprotokolle?
- Sonstige?

== Welche Aspekte müssen diese Dokumente beinhalten?

= Hardwareressourcen

== Gibt es die Möglichkeit, neue Hardwareressourcen anzufordern?

== Welche Anforderungen bestehen an die Dimensionen des Roboters?

== Welche externen Komponenten dürfen zusätzlich eingesetzt werden?

- Z. B.: Laptops, SD-Karte, eigene Legoteile, keine 3D-gedruckten Adapter etc.?

= Testanforderungen

== Welche Anforderungen gelten für die Dokumentation von Testdurchläufen?

== Wie hoch ist die zu erwartende Variation zwischen den Testbedingungen?

== Welche Edge-Cases muss der Roboter bewältigen können?

= Organisatorische Rahmenbedingungen

== Welcher Kommunikationsweg zu Ihnen als Auftraggeber ist vorgesehen?

- Gibt es einen bevorzugten Kommunikationskanal?
  - Mündlich nach Vorlesungen
  - E-Mail
  - MS Teams?

== Welche Form der Fortschrittsberichterstattung wird erwartet?

- Reichen die Wettbewerbstage aus?

= Sonstige Anmerkungen

#align(center + bottom)[
  Vielen Dank für Ihre Mühe!
]
