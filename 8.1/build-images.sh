#!/usr/bin/env bash

set -x
set -e

(cd 8.1/base && docker build --rm --pull -t makasim/nginx-php-fpm:8.1 -t makasim/nginx-php-fpm:latest .)
(cd 8.1/php-all-exts && docker build --rm -t makasim/nginx-php-fpm:8.1-all-exts -t makasim/nginx-php-fpm:latest-all-exts .)
