## Technologie Chmurowe — Laboratorium 4

## Autor - Kinga Kowalska

## Opis 
Obraz Dockera został stworzony na bazie najnowszego Ubuntu z zainstalowanym serwerem Apache. Do kontenera skopiowano stronę index.html zawierającą imię, nazwisko i grupę dziekańską studenta, a informacje o autorze dodano przy pomocy LABEL. Po uruchomieniu kontenera dostępna jest działająca strona WWW.

## Uruchomienie
docker build -t web100 . 

docker run -d -p 8080:80 web100

Strona dostępna pod:
http://localhost:8080

## Modyfikacje w Dockerfile
Dockerfile został zoptymalizowany poprzez połączenie aktualizacji systemu, instalacji Apache i połączenie poleceń w jednej komendzie RUN, co zmniejsza liczbę warstw i rozmiar obrazu. Apache uruchamiany jest w trybie foreground (apachectl -D FOREGROUND), co pozwala na prawidłowe działanie serwera w kontenerze.

## Warstwy obrazu
Sprawdzono przy użyciu polecenia docker history:
-11 wpisów 
-3 warstwy fizuczne (RUN, COPY, ADD)
