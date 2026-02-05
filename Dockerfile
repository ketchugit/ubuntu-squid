FROM ubuntu/squid:latest

# Install apache2-utils for the htpasswd tool (needed for authentication)
RUN apt-get update && apt-get install -y apache2-utils

# Copy your config and password file into the image
COPY squid.conf /etc/squid/squid.conf
COPY passwords /etc/squid/passwords

# Expose Squid's default port
EXPOSE 3128
