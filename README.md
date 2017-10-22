# ProjektZespolowy

## Odpalenie jenkinsa.

```
docker run -p 8080:8080 -p 50000:50000 -v <SCIEŻKA_DO_REPO>/jenkins:/var/jenkins_home jenkins

```

Uwaga: Katalog powinien mieć ścieżkę bezwzględną.


Baza danych przedsiębiorstwa komunikacji miejskiej.

Baza powinna przechowywać informacje o kierowcach, liniach (przystankach), autobusach oraz rozkładzie jazdy.

Aplikacja powinna umożliwiać w sposób łatwy i intuicyjny przeprowadzać następujące operacje:
Wprowadzania danych podstawowych dla
- dane identyfikujące przystanek
- dane identyfikujące autobus
- dane kierowcy
- dane poszczególnych kursów
Wprowadzanie dancyh: 
- dane identyfikujące linię autobusową (jednoznacznie określającą kolejne przystanki)
- dane określające kurs (godzina rozpoczęcia kursu i wybrana linia autobusowa)
- powiązanie kierowcy z kursem
- powiązanie kierowcy/kierowców z autobusem
Z systemu/ aplikacji możliwe powinno byc generowanie grafików dla kierowców:
- zbiorczego grafiku
- grafiku dla wybranego kierowcy
Rozkładu jazdy dla wybranego przystanku. 

