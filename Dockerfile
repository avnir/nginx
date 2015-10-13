FROM nginx:latest
MAINTAINER Avni Rexhepi <arexhepi@gmail.com>


COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]