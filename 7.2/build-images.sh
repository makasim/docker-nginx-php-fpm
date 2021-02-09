#!/usr/bin/env bash

set -x
set -e

(cd 7.2/base && docker build --rm --pull -t makasim/nginx-php-fpm:7.2 .)
(cd 7.2/php-all-exts && docker build --rm -t makasim/nginx-php-fpm:7.2-all-exts .)
