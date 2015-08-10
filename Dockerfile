FROM nginx:latest
MAINTAINER Avni Rexhepi <arexhepi@gmail.com>

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-enabled/default

WORKDIR /var/www

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/var/log/nginx"]

EXPOSE 80

ENTRYPOINT nginx