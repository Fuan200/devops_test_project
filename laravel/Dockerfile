FROM php:8.2-fpm-alpine

WORKDIR /var/www/html

RUN apk --no-cache add \
    mysql-client \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    oniguruma-dev \
    libzip-dev \
    zip \
    libmcrypt-dev \
    icu-dev \
    git \
    bash \
    nginx

RUN docker-php-ext-install pdo pdo_mysql gd mbstring zip exif pcntl bcmath opcache

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

#RUN composer create-project --prefer-dist laravel/laravel .

COPY . /var/www/html

RUN composer install --prefer-dist --no-dev --no-scripts --no-interaction

COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

CMD ["sh", "-c", "/usr/local/bin/init.sh && php-fpm"]

RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache
