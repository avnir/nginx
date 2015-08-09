FROM nginx:latest
MAINTAINER Avni Rexhepi <arexhepi@gmail.com>

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-enabled/default

ADD start-container /usr/local/bin/start-container
RUN chmod +x /usr/local/bin/start-container

WORKDIR /var/www

# Define mountable directories.
# VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/var/log/nginx"]

EXPOSE 80

CMD start-container