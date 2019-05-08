#!/usr/bin/env bash

set -x
set -e

(cd 7.3/base && docker build --rm  --pull  -t formapro/nginx-php-fpm:7.3-latest .)
(cd 7.3/php-all-exts && docker build --rm -t formapro/nginx-php-fpm:7.3-latest-all-exts .)
