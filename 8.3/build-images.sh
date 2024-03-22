#!/usr/bin/env bash

set -x
set -e

(cd 8.3/base && docker buildx build --platform linux/amd64,linux/arm64 --push --rm --pull -t makasim/nginx-php-fpm:8.3 -t makasim/nginx-php-fpm:latest .)
(cd 8.3/php-all-exts && docker buildx build --platform linux/amd64,linux/arm64 --push --rm -t makasim/nginx-php-fpm:8.3-all-exts -t makasim/nginx-php-fpm:latest-all-exts .)
