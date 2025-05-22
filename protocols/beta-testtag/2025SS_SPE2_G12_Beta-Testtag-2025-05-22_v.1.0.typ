#import "../protocol.tpl.typ": protocol-template

#protocol-template(
  meeting_type: "Beta-Testtag",
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
  version: "1.0",
  doc_date: "22. Mai 2025",
  meeting_date: "22. Mai 2025",
  time: ("16:20", "19:20"),
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
      present: true
    )
  ),
  goal: [
    #link("https://elearning.fh-ooe.at/pluginfile.php/1047030/mod_resource/content/2/2025ss%20U%20Betatesttag%20-%20Planung%2BAufgaben.pdf")[#underline(text(blue, "PDF: Beta-Testtag – Ablauf"))]

    ===  Beta-Testtag – Ablauf
    - ✅ 2 × Anwesenheitskontrolle!

    - 🕓 16:10 – 16:20
      - Aufbau [T, HM]
    - 🕓 16:20 – 19:00
      - Testen (HW, SW), Abarbeiten Betatestplan (funktionale Tests + Qualitätstests) [S]
      - *Tests Tutor\*innen zeigen* [S, T]
        - dafür _bis zu 2 + 2 Punkte_ (wenn Bericht vorliegt)
      - Qualifikationstest für Wettkampf; Tutor\*innen zeigen [S, T]
    - 🕓 18:30 – 18:45
      - 5./6. Koordinationsgruppen-Treffen [S, HM]
    - 🕖 19:00 – 19:10
      - Abbau [T, HM]
    - 🕖 19:10
      - Ende
    - 📅 Bis 23.5. 12:00
      - Erstellen Betatest-Bericht [S]

    T ... Tutor\
    S ... Student\
    HM ... Herwig Mayr, Kursleiter

    Farbcode Tests:\
    #text(red)[Durchlauf] - Fehler\
    #text(green)[Durchlauf] - Erfolgreich\
    #text(purple)[Durchlauf] - Teilerfolg
  ],
  topics: (
    (
      title: "Funktionales Testen",
      notes: [
        === [HM] Qualifikationstest
        Ablauf:
        + Roboter startet am Rand
        + Steine in der Mitte des Steinebereichs
        + Steine aus Bereich aufheben
        + Steine auf Zielbereich Ablegen

        Tutorin anwesend...\
        Versuche:
        + #text(red)[Durchlauf]
          - An den Steinen vorbei gefahren
        + #text(red)[Durchlauf]
          - An den Steinen vorbei gefahren
        + #text(red)[Durchlauf]
          - An den Steinen vorbei gefahren
          
        Ohne Tutorin...\
        Versuche:
        + #text(red)[Durchlauf]
          - An den Steinen vorbei gefahren
        + #text(red)[Durchlauf]
          - An den Steinen vorbei gefahren
        + #text(purple)[Durchlauf]
          - Erkennt gehaltenen Stein
          - Steine auf Steinbereich nicht erkannt

        Tutorin anwesend...
        Versuche:
        + #text(red)[Durchlauf]
          - An den Steinen vorbei gefahren
          - Dauer: 1m 18s

        === [S] Farb-/Steinerkennung

        Durchläufe:
        + #text(red)[Durchlauf]
          - Steine ignoriert
          - Bei Stein Richtungswechsel
        + #text(red)[Durchlauf]
          - Steine vom Steinebereich geschoben
          - Steine ignoriert
        + #text(red)[Durchlauf]
          - Steine nicht gefunden und ignoriert\

        Ab hier Tutorin anwesend:
        + #text(green)[Durchlauf]
          - Rot 
          - Blau 
          - Weiß 
        + #text(green)[Durchlauf]
          - Rot 
          - Blau 
          - Weiß 
        + #text(green)[Durchlauf]
          - Blau 
          - Rot 
          - Weiß 
        + #text(green)[Durchlauf]
          - Blau 
          - Rot 
          - Weiß 
        + #text(green)[Durchlauf]
          - Blau 
          - Rot 
          - Weiß 
        + #text(green)[Durchlauf]
          - Blau 
          - Rot 
          - Weiß 
        + #text(green)[Durchlauf]
          - Blau 
          - Rot 
          - Weiß 
        + #text(green)[Durchlauf]
          - Rot 
          - Weiß 
        + #text(green)[Durchlauf]
          - Blau 
          - Rot 
          - Weiß 

        Ergebnis: 23/24 = #box[$ #(calc.round(23/24 * 100, digits: 2))% gt.eq 95% $]\
        #text(green)[Erfolgreich]


        === [S] Roboter bleibt auf Arbeitsfläche

        Durchläufe:
        + #text(red)[Durchlauf]
          - Wackelig runtergefallen
        + #text(red)[Durchlauf]
          - Wackelig runtergefallen
        + #text(green)[Durchlauf]
          - Erfolgreich
          - Wechselt Richtung bei Kante erkannt

        Tutorin anwesend.

        === [S] Verlorener Stein beim Transport

        Tutorin anwesend:
        + #text(red)[Durchlauf]
          - Roboter hat Stein initial nicht erkannt
        + #text(red)[Durchlauf]
          - Roboter hat nach Verlust nicht wieder geöffnet (mechanischer Fehler)
        + #text(green)[Durchlauf]
          - Erfolgreich
          - Nächster Stein wird stattdessen aufgehoben

        === [S] Zielposition korrekt gespeichert

        Tutorin anwesend...
        + #text(red)[Durchlauf]
          - Roboter hat roten Stein fallen gelassen
          - Roboter hat blauen Stein verloren
          - Roboter hätte blauen Stein auf gleicher Position wie roten Stein abgelegt
        + #text(red)[Durchlauf]
          - Roboter hat roten Stein fallen gelassen
          - Roboter hat neuen roten Stein bekommen
          - Roboter hat ihn irgendwo abgelegt
        + #text(green)[Durchlauf]
          - Roboter hat roten Stein fallen gelassen
          - Roboter hat neuen roten Stein bekommen
          - Roboter hat den neuen roten Stein auf vorherigen Platz abgelegt

        #text(green)[_Bestanden_]
      ]
    ),
    (
      title: "Qualitative Tests",
      notes: [
        === [S] Produktqualität: Leistungseffizienz
        
        _Nicht getestet_

        === [S] Einsatzqualität: Effizienz

        _Nicht getestet_

        === [T] Produktqualität: Zuverlässigkeit

        _Nicht getestet_

        === [T] Einsatzqualität: Abdeckung des Einsatzgebiets

        _Nicht getestet_
      ]
    )
  ),
  future: [
    Roboter Farbsensor besser ausrichten
    
    Roboter Abstandshalter zum Steinebereich installieren
  ],
)