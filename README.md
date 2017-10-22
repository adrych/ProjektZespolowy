# ProjektZespolowy

## Odpalenie jenkinsa.

```
docker run -p 8080:8080 -p 50000:50000 -v <SCIEŻKA_DO_REPO>/jenkins:/var/jenkins_home jenkins

```

Uwaga: Katalog powinien mieć ścieżkę bezwzględną.

Baza danych przedsiębiorstwa komunikacji miejskiej.

Baza powinna przechowywać informacje o kierowcach, liniach (przystankach), autobusach oraz rozkładzie jazdy.

Aplikacja powinna umożliwiać w sposób łatwy i intuicyjny przeprowadzać następujące operacje:
Wprowadzania danych podstawowych:
- dane identyfikujące przystanek
- dane identyfikujące autobus
- dane kierowcy
- dane poszczególnych kursów

Wprowadzanie danych: 
- dane identyfikujące linię autobusową (jednoznacznie określającą kolejne przystanki)
- dane określające kurs (godzina rozpoczęcia kursu i wybrana linia autobusowa)
- powiązanie kierowcy z kursem
- powiązanie kierowcy/kierowców z autobusem

Z systemu/ aplikacji możliwe powinno byc generowanie:
- zbiorczego grafiku
- grafiku dla wybranego kierowcy
- rozkładu jazdy dla wybranego przystanku

Struktura bazy danych
tabela::PRZYSTANEK
id:INTEGER:PRIMARY KEY #identyfikator przystanku autobusowego
name:NVARCHAR(100)?? #nazwa przystanku
address:NVARCHAR(256)?? #lokalizacja przystanku
lat:DECIMAL(10,8) #latitude location
lng:DECIMAL(10,8) #longitiude location

tabela::AUTOBUS
id:INTEGER:PRIMARY KEY #identyfikator autobusu
plate:NVARCHAR(7) #nr rejestracyjny autobusu
bus_no:INTEGER #nr boczny autobusu

tabela::KIEROWCA
id:INTEGER PRIMARY KEY #idetyfikator wewnętrzny kierowcy
name:NVARCHAR(50) #imie i nazwisko kierowcy

tabela::KURS
id:INTEGER:PRIMARY KEY #identyfikator kursu
nlp:INTEGER:PRIMARY KEY # kolejny przystanek na kursie
plp:INTEGER:PRIMARY KEY #poprzedni przystanek na kursie
wyr:INTEGER:PRIMARY KEY #wyroznik kursu
