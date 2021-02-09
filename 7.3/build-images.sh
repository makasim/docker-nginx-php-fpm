#!/usr/bin/env bash

set -x
set -e

(cd 7.3/base && docker build --rm  --pull  -t makasim/nginx-php-fpm:7.3 .)
(cd 7.3/php-all-exts && docker build --rm -t makasim/nginx-php-fpm:7.3-all-exts .)
