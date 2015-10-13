# Nginx docker container

This is a [Docker](http://www.docker.com) image using [Nginx](http://nginx.org).

It's a basic optimized nginx docker image

A few examples how to run these containers
- ```docker pull avnir/nginx```
- ```docker run -d avnir/nginx```
- ```docker run -d -v ${PWD}:/var/www/public:rw avnir/nginx```

Feedback or improvements are welcome.