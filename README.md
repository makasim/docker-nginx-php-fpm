# docker-nginx-php-fpm

## Usage

Let's say you have `/home/user/app/web` folder which web root of your project. 
If the file physically exists on filesystem it is served by nginx. 
If file not present Nginx proxy a request to PHP-FPM.
There must be a `app.php` inside the folder.

```bash
echo "<?php phpinfo();" > app.php
echo "<h1>Hello world</h1>" > hello.html

docker run -d -p 8080:80 -v `pwd`:/var/www/html formapro/nginx-php-fpm

curl -X GET localhost:8080 # runs app.php and outputs phpinfo
curl -X GET localhost:8080/hello.html # shows Hello world
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

## XDebug on Mac

* To enable xdebug mount xdebug configuration file to: `/etc/php/7.0/mods-available/xdebug.ini`  
* Set fake ip on the docker host: `sudo ifconfig lo0 alias 172.10.0.1`  
* For PHPStorm set container env: `PHP_IDE_CONFIG: 'serverName=server.loc'` where 'server.loc' - PHPStorm server name  

```ini
; xdebug.ini
zend_extension=xdebug.so
xdebug.profiler_enable = Off
xdebug.profiler_enable_trigger = Off
xdebug.max_nesting_level = 5000
xdebug.remote_enable = On
xdebug.remote_host = 172.10.0.1
```

## Developed by Forma-Pro

Forma-Pro is a full stack development company which interests also spread to open source development. 
Being a team of strong professionals we have an aim an ability to help community by developing cutting edge solutions in the areas of e-commerce, docker & microservice oriented architecture where we have accumulated a huge many-years experience. 
Our main specialization is Symfony framework based solution, but we are always looking to the technologies that allow us to do our job the best way. We are committed to creating solutions that revolutionize the way how things are developed in aspects of architecture & scalability.

If you have any questions and inquires about our open source development, this product particularly or any other matter feel free to contact at opensource@forma-pro.com
