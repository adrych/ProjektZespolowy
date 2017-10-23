# ProjektZespolowy

# Postęp w pracy
[Link do tablicy trello](https://trello.com/b/vxhGtB4n/ug-projekt-zespolowy2)

# [WIP] Diagram CI
[Link do diagramu CI](https://drive.google.com/file/d/0B0HgvJU_fSDeT1pmdFh4a0VLN1E/view?usp=sharing)

# Docker
## Budowanie obrazu dla "frontend"
```
docker build -t frontend .
```
## Kompozycja serwisu
Start wyszystkich serwisów
```
docker-compose up
```
Start tylko jednego (np. mysql)
```
docker-compose run mysql
```

# Specyfikacja wymagań
Baza danych przedsiębiorstwa komunikacji miejskiej.

Baza powinna przechowywać informacje o kierowcach, liniach (przystankach), autobusach oraz rozkładzie jazdy.

Aplikacja powinna umożliwiać w sposób łatwy i intuicyjny przeprowadzać następujące operacje:
Wprowadzania danych podstawowych:
- dane identyfikujące przystanek
- dane identyfikujące autobus
- dane kierowcy
- dane poszczególnych kursów
Wprowadzanie dancyh:
- dane identyfikujące linię autobusową (jednoznacznie określającą kolejne przystanki)
- dane określające kurs (godzina rozpoczęcia kursu i wybrana linia autobusowa)
- powiązanie kierowcy z kursem
- powiązanie kierowcy/kierowców z autobusem

Z systemu/ aplikacji możliwe powinno byc generowanie:
- zbiorczego grafiku
- grafiku dla wybranego kierowcy
Rozkładu jazdy dla wybranego przystanku.


# Notatki
## Docker
```
docker run -p 8080:8080 -p 50000:50000 -v <SCIEŻKA_DO_REPO>/jenkins:/var/jenkins_home jenkins

```
Uwaga: Katalog powinien mieć ścieżkę bezwzględną.
