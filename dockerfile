FROM ubuntu:latest
RUN apt-get -y update && 
    apt-get install -y nginx && \
    apt-get clean
EXPOSE 8080
CMD ["nginxctl", "-D", "FOREGROUND"]
