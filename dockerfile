FROM ubuntu:latest
RUN apt-get -y update && \\
    apt-get install -y apache2 && \\
    apt-get clean
EXPOSE 8080
CMD ["apachectl", "-D", "FOREGROUND"]
