#!/usr/bin/env bash

set -x
set -e

(cd 8.0/base && docker build --rm --pull -t formapro/nginx-php-fpm:8.0-latest .)
(cd 8.0/php-all-exts && docker build --rm -t formapro/nginx-php-fpm:8.0-latest-all-exts .)
