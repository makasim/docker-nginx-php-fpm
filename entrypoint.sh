#!/usr/bin/env bash

nginx -c /etc/nginx/nginx.conf  -g 'daemon off;' 2>&1 &
php-fpm7.0 -R -F -c /etc/php/7.0/fpm/php-fpm.conf 2>&1 &

trap "kill -15 %1; kill -15 %2; wait %1 %2;" SIGTERM  SIGINT

wait %2