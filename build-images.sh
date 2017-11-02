#!/usr/bin/env bash

set -x
set -e

(cd base && docker build --rm  --pull  -t formapro/nginx-php-fpm:latest .)
(cd php-all-exts && docker build --rm -t formapro/nginx-php-fpm:latest-all-exts .)
