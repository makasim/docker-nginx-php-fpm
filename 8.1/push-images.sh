#!/usr/bin/env bash

set -x
set -e

docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker push makasim/nginx-php-fpm:8.1
docker push makasim/nginx-php-fpm:8.1-all-exts
docker push makasim/nginx-php-fpm:latest
docker push makasim/nginx-php-fpm:latest-all-exts
