# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

# Set environment variables to make the timezone configuration non-interactive
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache2 and tzdata to set the timezone
RUN apt-get update && \
    apt-get install -y apache2 tzdata && \
    # Set the timezone to UTC (you can change this to your desired timezone)
    ln -fs /usr/share/zoneinfo/UTC /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get clean

# Expose the default Apache port
EXPOSE 80

# Ensure Apache runs in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
