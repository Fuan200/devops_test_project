#!/bin/bash

until mysql -h"$DB_HOST" -u"$DB_USERNAME" -p"$DB_PASSWORD" "$DB_DATABASE" &> /dev/null
do
  echo "Waiting for database..."
  sleep 5
done


php artisan migrate --force
php artisan db:seed --force

php-fpm

chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache