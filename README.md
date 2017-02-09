# docker-nginx-php-fpm

## Usage

Let's say you have `/home/user/app/web` folder which web root of your project. 
If the file physically exists on filesystem it is served by nginx. 
If file not present Nginx proxy a request to PHP-FPM.
There must be a `app.php` inside the folder.

```
docker run --rm -it --env NGINX_WEB_ROOT=/app/web -p 80:80 -v /home/user/app/:/app makasim/nginx-php-fpm
```