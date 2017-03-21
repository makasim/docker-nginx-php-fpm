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
