# docker-nginx-php-fpm

## Usage

Let's say you have `/home/user/app/web` folder which web root of your project. 
If the file physically exists on filesystem it is served by nginx. 
If file not present Nginx proxy a request to PHP-FPM.
There must be a `app.php` inside the folder.

```
docker run --rm -it --env NGINX_WEB_ROOT=/app/web -p 80:80 -v /home/user/app/:/app makasim/nginx-php-fpm
```

## Env vars

Here's available env vars and their default values:

```
NGINX_WEB_ROOT=     /var/www/html
NGINX_PHP_FALLBACK= /app.php
NGINX_PHP_LOCATION= ^/app\.php(/|$)
NGINX_USER=         www-data
NGINX_CONF=         /etc/nginx/nginx.conf

PHP_SOCK_FILE=      /run/php.sock
PHP_USER=           www-data
PHP_GROUP=          www-data
PHP_MODE=           0660
PHP_FPM_CONF=       /etc/php/7.0/fpm/php-fpm.conf
```
