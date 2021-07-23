#!/usr/bin/env bash

set -x
set -e

(cd 7.4/base && docker build --rm --pull -t makasim/nginx-php-fpm:7.4 .)
(cd 7.4/php-all-exts && docker build --rm -t makasim/nginx-php-fpm:7.4-all-exts .)
