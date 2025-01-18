# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

# Install Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Expose the default Apache port
EXPOSE 80

# Ensure Apache runs in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
