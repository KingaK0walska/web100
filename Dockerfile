FROM ubuntu:latest

LABEL maintainer="Kinga Kowalska <s101602@pollub.edu.pl"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apache2 && \
    apt-get clean

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]