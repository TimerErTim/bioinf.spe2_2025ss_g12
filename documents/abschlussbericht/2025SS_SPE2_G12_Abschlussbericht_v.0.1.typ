#import "../../doc.tpl.typ": spe-template

#show: spe-template.with(
  title: "Abschlussbericht",
  subtitle: "Abschlussbericht vom LEGO-Roboter-Projekt der Gruppe 12",
  semester: "SS 2025",
  group: "12",
  author: "Tim Peko",
  corrector: "Moritz Kieselbach",
  team: ("Moritz Kieselbach", "Tim Wahlmüller", "Tim Peko", "Alexander Kranl", "Alexandra Usuanlele"),
  version: "0.1",
  date: "22. Juni 2025"
)
#show link: it => {
  underline(text(blue.lighten(25%), it))
}

= Nachkalkulation

== Aufwand

Der Aufwand des Projekts betrug 144 Stunden, die folgendermaßen aufgeteilt wurden:

#table(
  columns: 2,
  [Kieselbach], [22,5 h],
  [Kranl], [35 h],
  [Peko], [41 h],
  [Usuanlele], [10 h],
  [Wahlmüller], [35,5 h],
  [*Gesamt*], [*144 h*],
)

Daten für die Nachkalkulation wurden von den Teammitgliedern selbst in einer gesammelten Excel-Tabelle auf OneDrive erfasst.

== Zielerreichung

=== Gesetzte Ziele

Der Roboter ist in der Lage:
- *Steine zu erkennen:*\
  Der Farbsensor am Greifarm erkennt Steine durch periodische Farbmessung. Bei Farberkennung wird der Stein als gefunden markiert und kann direkt gegriffen werden.
- *Steine farblich zuzuordnen:*\
  Der Farbsensor bestimmt die Steinfarbe nach dem Greifen. Die Software verwaltet Zielpositionen pro Farbe – bekannte Farben werden an der zugehörigen Position abgelegt, neue Farben erhalten eine neue Zielposition.
- *Steine aufzuheben und zu halten:*\
  Die mechanische Klammer am Greifarm gewährleistet sicheres Aufnehmen und Halten. Der Farbsensor überprüft nach dem Greifen die korrekte Aufnahme durch Farbabgleich.
- *Steine zu transportieren:*\
  Der Kettenantrieb bewegt den Roboter entlang der translativen Achse (vor/zurück) zur Zielposition. Modulare und präzise Motorsteuerung für sicheren Transport aller Steine.
- *Steine abzulegen:*\
  Der Arm schwenkt zur vorgesehenen Ablageposition und legt den Stein stabil ab. Die Software stellt sicher, dass nur Steine gleicher Farbe gestapelt werden.
- *Von einem Stein zum nächsten zu fahren:*\
  Nach dem Ablegen setzt der Roboter den Arm zurück und sucht durch Translation entlang des Steinebereichs den nächsten Stein. Kontinuierlicher und effizienter Ablauf.
- *Alle Kompetenzen zu einem Ziel zu kombinieren:*\
  Die modulare Software integriert alle Teilfunktionen (Erkennung, Farbbestimmung, Greifen, Transport, Ablage, Navigation) in einen wiederholbaren Zyklus für autonome Steinstapelung.

=== Erfüllungsgrad

Die meisten der Ziele wurden erreicht. Die Zielerreichung ist in der folgenden Tabelle dargestellt:

#let v_umgesetzt = table.cell(fill: green.transparentize(60%))[Vollständig umgesetzt]
#let t_umgesetzt = table.cell(fill: yellow.transparentize(60%))[Teilweise umgesetzt]
#let n_umgesetzt = table.cell(fill: red.transparentize(60%))[Nicht umgesetzt]

#table(
  columns: 2,
  table.header([*Ziel*], [*Erfüllungsgrad*]),
  [Steine erkennen], v_umgesetzt,
  [Steine farblich zuzuordnen], v_umgesetzt,
  [Steine aufzuheben und zu halten], v_umgesetzt,
  [Steine zu transportieren], v_umgesetzt,
  [Steine abzulegen], t_umgesetzt,
  [Von einem Stein zum nächsten zu fahren], t_umgesetzt,
  [Alle Kompetenzen zu einem Ziel zu kombinieren], n_umgesetzt,
)

Wobei der Erfüllungsgrad definiert ist als:
- *Vollständig umgesetzt:*\
  Das Ziel wurde vollständig umgesetzt und funktioniert wie vorgesehen.
- *Teilweise umgesetzt:*\
  Es wurde mit der Umsetzung begonnen, jedoch entspricht die Funktionalität nicht vollständig dem vorgesehenen Ziel.
- *Nicht umgesetzt:*\
  Es wurde mit der Umsetzung nicht begonnen.

=== Abweichungen

In der Planung gab es kaum Abweichungen. Die fehlende vollständige Umsetzung gewisser Roboterfunktionen kann durch suboptimales Design bzw. fehlende Erfahrung mit dem Roboter-Framework erklärt werden. Zudem fehlten die notwendigen zeitlichen als auch personellen Ressourcen, um diesen Mangel zu kompensieren.

=== Ergebnisse

+ Lego-Roboter-Design\
  Der Roboter wurde mit Lego-Bausteinen konstruiert. Die Konstruktion erfolgte in mehreren Schritten und wurde durch die Legobauer durchgeführt.
+ Lego-Roboter-Software\
  Die Software wurde in Python geschrieben und von den Programmierern entwickelt.
+ Dokumentation\
  Die Dokumentation wurde von dem Dokumentationsbeauftragten erstellt.
+ Test-Spezifikation\
  Die Test-Spezifikation beschreibt zu erfüllende Testfälle und wurde vom Projektleiter definiert.

== Qualitätssicherung

=== Maßnahmen

Zur Sicherung der _Code-Qualität_ wurden die folgenden Maßnahmen getroffen:

- *Peer-Reviews:*
  Der Code wurde von zwei Programmierern im Team verfasst, die regelmäßig ihren Code miteinander verglichen und verbessert haben.
- *Verwendung etablierter Frameworks:*
  Die Software wurde mit dem Robot-Framework entwickelt, welches bereits in anderen Projekten mit Industriestandard verwendet wurde.

Zur Sicherung der _Dokumentation_ wurden die folgenden Maßnahmen getroffen:

- *Dokumentationsbeauftragter:*
  Es wurde ein Dokumentationsbeauftragter eingesetzt, der die Dokumentation erstellt und überprüft.
- *Dokumentationsstandard:*
  Es wurde ein einheitlicher Dokumentationsstandard festgelegt.
- *Korrekturlesen:*
  Die Dokumentation wurde von einem anderen Teammitglied korrigiert.
- *Inhaltliche Kontrolle:*
  Die Dokumentation steht dem gesamten Team zur Verfügung, das eine inhaltliche Nachkontrolle durchführt.

Das _Roboter-Design_ wurde durch die Legobauer durchgeführt, die folgende Maßnahmen trafen:

- *Prototyp-Konstruktion:*
  Es wurde ein Prototyp des Roboters bzw. einzelner Teilkomponenten konstruiert, um die Funktionalität zu testen.
- *Nahe Zusammenarbeit mit den Programmierern:*
  Die Legobauer haben sich eng mit den Programmierern zusammengetan, um die Funktionalität des Roboters zu verbessern und die Plausibilität des Designs zu überprüfen.

=== Testdurchführung

Formal spezifizierte Tests wurden ausschließlich an Testtagen durchgeführt. Dabei handelte es sich stets um manuelle Tests.

Kleinere informelle Tests wurden laufend im Rahmen der Entwicklung durchgeführt. Deren Ergebnisse wurden jedoch nicht dokumentiert, da sie nicht relevant für die Qualitätssicherung waren, sondern deren Erfolg Grundbedingung für die weitere Entwicklung war.

=== Fehlerbehandlung

Sowohl Software- als auch Designfehler wurden stetig von den Programmierern und Legobauern erkannt und behoben. Mängel wurden direkt per teaminterner Kommunikation besprochen und gelöst.

Es wurde auf einen möglichst direkten und bürokratielosen Ansatz gesetzt, um Fehler schnellstmöglich zu beheben. Aufgrund der Gegebenheiten des Projekts wurde eine Dokumentation (und der damit verbundene Aufwand) der wenigen Fehleraufkommen als nicht sinnvoll erachtet.

=== Dokumentation

Die Dokumentation wurde durch mehrere Personen gesichtet und korrigiert, bevor sie veröffentlicht wurde. Sie wird auf einem geteilten OneDrive-Ordner gespeichert, der asynchronen Zugriff für alle Teammitglieder ermöglicht.

= Positive Erfahrungen

== Teamarbeit

Die Kommunikation innerhalb des Teams funktionierte besonders gut. Die Teammitglieder waren über WhatsApp im Austausch und konnten rund um die Uhr kommunizieren. Das harmonische Arbeitsklima und die hohe Arbeitsbereitschaft aller Beteiligten trugen maßgeblich zum Projekterfolg bei. Die offene und konstruktive Kommunikation ermöglichte eine effiziente Zusammenarbeit, bei der sich die Teammitglieder gegenseitig unterstützten und von den individuellen Stärken jedes Einzelnen profitierten.

== Lernfortschritt

Die Teammitglieder haben sich stetig weiterentwickelt und wurden in Rollen platziert, in denen sie sich aufgrund früherer Erfahrung wohlfühlten, jedoch im Rahmen des Projekts noch weiter lernen konnten.

Die Programmierer erweiterten ihr Wissen in der Entwicklung von integrierten Systemen und Hardware-Steuerung, insbesondere im Bereich der Robotik mit LEGO Mindstorms EV3, der LED-Steuerung und Sensorintegration. 

Die Legobauer erweiterten ihr Wissen in der Konstruktion von Robotern und der Programmierung von Motoren, Sensoren und der Kommunikation zwischen Hardware-Komponenten.

Der Dokumentationsbeauftragte vertiefte seine Fähigkeiten in der Dokumentation von Projekten, insbesondere in der Verwendung von Typst.

Der Projektleiter konnte seine Fähigkeiten in der Projektplanung und -organisation vertiefen.

== Erfolge

Zu den schönsten Erfolgen des Projekts zählen:
- Der Roboter wurde das erste Mal erfolgreich mit unserer Software gesteuert.
- Das erste erfolgreiche Erfassen einer Steinfarbe.
- Der positive Testabschluss bei den letzten Versuchen am Alpha-Testtag.
- Das positive Feedback der Tutorin zu unserer Dokumentation.

= Negative Erfahrungen

Es wurden nicht viele negative Erfahrungen gemacht, die meisten waren nur kleinere Probleme, die sich schnell lösen ließen.

- Zwischenmenschliche Startschwierigkeiten zwischen den Teammitgliedern.
  - Insbesondere beim Quereinstieg in das Projekt.
  - Konnte schnell überwunden werden.
- Die im Vergleich zu anderen Projektgruppen schlechtere Qualität/Funktionalität des Roboters.
- Rekonstruktion des Roboters\
  Nach einem Unfall, bei dem die Box des Roboters herunterfiel, mussten wir den Roboter komplett neu konstruieren. Glücklicherweise wurden dabei keine Bauteile irreversibel beschädigt.

= Erkenntnisse

Teamübergreifend konnten wir folgende *Lessons learned* formulieren:

+ Eine klare und strukturierte Planung ist entscheidend für den Projekterfolg.
+ Regelmäßige Kommunikation im Team verhindert frühzeitig Probleme.
+ Wir konnten uns immer wieder auf die Dokumentation berufen, wenn vergangene Informationen nicht mehr in Erinnerung waren.
+ Zusätzliche Treffen außerhalb vorgesehener Termine können hilfreich sein.
+ Ein klarer Ablaufplan und eine Agenda für Meetings können die Effizienz deutlich erhöhen.

Für das nächste Projekt sehen wir *Verbesserungspotenzial* in:

+ Mehr Zusammenarbeit zwischen den Rollen.
+ Zusätzliche Treffen öfter ansetzen, um Engpässe bei zeitlichen Ressourcen zu vermeiden.
+ Treffen zwischen einem Teil des Teams in Erwägung ziehen
  - Es muss nicht jeder anwesend sein #sym.arrow leichtere Terminfindung

Jedes Teammitglied konnte ganz eigene und individuelle Erkenntnisse sammeln, die zusammenfassend in folgender Tabelle dargestellt werden:

#table(
  columns: 2,
  table.header[*Betroffene*][*Erkenntnis*],
  [_Projektleiter_], [
    Organisation und Planung stellen mehr Aufwand dar als erwartet.

    Es muss Verantwortung für das Projekt übernommen werden.
  ],
  [
    _Projektleiter_\
    _Dokumentationsbeauftragter_
  ], [
    Die Dokumentation ist wichtig, um die Arbeit nachvollziehbar zu halten.
  ],
  [_Dokumentationsbeauftragter_], [
    Absprache mit dem Projektteam ist essenziell, um die Dokumentation zu erstellen und zu verbessern.

    Es muss eine klare Struktur für die Dokumentation geben. Das erleichtert sowohl das Erstellen als auch das Lesen der Dokumentation.

    Das Tooling für die Dokumentation ist wichtig und sollte möglichst zugänglich sein, vor allem wenn die Dokumentation für Teammitglieder immer zugänglich sein soll.
  ],
  [_Programmierer_], [
    Die Software funktioniert nicht immer zuverlässig, vor allem wenn es um die Kombination mit Sensorik oder Motorik geht.

    Starke Abhängigkeit vom Design des Roboters. Es kann nur damit gearbeitet werden, was das Design hergibt.
  ],
  [_Legobauer_], [
    Die Konstruktion des Roboters ist komplexer als erwartet.

    Häufig ist man durch Rahmenbedingungen wie den Bauteilkatalog eingeschränkt.

    Design-Ideen aus dem Internet oder anderen Quellen zu sammeln, erleichtert die Arbeit extrem.
  ],
  [
    _Legobauer_\
    _Programmierer_\
  ], [
    Enger Austausch und Kommunikation zwischen zwei Disziplinen mit derartig hoher Abhängigkeit ist sehr wichtig und der benötigte Aufwand wird leicht unterschätzt.
  ]
)

= Empfehlungen

== LV-Leiter

Der LV-Leiter *FH-Prof. DI Dr. Herwig Mayr* war stets entgegenkommend und fand einen guten Grad zwischen seiner Repräsentation als Auftraggeber und seiner Repräsentation als Lehrperson.

Die Lehrveranstaltung war sehr gut strukturiert, der grundlegende Ablauf wurde stets eingehalten. Unsere persönlichen Verbesserungsvorschläge beschränken sich auf:

- Mehr Zeit für gewisse Abgaben – Abgabefristen von einer Woche sind manchmal sehr stressig.
- Berücksichtigung der konkreten Bauteile einer Projektgruppe\
  Manche Farbsensoren können gewisse Farben nicht so gut erkennen wie andere. Eine projektgruppenübergreifende Farbvorgabe der Steine stellt unfaire Bedingungen für Gruppen dar, deren Sensoren mit diesen Farben nicht umgehen können. Vor allem da der Farbsensor als gegeben gilt und nicht von der Projektgruppe beeinflusst werden kann.

== Tutorin

Unsere Tutorin *Roxane Kaspar* war sehr freundlich und hilfreich. Sie hat uns stets geholfen und uns bei Fragen unterstützt. Sie war auch außerhalb offizieller Termine für uns erreichbar und unterstützte uns, wo es ging.

Es gibt keine weiteren Empfehlungen für die Tutorin.

