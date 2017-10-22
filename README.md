# ProjektZespolowy

## Odpalenie jenkinsa.

```
docker run -p 8080:8080 -p 50000:50000 -v <SCIEŻKA_DO_REPO>/jenkins:/var/jenkins_home jenkins

```

Uwaga: Katalog powinien mieć ścieżkę bezwzględną.
