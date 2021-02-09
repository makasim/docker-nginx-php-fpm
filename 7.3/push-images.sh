#!/usr/bin/env bash

set -x
set -e

docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker push makasim/nginx-php-fpm:7.3
docker push makasim/nginx-php-fpm:7.3-all-exts
