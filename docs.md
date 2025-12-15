# Dokumentation – OldSchool CI Demo

## 1. Was macht das Dockerfile?
Das Dockerfile erstellt eine DockerImage. 
Es kopiert das Skript `app.sh` in den Container, macht es ausführbar 
und sorgt dafür, dass es beim Start des Containers automatisch ausgeführt wird.

## 2. Was ist der Zweck der Pipeline?
Die Pipeline baut und testet den Container automatisch.
Sie überprüft, ob der Container die richtige Ausgabe zeigt, ohne dass man etwas von Hand machen muss.
So kann man Änderungen sofort prüfen.

## 3. Was war für dich der schwierigste Teil und warum?
Beim Testen der Pipeline wollte ich Docker mit apt-get install docker.io installieren.
Das hat aber nicht funktioniert, weil der GitHub Runner (ubuntu) bereits Docker und andere Container-Tools installiert hatte.
Dadurch gab es Konflikte, und der Build ist fehlgeschlagen.
Ich habe den Schritt zur Installation von Docker entfernt, weil der Runner bereits alles Nötige für docker build und docker run bereitstellt.
Danach lief die Pipeline ohne Probleme und der Container-Test war erfolgreich.

Meine Pipeline läft bei push und bei pull_request auf main.

Zwei getrennte Schritte machen die Pipeline übersichtlicher.
So kann man sehen was der Container ausgegeben hat auch wenn der Test später fehlschlägt.
Außerdem kann man Start und Prüfung getrennt debuggen, falls etwas schiefgeht.
