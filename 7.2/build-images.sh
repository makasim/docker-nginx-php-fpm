#!/usr/bin/env bash

set -x
set -e

(cd 7.2/base && docker build --rm  --pull  -t formapro/nginx-php-fpm:7.2-latest .)
(cd 7.2/php-all-exts && docker build --rm -t formapro/nginx-php-fpm:7.2-latest-all-exts .)
