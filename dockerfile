FROM ubuntu:latest
RUN apt-get -y update 
RUN    apt-get install -y apache2 
RUN    apt-get clean
EXPOSE 8080
CMD ["apachectl", "-D", "FOREGROUND"]
