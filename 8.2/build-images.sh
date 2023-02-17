#!/usr/bin/env bash

set -x
set -e

(cd 8.2/base && docker build --rm --pull -t makasim/nginx-php-fpm:8.2 -t makasim/nginx-php-fpm:latest .)
(cd 8.2/php-all-exts && docker build --rm -t makasim/nginx-php-fpm:8.2-all-exts -t makasim/nginx-php-fpm:latest-all-exts .)
