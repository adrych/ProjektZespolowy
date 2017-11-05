FROM centos:7
# Ustawienie katalogu roboczego na /tmp
WORKDIR /tmp
# Pobranie Go
RUN curl -LO https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
# Rozpakowanie Go
RUN tar -C /usr/local -xvzf go1.9.1.linux-amd64.tar.gz
# Utworzenie domyślnej struktury katalogowej
RUN mkdir -p /projects/{bin,pkg,src}
# Instalowanie klienta mysql (w celu debugowania)
RUN yum install -y mariadb
# Zdefiniowanie zmiennych srodowiskowych
RUN echo "export GOBIN=/projects/bin" > /etc/profile.d/path.sh
RUN echo "export GOPATH=/projects" >> /etc/profile.d/path.sh
RUN echo "export GOROOT=/usr/local/go" >> /etc/profile.d/path.sh
RUN echo "export PATH=$PATH:/projects/bin:/usr/local/go/bin" >> /etc/profile.d/path.sh
# Dodanie skryptow wejsciowych - aby moc uzywac kontenera w roznych celach. Budowanie, testowanie, uruchamianie
ADD docker_entrypoints /etc/rc.d/init.d
# Dodanie kodu zrodlowego aplikacji do kontenera
# ADD gocode/src /projects/src
EXPOSE 8080
