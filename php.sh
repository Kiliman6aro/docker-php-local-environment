#!/bin/bash

if [ "$#" -lt 3 ]; then
    echo "Usage: $0 <php_version> <project_name> <command>"
    exit 1
fi

PHP_VERSION=$1
PROJECT_NAME=$2
shift 2
COMMAND=$@

docker-compose exec "php${PHP_VERSION}" bash -c "cd /var/www/html/${PROJECT_NAME} && ${COMMAND}"
