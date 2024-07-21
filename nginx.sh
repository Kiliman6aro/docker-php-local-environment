#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <hostname> <php_version> <path>"
    exit 1
fi

HOSTNAME=$1
PHP_VERSION=$2
APP_PATH=$3

CONF_DIR="./etc/nginx/conf.d"


CONF_FILE="${CONF_DIR}/${HOSTNAME}.conf"

echo "Generating configuration file at ${CONF_FILE}"
{
    echo "server {"
    echo "    listen 80;"
    echo "    server_name ${HOSTNAME};"
    echo ""
    echo "    root /var/www/html/${APP_PATH};"
    echo "    index index.php index.html index.htm;"
    echo ""
    echo "    location / {"
    echo "        try_files \$uri \$uri/ /index.php?\$query_string;"
    echo "    }"
    echo ""
    echo "    location ~ \.php$ {"
    echo "        include fastcgi_params;"
    echo "        fastcgi_pass ${PHP_VERSION}:9000;"
    echo "        fastcgi_index index.php;"
    echo "        fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;"
    echo "    }"
    echo ""
    echo "    location ~ /\.ht {"
    echo "        deny all;"
    echo "    }"
    echo "}"
} > $CONF_FILE

echo "Configuration file created at ${CONF_FILE}"

echo "Please reload you nginx container."