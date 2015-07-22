# Laravel nginx docker container

This is a [Docker](http://www.docker.com) image for [Laravel PHP framework](http://www.laravel.com) using [Nginx](http://nginx.org).

This image works well with the below related images.
- [avnir/laravel-artisan](https://github.com/avnir/laravel-artisan)
- [avnir/laravel-composer](https://github.com/avnir/laravel-composer)
- [avnir/laravel-phpfpm](https://github.com/avnir/laravel-phpfpm)
- [avnir/laravel-nginx](https://github.com/avnir/laravel-nginx)

A few examples how to run these containers
- ```docker run -d -v ${PWD}:/var/www:rw -h docker --name="phpfpm" avnir/laravel-phpfpm```
- ```docker run -d --name="nginx" --volumes-from=phpfpm --link phpfpm:fpm -p :80 avnir/laravel-nginx```
- ```docker run --volumes-from phpfpm --rm avnir/laravel-composer install --prefer-dist```
- ```docker run --volumes-from phpfpm --rm avnir/laravel-artisan route:list```

Feedback or improvements are welcome.