FROM ubuntu:latest

MAINTAINER Avni Rexhepi <arexhepi@gmail.com>

RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:nginx/stable && \
    apt-get update && \
    apt-get -y install nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-available/default

ADD start-container /usr/local/bin/start-container
RUN chmod +x /usr/local/bin/start-container

WORKDIR /var/www

RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/var/log/nginx"]

EXPOSE 80


# ENTRYPOINT nginx
CMD ["start-container"]