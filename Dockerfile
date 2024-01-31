FROM php:8.2-fpm-alpine

# Install PDO extension
RUN docker-php-ext-install pdo pdo_mysql

