#!/usr/bin/env bash

set -x
set -e

(cd 8.0/base && docker buildx build --platform linux/amd64,linux/arm64 --rm --pull -t makasim/nginx-php-fpm:8.0 -t makasim/nginx-php-fpm:latest .)
(cd 8.0/php-all-exts && docker buildx build --platform linux/amd64,linux/arm64 --rm -t makasim/nginx-php-fpm:8.0-all-exts -t makasim/nginx-php-fpm:latest-all-exts .)
