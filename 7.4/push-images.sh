#!/usr/bin/env bash

set -x
set -e

docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker push makasim/nginx-php-fpm:7.4
docker push makasim/nginx-php-fpm:7.4-all-exts
