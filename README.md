# Nginx docker container

This is a [Docker](http://www.docker.com) image using [Nginx](http://nginx.org).

It's a basic optimized nginx docker image

A few examples how to run the container
- ```docker run -d -p 80:80 -p 443:443 avnir/nginx```
- ```docker run -d --name=someName -p 80:80 -p 443:443 avnir/nginx```
- ```docker run -d --name=someName -v ${PWD}:/var/www/public:rw -p 80:80 -p 443:443 avnir/nginx```

Feedback or improvements are welcome.