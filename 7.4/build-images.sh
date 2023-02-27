#!/usr/bin/env bash

set -x
set -e

(cd 7.4/base && docker buildx build --platform linux/amd64,linux/arm64 --rm --pull -t makasim/nginx-php-fpm:7.4 .)
(cd 7.4/php-all-exts && docker buildx build --platform linux/amd64,linux/arm64--rm -t makasim/nginx-php-fpm:7.4-all-exts .)
